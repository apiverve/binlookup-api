Pod::Spec.new do |s|
  s.name             = 'APIVerveBINLookup'
  s.version          = '1.2.3'
  s.summary          = 'BIN Lookup is a BIN checker API: send the first 6 to 8 digits of a payment card and get the card brand, type (debit or credit), issuing...'
  s.description      = <<-'DESC'
BIN Lookup is a BIN checker API: send the first 6 to 8 digits of a payment card and get the card brand, type (debit or credit), issuing bank and country of issuance back as JSON. Check incoming cards at checkout before you charge them.

This iOS/macOS SDK provides a convenient way to access the BIN Lookup from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/binlookup?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/binlookup-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveBINLookup/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
