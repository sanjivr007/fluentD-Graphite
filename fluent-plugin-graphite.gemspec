# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = 'fluent-plugin-graphite-new'
  gem.version     = '0.0.8'
  gem.authors     = ['Sanjiv Ranjan']
  gem.email       = 'sanjiv.r007@gmail.com'
  gem.homepage    = 'https://github.com/sanjivr007/fluentD-Graphite'
  gem.description = 'fluentd output plugin to send metrics to graphite'
  gem.summary     = gem.description
  gem.licenses    = ['MIT']
  gem.has_rdoc    = false

  gem.files       = `git ls-files`.split("\n")
  gem.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'fluentd', '>= 0.10.17'
  gem.add_runtime_dependency 'fluent-mixin-rewrite-tag-name'
  gem.add_runtime_dependency 'graphite-api'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'test-unit', '~> 3.2.0'
end
