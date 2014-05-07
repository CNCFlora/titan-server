# Titan VM

[Titan GraphDB](http://thinkaurelius.github.io/titan/).

Titan+Cassandra+ElasticSearch+Rexster+Batch Vagrant & Docker.

Doghouse exposed at http://192.168.50.8:8182/.

## REST Usage

[More on the REST API](https://github.com/tinkerpop/rexster/wiki/Basic-REST-API)

Create a node:

    curl -H 'Content-Type: application/json' -X POST 'http://192.168.50.8:8182/graphs/graph/vertices' -d '{"foo":"bar"}'

Search a node by value:

    curl 'http://192.168.50.8:8182/graphs/graph/vertices?key=foo&value=bar'

Create an edge:

    curl -X POST 'http://192.168.50.8:8182/graphs/graph/edges?_outV=4&_inV=8&label=friend'

Gremlin query:

    curl 'http://localhost:8182/graphs/graph/tp/gremlin?script=g.v(4)'

## License 

MIT

