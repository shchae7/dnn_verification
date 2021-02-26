set -x

PROJECT_DIR=${PROJECT_DIR:-$(
    cd $(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)/..
    pwd
)}

echo $PROJECT_DIR

mkdir -p $PROJECT_DIR/verifiers

if [ "$1" == "install" ]; then
    for tool in "$@"; do
        if [ "$tool" == "reluplex" ]; then
            echo "Installing Reluplex"
            sh $PROJECT_DIR/scripts/installation/install_reluplex.sh
        elif [ "$tool" == "reluval" ]; then
            echo "Installing ReluVal"
            sh $PROJECT_DIR/scripts/installation/install_reluval.sh
        else
            echo "Unsupported Tool Specified"
        fi
    done
fi