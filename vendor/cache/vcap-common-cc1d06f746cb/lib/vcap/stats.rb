require 'vcap/common'
require 'vmstat'

module VCAP
  class Stats
    class << self
      def process_memory_and_cpu
        if WINDOWS
          rss = windows_process_memory
          pcpu = windows_process_cpu
        else
          rss, pcpu = `ps -o rss=,pcpu= -p #{Process.pid}`.split
        end
        [rss, pcpu]
      end

      def memory_used_bytes
        if WINDOWS
          mem = windows_memory_used
          mem[:total] - mem[:available]
        else
          mem = Vmstat.memory
          mem.active_bytes + mem.wired_bytes
        end
      end

      def memory_free_bytes
        if WINDOWS
          mem = windows_memory_used
          mem[:available]
        else
          mem = Vmstat.memory
          mem.inactive_bytes + mem.free_bytes
        end
      end

      def cpu_load_average
        if WINDOWS
          windows_cpu_load
        else
          Vmstat.load_average.one_minute
        end
      end

      private

      def windows_memory_used
        mem_ary = system_memory_list.split
        mem = Hash.new
        mem[:total] = (mem_ary[3].gsub(',', '').to_i * 1024) * 1024
        mem[:available] = (mem_ary[8].gsub(',', '').to_i * 1024) * 1024
        mem
      end

      def windows_cpu_load
        avg_load = %x[powershell -NoProfile -NonInteractive -ExecutionPolicy RemoteSigned "Get-WmiObject win32_processor | Measure-Object -property LoadPercentage -Average | Foreach {$_.Average}"]
        avg_load.to_i
      end

      def windows_process_memory
        out_ary = memory_list.split
        out_ary[4].delete(',').to_i
      end

      def windows_process_cpu
        pcpu = 0
        process_ary = process_list
        pid = Process.pid
        idx_of_process = -1
        process_line_ary = process_ary.split("\n")
        ary_to_search = process_line_ary[2].split(',')
        ary_to_search.each_with_index { |val, idx|
          pid_s = val.gsub(/"/, '')
          pid_to_i = pid_s.to_i
          if pid == pid_to_i
            idx_of_process = idx
          end
        }
        if idx_of_process >= 0
          cpu_ary = process_time
          cpu_line_ary = cpu_ary.split("\n")
          ary_to_search = cpu_line_ary[2].split(',')
          cpu = ary_to_search[idx_of_process]
          pcpu = cpu.gsub(/"/, '').to_f
        end
        pcpu
      end

      def system_memory_list
        %x[systeminfo | findstr "\\<Physical Memory>\\"]
      end

      def memory_list
        %x[tasklist /nh /fi "pid eq #{Process.pid}"]
      end

      def process_time
        %x[typeperf -sc 1 "\\Process(ruby*)\\% processor time"]
      end

      def process_list
        %x[typeperf -sc 1 "\\Process(ruby*)\\ID Process"]
      end
    end
  end
end