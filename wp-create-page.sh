#!/bin/bash
user="put your username here"
secret="put your api-key-1 here"
website_url="https://toddbooth.com/wp-json/wp/v2"

curl -X POST \
    -u "${user}:${secret}" \
    "${website_url}/pages/" \
    -H "Content-Type: application/json" \
    -d '{
        "title": "Just a Random Page Title",
        "content": "This is the content of the new page.",
        "status": "publish"
    }'
