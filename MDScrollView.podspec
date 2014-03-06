Pod::Spec.new do |s|
  s.name     = 'MDScrollView'
  s.version  = '1.0'
  s.license  = { :type => 'MIT', :file => 'LICENSE' }
  s.summary  = 'Subclass of UIScrollView providing the ability to change the color of the extreme top and bottom of the ScrollView'
  s.homepage = 'https://github.com/michaeldresser/MDScrollView'
  s.author   = 'Michael Dresser'
  s.source   = { :git => 'https://github.com/michaeldresser/MDScrollView' }

  s.source_files = '*.{h,m}'
  s.platform     = :ios
  s.requires_arc = true
end