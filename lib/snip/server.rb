require_relative 'service'

module Snip

  class Server
    BuildHTTP2Port = -> (grpc_address, insecure_port) {
      options = insecure_port ? %i[this_port_is_insecure] : []

      [grpc_address].concat(options)
    }

    def initialize(grpc_address, insecure_port)
      @http2_port = BuildHTTP2Port.(
        grpc_address, insecure_port
      )

      @server = GRPC::RpcServer.new
    end

    def call
      @server.add_http2_port(*@http2_port)
      @server.handle(Snip::Service)
      @server.run_till_terminated
    end
  end

end
