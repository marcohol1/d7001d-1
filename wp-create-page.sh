#!/bin/bash
username="put your username here"
api_key_1="put your api-key-1 here"
base_url="https://toddbooth.com/wp-json/wp/v2"

curl -X POST \
    -u "${username}:${api_key_1}" \
    "${base_url}/pages/" \
    -H "Content-Type: application/json" \
    -d '{
        "title": "Just a Random Page Title",
        "content": "This is the content of the new page.",
        "status": "publish"
    }'
