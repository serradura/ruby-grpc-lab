module Snip

  class Client
    BuildChannel = -> (grpc_address, insecure_channel) {
      options = insecure_channel ? %i[this_channel_is_insecure] : []

      [grpc_address].concat(options)
    }

    Request = -> url {
      Snip::SnipRequest.new(url: url)
    }

    def initialize(grpc_address, insecure_channel = true)
      stub_args = BuildChannel.(
        grpc_address, insecure_channel
      )

      @stub = Snip::UrlSnipService::Stub.new(*stub_args)
    end

    def call(url)
      req = Request.(url || 'http://example.com')
      res = @stub.snip_it(req)
      puts "Snipped URL: #{res.url}"
    end
  end

end
