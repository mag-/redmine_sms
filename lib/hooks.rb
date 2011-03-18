module SMS
  class Hooks < Redmine::Hook::ViewListener

      def controller_issues_new_after_save(context={})
        require 'net/https'
        require "uri"
        
        login = ""
        pass = ""
        recipient = "48"
        
        uri = URI.escape("https://api.gsmservice.pl/send.php?login=#{login}&pass=#{pass}&recipient=#{recipient}&text=Nowe zgloszenie: #{context[:issue][:subject]} od #{context[:issue].author.login}&type=3")
        uri = URI.parse(uri)
        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        request = Net::HTTP::Get.new(uri.request_uri)
        response = http.request(request)
      end
  end
end
