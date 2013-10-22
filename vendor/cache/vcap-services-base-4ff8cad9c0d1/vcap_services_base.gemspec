# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "vcap_services_base"
  s.version = "0.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["CloudFoundry Services Team"]
  s.date = "2013-10-22"
  s.description = "Base class/module to develop CloudFoundry service"
  s.email = "cfpi-services@googlegroups.com"
  s.files = ["lib/base", "lib/base/abstract.rb", "lib/base/api", "lib/base/api/message.rb", "lib/base/asynchronous_service_gateway.rb", "lib/base/backup.rb", "lib/base/barrier.rb", "lib/base/base.rb", "lib/base/base_async_gateway.rb", "lib/base/base_job.rb", "lib/base/catalog_manager_base.rb", "lib/base/catalog_manager_v1.rb", "lib/base/catalog_manager_v2.rb", "lib/base/cloud_controller_services.rb", "lib/base/datamapper_l.rb", "lib/base/gateway.rb", "lib/base/gateway_service_catalog.rb", "lib/base/http_handler.rb", "lib/base/job", "lib/base/job/async_job.rb", "lib/base/job/config.rb", "lib/base/job/lock.rb", "lib/base/job/package.rb", "lib/base/job/serialization.rb", "lib/base/job/snapshot.rb", "lib/base/node.rb", "lib/base/node_bin.rb", "lib/base/plan.rb", "lib/base/provisioner.rb", "lib/base/provisioner_v1.rb", "lib/base/provisioner_v2.rb", "lib/base/service.rb", "lib/base/service_advertiser.rb", "lib/base/service_error.rb", "lib/base/service_message.rb", "lib/base/service_plan_change_set.rb", "lib/base/simple_aop.rb", "lib/base/snapshot_v2", "lib/base/snapshot_v2/snapshot.rb", "lib/base/snapshot_v2/snapshot_client.rb", "lib/base/snapshot_v2/snapshot_job.rb", "lib/base/utils.rb", "lib/base/version.rb", "lib/base/warden", "lib/base/warden/instance_utils.rb", "lib/base/warden/node_utils.rb", "lib/base/warden/service.rb", "lib/base/worker_bin.rb", "lib/vcap_services_base.rb"]
  s.homepage = "https://github.com/cloudfoundry/vcap-services-base"
  s.require_paths = [["lib"]]
  s.rubygems_version = "1.8.17"
  s.summary = "VCAP services base module"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nats>, ["< 0.4.28", ">= 0.4.22.beta.8"])
      s.add_runtime_dependency(%q<data_mapper>, ["~> 1.2"])
      s.add_runtime_dependency(%q<do_sqlite3>, [">= 0"])
      s.add_runtime_dependency(%q<eventmachine>, ["~> 1.0"])
      s.add_runtime_dependency(%q<eventmachine_httpserver>, ["~> 0.2.1"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_runtime_dependency(%q<ruby-hmac>, ["~> 0.4.0"])
      s.add_runtime_dependency(%q<em-http-request>, ["~> 1.0"])
      s.add_runtime_dependency(%q<sinatra>, [">= 1.2.3"])
      s.add_runtime_dependency(%q<thin>, [">= 1.3.1"])
      s.add_runtime_dependency(%q<vcap_common>, [">= 2.2.1"])
      s.add_runtime_dependency(%q<resque>, ["~> 1.20"])
      s.add_runtime_dependency(%q<resque-status>, [">= 0"])
      s.add_runtime_dependency(%q<curb>, ["~> 0.7.16"])
      s.add_runtime_dependency(%q<rubyzip>, ["~> 0.9.8"])
      s.add_runtime_dependency(%q<warden-client>, [">= 0"])
      s.add_runtime_dependency(%q<warden-protocol>, [">= 0"])
      s.add_runtime_dependency(%q<cf-uaa-lib>, [">= 0"])
      s.add_runtime_dependency(%q<steno>, [">= 0"])
    else
      s.add_dependency(%q<nats>, ["< 0.4.28", ">= 0.4.22.beta.8"])
      s.add_dependency(%q<data_mapper>, ["~> 1.2"])
      s.add_dependency(%q<do_sqlite3>, [">= 0"])
      s.add_dependency(%q<eventmachine>, ["~> 1.0"])
      s.add_dependency(%q<eventmachine_httpserver>, ["~> 0.2.1"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<ruby-hmac>, ["~> 0.4.0"])
      s.add_dependency(%q<em-http-request>, ["~> 1.0"])
      s.add_dependency(%q<sinatra>, [">= 1.2.3"])
      s.add_dependency(%q<thin>, [">= 1.3.1"])
      s.add_dependency(%q<vcap_common>, [">= 2.2.1"])
      s.add_dependency(%q<resque>, ["~> 1.20"])
      s.add_dependency(%q<resque-status>, [">= 0"])
      s.add_dependency(%q<curb>, ["~> 0.7.16"])
      s.add_dependency(%q<rubyzip>, ["~> 0.9.8"])
      s.add_dependency(%q<warden-client>, [">= 0"])
      s.add_dependency(%q<warden-protocol>, [">= 0"])
      s.add_dependency(%q<cf-uaa-lib>, [">= 0"])
      s.add_dependency(%q<steno>, [">= 0"])
    end
  else
    s.add_dependency(%q<nats>, ["< 0.4.28", ">= 0.4.22.beta.8"])
    s.add_dependency(%q<data_mapper>, ["~> 1.2"])
    s.add_dependency(%q<do_sqlite3>, [">= 0"])
    s.add_dependency(%q<eventmachine>, ["~> 1.0"])
    s.add_dependency(%q<eventmachine_httpserver>, ["~> 0.2.1"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<ruby-hmac>, ["~> 0.4.0"])
    s.add_dependency(%q<em-http-request>, ["~> 1.0"])
    s.add_dependency(%q<sinatra>, [">= 1.2.3"])
    s.add_dependency(%q<thin>, [">= 1.3.1"])
    s.add_dependency(%q<vcap_common>, [">= 2.2.1"])
    s.add_dependency(%q<resque>, ["~> 1.20"])
    s.add_dependency(%q<resque-status>, [">= 0"])
    s.add_dependency(%q<curb>, ["~> 0.7.16"])
    s.add_dependency(%q<rubyzip>, ["~> 0.9.8"])
    s.add_dependency(%q<warden-client>, [">= 0"])
    s.add_dependency(%q<warden-protocol>, [">= 0"])
    s.add_dependency(%q<cf-uaa-lib>, [">= 0"])
    s.add_dependency(%q<steno>, [">= 0"])
  end
end
