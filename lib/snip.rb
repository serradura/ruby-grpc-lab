require 'grpc'

require 'snip_services_pb'

module Snip
  Freeze = -> data { data.freeze }

  FrozenENV = -> (key, default) {
    Freeze.(ENV.fetch(key, default))
  }

  GRPC_HOST = FrozenENV.('GRPC_HOST', '0.0.0.0')
  GRPC_PORT = FrozenENV.('GRPC_PORT', '50052')
  GRPC_ADDRESS = Freeze.("#{GRPC_HOST}:#{GRPC_PORT}")
end

require 'snip/version'
require 'snip/client'
require 'snip/server'
