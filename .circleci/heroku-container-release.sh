imageId=$(docker inspect registry.heroku.com/blog884/web:latest --format={{.Id}})
payload='{"updates":[{"type":"web","docker_image":"'"e4af413beaad"'"}]}'
curl -n -X PATCH https://api.heroku.com/apps/blog884/formation \
-d "$payload" \
-H "Content-Type: application/json" \
-H "Accept: application/vnd.heroku+json; version=3.docker-releases" \
-H "Authorization: Bearer 54e19a0a-5724-4d7c-b5a8-c1e4c76afbba"