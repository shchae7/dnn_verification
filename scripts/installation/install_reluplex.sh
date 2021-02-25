PROJECT_DIR=${PROJECT_DIR:-$(
    cd $(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)/..
    pwd
)}

echo $PROJECT_DIR

cd $PROJECT_DIR/verifiers
git clone https://github.com/guykatzz/ReluplexCav2017.git

cd $PROJECT_DIR/verifiers/ReluplexCav2017/glpk-4.60
./configure_glpk.sh
make
make install

cd $PROJECT_DIR/verifiers/ReluplexCav2017/reluplex
make

cd $PROJECT_DIR/verifiers/ReluplexCav2017/check_properties
make