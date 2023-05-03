echo ==== Pyccel docker Test =====
if [ $# -ne 1 ]; 
    then echo "usage: ./script.sh <path to pyccel directory>"
	exit 1;
fi
echo pyccel Directory to be tested: $1

docker container run --rm -v $1:/home/pyccel -it pyccel_ubuntu bash
