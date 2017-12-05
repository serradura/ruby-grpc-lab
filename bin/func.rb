module Func
  IsInsecure = -> arg {
    String(arg) =~ /^f(alse)?/i ? false : true
  }

  GRPCAddress = -> default {
    -> arg { String(arg || default) }
  }
end
