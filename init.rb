require 'redmine'

require_dependency 'hooks'

Redmine::Plugin.register :redmine_sms do
  name 'Redmine Sms plugin'
  author 'Rafal Kwasny'
  description 'Plugin do wysyłania SMS'
  version '0.0.1'
  url 'http://mag.entropy.be'
  author_url 'http://mag.entropy.be'
end


