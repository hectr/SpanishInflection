
Pod::Spec.new do |s|
  s.name    = 'SpanishInflection'
  s.version = '0.0.2'
  s.summary = 'Spanish rules for InflectorKit.'

  s.description = <<-DESC
                  Spanish inflection rules for **[InflectorKit](https://www.github.com/mattt/InflectorKit)**.
                  DESC

  s.homepage         = 'https://github.com/hectr/SpanishInflection'
  s.license          = 'MIT'
  s.author           = { 'hectr' => 'h@mrhector.me' }
  s.source           = { :git => 'https://github.com/hectr/SpanishInflection.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/hectormarquesra'

  s.platform     = :osx
  s.platform     = :ios
  s.requires_arc = true

  s.source_files = 'SpanishInflection'

  s.dependency 'InflectorKit', '~> 0.0.1'
end
