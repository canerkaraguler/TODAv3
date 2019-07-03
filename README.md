# TODAv3
TODAv3 is a Linux shell script that creates a virtual python 3 environment with all libraries pre-installed in it to be able to use the TensorFlow Object Detection API features.


## Installation

1)Download the createTensorflowVenv.sh file.

2)Give execute permissions to the downloaded script with command

```bash
chmod +x /path/to/createTensorflowVenv.sh
```
Important Note: 

Respect to the [TensorFlow](https://www.tensorflow.org/install/gpu) official installation page, before starting installation (If you are going to install GPU version. There is no requirement for CPU version )you should satisfy some requirements. You should check these requirements from the link above.

## Usage
Script accepts 2 arguments.

   1- Path with folder name to create

   2- cpu or gpu selection respect to your system

If you want to use TensorFlow(CPU): 
```bash
./createTensorflowVenv.sh /path/to/myNewProject cpu
```

If you want to use TensorFlow(GPU): 
```bash
./createTensorflowVenv.sh /path/to/myNewProject gpu
```


After instillation the project structure should be like:
```bash
-> myNewProject
         ----->cocoapi
         ----->models
         ----->venv
```





## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.


## License
[MIT](https://choosealicense.com/licenses/mit/)
