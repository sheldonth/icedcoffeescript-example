{Client} = require('bitcoin')

bitcoinClient = new Client  
    host: "localhost"
    port: 8332
    user: "quirkyuser"
    pass: "lovemebitcoin"
    ssl: no
    sslStrict: no

parallelCreateTwoAddresses = (cb) ->
  addresses = []
  errors = []
  await
    bitcoinClient.getAccountAddress "foo", defer errors[0], addresses[0]
    bitcoinClient.getAccountAddress "bar", defer errors[1], addresses[1]
  cb errors, addresses


addrs = []
errors = []
parallelCreateTwoAddresses (errors, addrs) ->
  console.log "Addresses : " + addrs
  console.log "Errors : " + errors
