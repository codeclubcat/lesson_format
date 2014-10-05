#!/bin/bash

find output -name "*.html" | while read f; do
   sed -i 's/catalonia/world/' $f
done

sed -i 's/en-GB/ca-ES/g' output/css/master.min.css
