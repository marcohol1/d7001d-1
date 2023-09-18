#!/bin/bash
user="put your username here"
secret="put your api-key-1 here"
website_url="https://toddbooth.com/wp-json/wp/v2"

curl -X POST \
	-u "${user}:${secret}" \
	"${website_url}/posts/" \
	-H "Content-Type: application/json" \
	-d '{
		"title": "Just A Random Post Title",
		"content": "This is the content ofthe new post.",
		"status": "publish"
	}' 
