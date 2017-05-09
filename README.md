## Sample chat application built with Hanami and LiteCable (compatible with AnyCable)

The application is **literally** the porting of the [LiteCable](https://github.com/palkan/litecable) [Sinatra example](https://github.com/palkan/litecable/tree/master/examples/sinatra) to [Hanami](http://hanamirb.org/) (kudos to [palkan](https://github.com/palkan) for its work :clap: :clap: :clap: ).

### Usage

Install dependencies:

```
bundle install
```

Run server

```
bundle exec puma
```

Open your browser at [localhost:9292](http://localhost:9292/), enter your name and a chat room ID (anything you want).

Then open another session (another browser, incognito window) and repeat all steps using the same room ID.

Now you can chat with yourself!

### AnyCable usage (for production)

This example also can be used with [AnyCable](http://anycable.io/), it requires [Redis](https://redis.io/) (see the [docs](https://github.com/anycable/anycable) for more details).

Just run `Procfile` with your favourite tool ([hivemind](https://github.com/DarthSim/hivemind) or [Foreman](http://ddollar.github.io/foreman/)):

```
hivemind
```

or

```
foreman start
```

### Notes

- The application provide a basic example of integration between Hanami and AnyCable/LiteCable, it is a proof of concept and it was never tested in production.
- There are a few specs (added by Hanami generators), but they are broken :( I didn't fix they for the same reason I wrote above and because the application is a merely porting of the Sinatra example to Hanami.

### Contributing

Bug reports and PRs are welcome on GitHub at https://github.com/nickgnd/hanami-chat-example

### Credits

- Vladimir Dementyev ([palkan](https://github.com/palkan))
