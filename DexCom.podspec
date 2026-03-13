Pod::Spec.new do |s|

  s.name             = 'DexCom'
  s.version          = '1.0.0'
  s.summary          = 'DexCom iOS SDK'

  s.description      = <<-DESC
DexCom reusable SDK for iOS applications.
DESC

  s.homepage         = 'https://github.com/ankur08/DexCom'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }

  s.author           = { 'Ankur' => 'ankur.nema12@gmail.com' }

  s.platform         = :ios, '14.0'

  s.source           = { :git => 'https://github.com/ankur08/DexCom.git', :tag => s.version }

  s.source_files = 'DexCom/**/*.swift'
  s.exclude_files = 'DexCom/DexComApp.swift', 'DexCom/ContentView.swift'

  s.swift_version    = '5.0'

end
