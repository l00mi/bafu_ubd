#!/bin/sh
rm target/ubd28.nt
#java -Djava.util.logging.config.file=config/log-config -jar ./lib/RMLMapper-0.1.jar -M config/ubd28.ttl -O target/ubd28.nt 2>&1 | grep -v DEBUG
java -jar lib/RML-Processor-0.3x100.jar -f ntriples -m config/ubd28.ttl -o target/ubd28.nt | grep -v DEBUG
perl -pi.back -e 's/(\/canton\/)([A-Z]{2})/\1\L\2/' target/ubd28.nt
serdi -i turtle -o ntriples -p ubd28 input/meta/ubd28/qb.ttl >> target/ubd28.nt
