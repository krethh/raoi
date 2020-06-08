echo "Run as ./run.sh <contract file>"
echo "e.g. ./run.sh dao.sol"

docker container rm oyente --force
docker run -v `pwd`/$1:/oyente/oyente/contract.sol --name oyente luongnguyen/oyente python /oyente/oyente/oyente.py -s /oyente/oyente/contract.sol -ce -t 100000
