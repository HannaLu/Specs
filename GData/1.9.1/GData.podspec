Pod::Spec.new do |s|
  s.name     = 'GData'
  s.version  = '1.9.1'
  s.platform = :ios
  s.license  = { :type => 'Apache License, Version 2.0', :file => 'COPYING.txt' }
  s.summary  = "The Google data APIs provide a simple protocol for reading and "\
               "writing data on the web. Many Google services provide a Google data API."
  s.homepage = 'https://code.google.com/p/gdata-objectivec-client'
  s.author   = { 'The Google Data APIs team' => 'https://code.google.com/p/gdata-objectivec-client' }

  s.source       = { :svn => 'http://gdata-objectivec-client.googlecode.com/svn/tags/gdata-objectivec-client-1.9.1/' }
  s.source_files = 'Source/ACL/*.{h,m}', 'Source/BaseClasses/*.{h,m}', 'Source/Elements/*.{h,m}',
                   'Source/Geo/*.{h,m}', 'Source/HTTPFetcher/*.{h,m}', 'Source/Introspection/*.{h,m}',
                   'Source/Media/*.{h,m}', 'Source/Networking/*.{h,m}', 'Source/OAuth2/*.{h,m}',
                   'Source/XMLSupport/*.{h,m}', 'Source/*.{h,m}'
  s.compiler_flags = '-Wno-format-extra-args', '-Wno-format-invalid-specifier', '-Wno-incompatible-pointer-types'
  s.libraries = 'xml2'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }

  s.subspec 'YouTube' do |gdyt|
    gdyt.frameworks   = 'CFNetwork', 'SystemConfiguration'
    gdyt.source_files = 'Source/Clients/YouTube/*.{h,m}', 'Source/Clients/YouTube/Touch/*.{h,m}'
  end

end
