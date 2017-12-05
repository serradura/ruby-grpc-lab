require 'snip_services_pb'

module Snip

  class Service < Snip::UrlSnipService::Service
    BuildShortURL = -> url {
      code = String(url).gsub(/https?:\/\//, '').to_i(36)

      "http://snip.it/#{code}"
    }

    def snip_it(snip_req, _unused_call)
      url = snip_req.url

      puts "Received URL snip request for #{url}"

      short_url = BuildShortURL.(url)

      Snip::SnipResponse.new(url: short_url)
    end
  end

end
