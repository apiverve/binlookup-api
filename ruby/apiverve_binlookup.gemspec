# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_binlookup"
  spec.version       = "1.2.3"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "BIN Lookup API - Ruby Client"
  spec.description   = "BIN Lookup is a BIN checker API: send the first 6 to 8 digits of a payment card and get the card brand, type (debit or credit), issuing bank and country of issuance back as JSON. Check incoming cards at checkout before you charge them."
  spec.homepage      = "https://apiverve.com/marketplace/binlookup?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/binlookup-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/binlookup"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
