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


## Repository Tree
```
dnn_verification
│   README.md  
│
└───verifiers
│   │
│   └───Reluplex
│   │
│   └───Marabou
│   │
│   └───ReluVal
│   │
│   └───Neurify
│   │
│   └───ERAN 
│   
└───resources
│   │
│   └───acasxu
│       │
│       └───nnet
│       │   │   ACASXU_experimental_v2a_1_1.nnet
│       │   │   ...
│       │
│       └───properties
│           │
│           └───marabou
│           │   │   property2.txt
│           │   │   ...
│           │
│           └───reluplex
│           │   │   properties.md
│           │
│           └───reluval
│               │   properties.md
│
└───scripts
```




References
==========
DNNV (https://github.com/dlshriver/DNNV)
NNet (https://github.com/sisl/NNet)