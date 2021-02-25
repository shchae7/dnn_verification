PROJECT_DIR=$(
    cd $(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)/..
    pwd
)

python3 . --netname $PROJECT_DIR/data/acasxu/nets/ACASXU_experimental_v2a_3_3.onnx --dataset acasxu --domain deeppoly  --specnumber 9 > logs/property9_stats_3_3.txt