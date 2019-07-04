cat drop.sql | docker exec -i mattermost-docker_db_1 psql  postgres admin
cat dump_test.sql | docker exec -i mattermost-docker_db_1 psql  postgres admin
