PROJECT_DIR=${PROJECT_DIR:-$(
    cd $(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)/..
    pwd
)}

echo $PROJECT_DIR

cd $PROJECT_DIR/verifiers
git clone https://github.com/tcwangshiqi-columbia/ReluVal.git

cd $PROJECT_DIR/verifiers/ReluVal
echo 'OpenBLAS-0.3.6/' > .gitignore

wget https://github.com/xianyi/OpenBLAS/archive/v0.3.6.tar.gz
tar -xzf v0.3.6.tar.gz
cd OpenBLAS-0.3.6
make
make PREFIX=$PROJECT_DIR/verifiers/ReluVal install

cd $PROJECT_DIR/verifiers/ReluVal
make