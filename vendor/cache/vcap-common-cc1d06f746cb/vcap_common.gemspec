# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "vcap_common"
  s.version = "2.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Cloud Foundry Core Team"]
  s.date = "2013-10-22"
  s.description = "common vcap classes/methods"
  s.email = ["vcap-dev@googlegroups.com"]
  s.files = ["lib/cf/registrar.rb", "lib/cf/version.rb", "lib/json_message.rb", "lib/services/api/async_requests.rb", "lib/services/api/clients/service_gateway_client.rb", "lib/services/api/const.rb", "lib/services/api/messages.rb", "lib/services/api/util.rb", "lib/services/api.rb", "lib/vcap/common.rb", "lib/vcap/component.rb", "lib/vcap/config.rb", "lib/vcap/fiber_tracing.rb", "lib/vcap/priority_queue.rb", "lib/vcap/process_utils.rb", "lib/vcap/quota.rb", "lib/vcap/rolling_metric.rb", "lib/vcap/sorted_set_utils.rb", "lib/vcap/spec/em.rb", "lib/vcap/spec/forked_component/base.rb", "lib/vcap/spec/forked_component/nats_server.rb", "lib/vcap/spec/forked_component.rb", "lib/vcap/stats.rb", "lib/vcap/subprocess.rb"]
  s.homepage = "http://github.com/cloudfoundry/vcap-common"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.17"
  s.summary = "vcap common"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<eventmachine>, [">= 0"])
      s.add_runtime_dependency(%q<thin>, [">= 0"])
      s.add_runtime_dependency(%q<yajl-ruby>, [">= 0"])
      s.add_runtime_dependency(%q<nats>, ["~> 0.4.24"])
      s.add_runtime_dependency(%q<posix-spawn>, ["~> 0.3.6"])
      s.add_runtime_dependency(%q<membrane>, ["~> 0.0.2"])
      s.add_runtime_dependency(%q<httpclient>, [">= 0"])
      s.add_runtime_dependency(%q<em-http-request>, ["~> 1.0"])
      s.add_runtime_dependency(%q<multipart-post>, [">= 0"])
      s.add_runtime_dependency(%q<mime-types>, [">= 0"])
      s.add_runtime_dependency(%q<uuidtools>, [">= 0"])
      s.add_runtime_dependency(%q<vmstat>, ["~> 2.0"])
      s.add_runtime_dependency(%q<squash_ruby>, [">= 0"])
      s.add_runtime_dependency(%q<addressable>, ["~> 2.2"])
      s.add_runtime_dependency(%q<steno>, [">= 0"])
      s.add_development_dependency(%q<rake>, ["~> 0.9.2"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<sinatra>, [">= 0"])
      s.add_development_dependency(%q<webmock>, [">= 0"])
      s.add_development_dependency(%q<debugger>, [">= 0"])
    else
      s.add_dependency(%q<eventmachine>, [">= 0"])
      s.add_dependency(%q<thin>, [">= 0"])
      s.add_dependency(%q<yajl-ruby>, [">= 0"])
      s.add_dependency(%q<nats>, ["~> 0.4.24"])
      s.add_dependency(%q<posix-spawn>, ["~> 0.3.6"])
      s.add_dependency(%q<membrane>, ["~> 0.0.2"])
      s.add_dependency(%q<httpclient>, [">= 0"])
      s.add_dependency(%q<em-http-request>, ["~> 1.0"])
      s.add_dependency(%q<multipart-post>, [">= 0"])
      s.add_dependency(%q<mime-types>, [">= 0"])
      s.add_dependency(%q<uuidtools>, [">= 0"])
      s.add_dependency(%q<vmstat>, ["~> 2.0"])
      s.add_dependency(%q<squash_ruby>, [">= 0"])
      s.add_dependency(%q<addressable>, ["~> 2.2"])
      s.add_dependency(%q<steno>, [">= 0"])
      s.add_dependency(%q<rake>, ["~> 0.9.2"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<sinatra>, [">= 0"])
      s.add_dependency(%q<webmock>, [">= 0"])
      s.add_dependency(%q<debugger>, [">= 0"])
    end
  else
    s.add_dependency(%q<eventmachine>, [">= 0"])
    s.add_dependency(%q<thin>, [">= 0"])
    s.add_dependency(%q<yajl-ruby>, [">= 0"])
    s.add_dependency(%q<nats>, ["~> 0.4.24"])
    s.add_dependency(%q<posix-spawn>, ["~> 0.3.6"])
    s.add_dependency(%q<membrane>, ["~> 0.0.2"])
    s.add_dependency(%q<httpclient>, [">= 0"])
    s.add_dependency(%q<em-http-request>, ["~> 1.0"])
    s.add_dependency(%q<multipart-post>, [">= 0"])
    s.add_dependency(%q<mime-types>, [">= 0"])
    s.add_dependency(%q<uuidtools>, [">= 0"])
    s.add_dependency(%q<vmstat>, ["~> 2.0"])
    s.add_dependency(%q<squash_ruby>, [">= 0"])
    s.add_dependency(%q<addressable>, ["~> 2.2"])
    s.add_dependency(%q<steno>, [">= 0"])
    s.add_dependency(%q<rake>, ["~> 0.9.2"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<sinatra>, [">= 0"])
    s.add_dependency(%q<webmock>, [">= 0"])
    s.add_dependency(%q<debugger>, [">= 0"])
  end
end
