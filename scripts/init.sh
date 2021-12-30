set -e

docker-compose -f docker-compose-init.yaml up --build
docker-compose -f docker-compose-init.yaml down
rm -rf ./project-init
rm docker-compose-init.yaml
rm scripts/init.sh

sudo chmod 777 pyproject.toml
sudo chmod 777 poetry.lock