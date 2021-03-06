PATH
  remote: .
  specs:
    cassandra-web (0.5.0)
      cassandra-driver (~> 3.1)
      lz4-ruby (~> 0.3)
      rack-cors (~> 0.2)
      rack-parser (~> 0.7)
      sinatra (~> 1.5)
      thin (~> 2.0)

GEM
  remote: https://rubygems.org/
  specs:
    cassandra-driver (3.2.3)
      ione (~> 1.2)
    daemons (1.3.1)
    eventmachine (1.2.7)
    ione (1.2.4)
    lz4-ruby (0.3.3)
    rack (2.1.4)
    rack-cors (0.4.1)
    rack-parser (0.7.0)
      rack
    rack-protection (1.5.5)
      rack
    rake (10.5.0)
    bundler(2.0.0)
    sinatra (1.4.8)
      rack (~> 1.5)
      rack-protection (~> 1.4)
      tilt (>= 1.3, < 3)
    thin (1.7.2)
      daemons (~> 1.0, >= 1.0.9)
      eventmachine (~> 1.0, >= 1.0.4)
      rack (>= 1, < 3)
    tilt (2.0.9)

PLATFORMS
  ruby

DEPENDENCIES
  bundler (~> 2.0)
  cassandra-web!
  rake (~> 10.0)

BUNDLED WITH
   2.1.4
