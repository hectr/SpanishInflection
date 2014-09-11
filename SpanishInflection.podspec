Pod::Spec.new do |s|
  s.name     = 'SpanishInflection'
  s.version  = '0.0.1'
  s.license  = { :type => 'MIT', :file => 'LICENSE' }
  s.summary  = 'Spanish rules for InflectorKit.'
  s.homepage = 'https://github.com/hectr/SpanishInflection.git'
  s.authors  = { 'Héctor Marqués Ranea' => 'h@mrhector.me' }
  s.source   = { :git => 'https://github.com/hectr/SpanishInflection.git', :commit => s.version.to_s }
  s.source_files = 'SpanishInflection'
  s.requires_arc = true

  s.dependency 'InflectorKit', '~> 0.0.1'
end
