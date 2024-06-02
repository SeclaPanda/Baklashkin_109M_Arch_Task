export DB_HOST=lab_05_postgres
export DB_PORT=5432
export DB_LOGIN=root
export DB_PASSWORD=root
export DB_DATABASE=archdb
export MONGO_HOST=lab05_mongo
export MONGO_PORT=27017  
export MONGO_DATABASE=arch 
export JWT_KEY=0123456789ABCDEF0123456789ABCDEF  
export CACHE=lab_05_cache:6379

mongoimport --uri 'mongodb://lab05_mongo:27017/arch' --collection confs --file import_json/ConfsJson.json --jsonArray
mongoimport --uri 'mongodb://lab05_mongo:27017/arch' --collection reports --file import_json/ReportsJson.json --jsonArray

python3 -m venv ./env &&
source ./env/bin/activate &&
pip3 install -r import_json/requirements.txt &&
python3 "import_json/db_init.py"