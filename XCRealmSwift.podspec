# coding: utf-8
Pod::Spec.new do |s|
  s.name                      = 'XCRealmSwift'
  version                     = '10.39.1-d3'
  s.version                   = version
  s.summary                   = 'Realm Swift is a modern data framework & database for iOS, macOS, tvOS & watchOS.'
  s.description               = <<-DESC
                                The Realm Database, for Swift. (If you want to use Realm from Objective-C, see the “Realm” pod.)

                                Realm is a fast, easy-to-use replacement for Core Data & SQLite. Use it with Atlas Device Sync for realtime, automatic data sync. Works on iOS, macOS, tvOS & watchOS. Learn more and get help at https://www.mongodb.com/docs/realm/sdk/swift/.
                                DESC
  s.homepage                  = "https://realm.io"
  s.source                    = { :git => 'https://github.com/beMappy/RealmSwift.git', :tag => "#{s.version}" }
  s.author                    = { 'Realm' => 'realm-help@mongodb.com' }
  s.requires_arc              = true
  s.social_media_url          = 'https://twitter.com/realm'
  s.documentation_url         = "https://docs.mongodb.com/realm/sdk/swift"
  s.license                   = { :type => 'Apache 2.0', :file => 'LICENSE' }
  s.ios.deployment_target     = '11.0'
  s.swift_version             = '5'

  s.vendored_frameworks       = 'RealmSwift.xcframework'
  s.weak_frameworks = 'SwiftUI'

  s.dependency 'XCRealm', "= #{s.version}"
  
end
