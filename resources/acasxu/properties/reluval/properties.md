NN input lower and upper bounds specified in ReluVal/nnet.c line 302 ~
https://github.com/tcwangshiqi-columbia/ReluVal/blob/68ce6aaa28f0d7d9a8e10d1c64c01999f1aef88d/nnet.c
```
void load_inputs(int PROPERTY, int inputSize, float *u, float *l)
{

    if (PROPERTY == 1) {
        float upper[] = {60760,3.141592,3.141592,1200,60};
        float lower[] = {55947.691,-3.141592,-3.141592,1145,0};
        memcpy(u, upper, sizeof(float)*inputSize);
        memcpy(l, lower, sizeof(float)*inputSize);
    }
...
```


Full specification (Only for the original ACAS Xu properties)
```
void load_inputs(int PROPERTY, int inputSize, float *u, float *l)
{

    if (PROPERTY == 1) {
        float upper[] = {60760,3.141592,3.141592,1200,60};
        float lower[] = {55947.691,-3.141592,-3.141592,1145,0};
        memcpy(u, upper, sizeof(float)*inputSize);
        memcpy(l, lower, sizeof(float)*inputSize);
    }

    if (PROPERTY == 2) {
        float upper[] = {60760,3.141592,3.141592, 1200, 60};
        float lower[] = {55947.691,-3.141592,-3.141592,1145,0};
        memcpy(u, upper, sizeof(float)*inputSize);
        memcpy(l, lower, sizeof(float)*inputSize);
    }

    if (PROPERTY == 3) {
        float upper[] = {1800,0.06,3.141592,1200,1200};
        float lower[] = {1500,-0.06,3.10,980,960};
        memcpy(u, upper, sizeof(float)*inputSize);
        memcpy(l, lower, sizeof(float)*inputSize);
    }

    if (PROPERTY == 4) {
        float upper[] = {1800,0.06,0,1200,800};
        float lower[] = {1500,-0.06,0,1000,700};
        memcpy(u, upper, sizeof(float)*inputSize);
        memcpy(l, lower, sizeof(float)*inputSize);
    }

    if (PROPERTY == 5) {
        float upper[] = {400,0.4,-3.141592+0.005,400,400};
        float lower[] = {250,0.2,-3.141592,100,0};
        memcpy(u, upper, sizeof(float)*inputSize);
        memcpy(l, lower, sizeof(float)*inputSize);
    }

    if (PROPERTY==16) {
        float upper[] = {62000,-0.7,-3.141592+0.005,1200,1200};
        float lower[] = {12000,-3.141592,-3.141592,100,0};
        memcpy(u, upper, sizeof(float)*inputSize);
        memcpy(l, lower, sizeof(float)*inputSize);
    }

    if (PROPERTY==26) {
        float upper[] = {62000,3.141592,-3.141592+0.005,1200,1200};
        float lower[] = {12000,0.7,-3.141592,100,0};
        memcpy(u, upper, sizeof(float)*inputSize);
        memcpy(l, lower, sizeof(float)*inputSize);
    }

    if (PROPERTY==7) {
        float upper[] = {60760,3.141592,3.141592,1200,1200};
        float lower[] = {0,-3.141592,-3.141592,100,0};
        memcpy(u, upper, sizeof(float)*inputSize);
        memcpy(l, lower, sizeof(float)*inputSize);
    }

    if (PROPERTY==8) {
        float upper[] = {60760,-3.141592*0.75,0.1,1200,1200};
        float lower[] = {0,-3.141592,-0.1,600,600};
        memcpy(u, upper, sizeof(float)*inputSize);
        memcpy(l, lower, sizeof(float)*inputSize);
    }

    if (PROPERTY==9) {
        float upper[] = {7000,-0.14,-3.141592+0.01,150,150};
        float lower[] = {2000,-0.4,-3.141592,100,0};
        memcpy(u, upper, sizeof(float)*inputSize);
        memcpy(l, lower, sizeof(float)*inputSize);
    }

    if (PROPERTY==10) {
        float upper[] = {60760,3.141592,-3.141592+0.01,1200,1200};
        float lower[] = {36000,0.7,-3.141592,900,600};
        memcpy(u, upper, sizeof(float)*inputSize);
        memcpy(l, lower, sizeof(float)*inputSize);
    }
}
```