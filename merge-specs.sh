#!/bin/bash

# Directory of OpenAPI files (current directory)
SPEC_DIR=$(pwd)

# Output merged file
OUTPUT_FILE="$SPEC_DIR/sb-openapi-spec.yml"

# Find all YAML files starting with sb-openapi*.yml (including sb-openapi-spec.yml)
OPENAPI_FILES=$(ls $SPEC_DIR/sb-openapi*.yaml)

# Merge all files into the main sb-openapi-spec.yml
redocly join $OPENAPI_FILES -o $OUTPUT_FILE

# Provide feedback to the user
echo "OpenAPI files merged into $OUTPUT_FILE"