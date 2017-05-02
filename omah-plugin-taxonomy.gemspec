Gem::Specification.new do |s|
  s.name = 'omah-plugin-taxonomy'
  s.version = '0.1.0'
  s.summary = 'An OMAH plugin to tag email messages by matching known recipients or by subject keyword matching.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/omah-plugin-taxonomy.rb']
  s.signing_key = '../privatekeys/omah-plugin-taxonomy.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/omah-plugin-taxonomy'
end
