# Dnn Verification Tools

Repository containing scripts to install, and use
+ Reluplex (https://github.com/guykatzz/ReluplexCav2017)
+ Marabou (https://github.com/NeuralNetworkVerification/Marabou)
+ ReluVal (https://github.com/tcwangshiqi-columbia/ReluVal)
+ Neurify (https://github.com/tcwangshiqi-columbia/Neurify)
+ ERAN (DeepPoly, DeepZ, ...) (https://github.com/eth-sri/eran)
+ NNV (to be added) (https://github.com/verivital/nnv)

(Note: all the installations are done without sudo privileges)
Tested on Centos 7

## Installation
To install tools currently supported, execute
```
sh ./scripts/install.sh install reluplex marabou ...
```

## Experiments
### ACAS Xu Experiments
Based on the definitions provided by [Reluplex: An Efficient SMT Solver for Verifying Deep Neural Networks](https://arxiv.org/pdf/1702.01135.pdf) <br>
Currently available properties
|      Tool      |      Description      |
| -------------- | --------------------- |
|    Reluplex    | 1,2,3,4,5,6,7,8,9,10  |
|    Marabou     | 2,3,4,5,6,9,10        |
|ReluVal(Neurify)| 1,2,3,4,5,6,7,8,9,10  |
|      ERAN      | 2,3,4,5,6,9,10        |
|       NNV      |                       |

ACAS Xu DNNs provided in resources/acasxu directory in nnet and onnx format. <br>
nnet: from /Marabou/resources/nnet/acasxu/ <br>
onnx: converted from the above nnet files using the nnet2onnx converter from NNet repository.


## Repository Tree
```
.
├── README.md
├── resources
│   └── acasxu
│       ├── nnet
│       │   ├── ACASXU_experimental_v2a_1_1.nnet
│       │   ├── ...
│       ├── onnx
│       │   ├── ACASXU_experimental_v2a_1_1.onnx
│       │   ├── ...
│       └── properties
│           ├── eran
│           │   ├── property2_constraints.txt
│           │   ├── property2_input_prenormalized.txt
│           │   ├── ...
│           ├── marabou
│           │   ├── property2.txt
│           │   ├── ...
│           ├── reluplex
│           │   └── properties.md
│           └── reluval
│               └── properties.md
├── scripts
│   ├── exec
│   ├── installation
│   └── utils
│       ├── marabou
│       │   ├── run_property1.sh
│       │   ├── ...
│       └── maraboudnc
│           ├── run_property1.sh
│           ├── ...
├── slurm_scripts
│   ├── deeppoly
│   ├── marabou
│   │   ├── prop1.slurm.sh
│   │   ├── ...
│   ├── maraboudnc
│   │   ├── prop1.slurm.sh
│   │   ├── ...
│   ├── reluplex
│   │   ├── prop1.slurm.sh
│   │   ├── ...
│   └── reluval
│       ├── prop1.slurm.sh
│       ├── ...
├── tools
│   ├── acasxu_nnet2onnx.sh
│   └── nnet2onnx.py
└── verifiers
```


References
==========
DNNV (https://github.com/dlshriver/DNNV) <br>
NNet (https://github.com/sisl/NNet) <br>
[How to install ERAN on Linux without sudo](https://medium.com/sw-verification-testing/how-to-install-eran-on-linux-914fb00e45cc)