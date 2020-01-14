#!/bin/sh
curl -n \
     -X PUT \
     --http1.1 \
     -H Content-Type:application/n-triples \
     -T target/ubd28.nt \
     -G https://stardog-test.cluster.ldbar.ch/lindas \
     --data-urlencode graph=https://linked.opendata.swiss/graph/FOEN/UBD28
curl -n \
     -X PUT \
     --http1.1 \
     -H Content-Type:application/n-triples \
     -T target/ubd66.nt \
     -G https://stardog-test.cluster.ldbar.ch/lindas \
     --data-urlencode graph=https://linked.opendata.swiss/graph/FOEN/UBD66