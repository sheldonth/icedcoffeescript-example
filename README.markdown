## IcedCoffeeScript await/defer example usage

#### Usage

#### You need bitcoind running on localhost:8332 to generate real addresses. Else errors for you!

1. npm install
2. cake compile
3. cake run

#### If you have bitcoind running:

Addresses : 1PiodJoSUTQX48rpqXtGRvXYVhmHqmWQAU,13XJxWQzBH29dqCm2xHEBNyETrdTrbhJTi
Errors : ,

#### Else

No addresses and some Errors

#### The point is that by passing a callback function to the defer function with many parameters, you can keep both an array of errors and results. This changes everything!.