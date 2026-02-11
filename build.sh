#!/bin/bash

# Define the array of strings
sdks=("android" "apex" "c" "clojure" "cpp-restsdk" "csharp" "dart" "gdscript" "go" "groovy" "java" "javascript" "kotlin" "objc" "perl" "php" "python" "r" "ruby" "rust" "scala-akka" "scalaz" "swift-combine" "swift6" "typescript-angular" "typescript-axios" "typescript-node")

# Iterate through the array
# the --skip-operation-example option is important to get around memory issues
for sdk in "${sdks[@]}"; do
  echo "---------------- generating sdk for $sdk"

  # Run a command for each element
  docker run -e JAVA_OPTS="-Xmx10g" --rm \
    -v $PWD:/local openapitools/openapi-generator-cli generate \
    --global-property modelTests=false,modelDocs=false,apiTests=false,apiDocs=false \
    --skip-operation-example \
    -i /local/sirqul-openapi-servicesFULL.yaml \
    -g $sdk \
    -o "/local/client-$sdk"

  echo "---------------- sdk for $sdk finished"
done