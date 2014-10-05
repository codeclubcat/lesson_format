#!/bin/bash

# Canviar el theme a world per aprofitar els estils en blau
find output -name "*.html" | while read f; do
   sed -i 's/catalonia/world/' $f
done

# Utilitzar estils reservats per 'en-GB' només?
sed -i 's/en-GB/ca-ES/g' output/css/master.min.css

# Retoc de CSS
echo ".lesson-steps ul { margin-left: 1.4em; }" >> output/css/master.min.css
