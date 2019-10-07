imageId=$(docker inspect registry.heroku.com/blog884/web:latest --format={{.Id}})
payload='{"updates":[{"type":"web","docker_image":"'"$imageId"'"}]}'
curl -n -X PATCH https://api.heroku.com/apps/blog884/formation \
-d "$payload" \
-H "Content-Type: application/json" \
-H "Accept: application/vnd.heroku+json; version=3.docker-releases" \
-H "Authorization: Bearer 68f98e9a-066c-4d40-8cd7-9cf797a14a1d"