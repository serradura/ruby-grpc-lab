# Snip

My lab to implement a micro-service using [gRPC](https://grpc.io/) to shorten urls.

![gif](http://g.recordit.co/YpxGgT7gYa.gif)

## Usage

First, start up the micro-service.
```sh
bundle exec ruby -I lib ./bin/server
```

Second, make calls to the service using it client.
```sh
bundle exec ruby -I lib ./bin/client http://www.google.com

# When call without arguments
# the client will use http://example.com by default.
bundle exec ruby -I lib ./bin/client
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/snip. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Snip project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/snip/blob/master/CODE_OF_CONDUCT.md).
