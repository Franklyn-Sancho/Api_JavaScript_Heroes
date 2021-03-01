echo '\n\n requesting all heroes'
curl localhost:3000/heroes

echo '\n\n requesting flash'
curl localhost:3000/heroes/1

echo '\n\n requesting with wrong body'
curl --silent -x POST \
	--data-binary '{"invalid": "data"}' \
	localhost:3000/heroes

echo '\n\n creating chapolin'
curl --silent -x POST \
	--data-binary '{"name": "chapolin", "age": 100, "power": "Strength"}' \
	localhost:3000/heroes

ID=$(echo $CREATE | jq.id)

echo '\n\n requesting flash'
curl localhost:3000/heroes/$ID
