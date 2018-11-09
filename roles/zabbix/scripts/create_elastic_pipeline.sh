#!/bin/bash

# uint pipeline
echo  "-----------------------------------create uint pipeline-----------------------------------"
curl -X PUT \
 $1/_ingest/pipeline/uint-pipeline \
 -H 'content-type:application/json' \
 -d '{
  "description": "daily uint index naming",
  "processors": [
    {
      "date_index_name": {
        "field": "clock",
        "date_formats": ["UNIX"],
        "index_name_prefix": "uint-",
        "date_rounding": "d"
      }
    }
  ]
}' 
echo


# dbl pipeline
echo  "-----------------------------------create dbl pipeline-----------------------------------"
curl -X PUT \
 $1/_ingest/pipeline/dbl-pipeline \
 -H 'content-type:application/json' \
 -d '{
  "description": "daily dbl index naming",
  "processors": [
    {
      "date_index_name": {
        "field": "clock",
        "date_formats": ["UNIX"],
        "index_name_prefix": "dbl-",
        "date_rounding": "d"
      }
    }
  ]
}'
echo

# str pipeline
echo "-----------------------------------create str pipeline-----------------------------------"
curl -X PUT \
 $1/_ingest/pipeline/str-pipeline \
 -H 'content-type:application/json' \
 -d '{
  "description": "daily str index naming",
  "processors": [
    {
      "date_index_name": {
        "field": "clock",
        "date_formats": ["UNIX"],
        "index_name_prefix": "str-",
        "date_rounding": "d"
      }
    }
  ]
}'
echo

# text pipeline
echo "-----------------------------------create text pipeline-----------------------------------"
curl -X PUT \
 $1/_ingest/pipeline/text-pipeline \
 -H 'content-type:application/json' \
 -d '{
  "description": "daily text index naming",
  "processors": [
    {
      "date_index_name": {
        "field": "clock",
        "date_formats": ["UNIX"],
        "index_name_prefix": "text-",
        "date_rounding": "d"
      }
    }
  ]
}'
echo

# log pipeline
echo "-----------------------------------create log pipeline-----------------------------------"
curl -X PUT \
 $1/_ingest/pipeline/log-pipeline \
 -H 'content-type:application/json' \
 -d '{
  "description": "daily log index naming",
  "processors": [
    {
      "date_index_name": {
        "field": "clock",
        "date_formats": ["UNIX"],
        "index_name_prefix": "log-",
        "date_rounding": "d"
      }
    }
  ]
}'
echo
