echo "[INFO] This shell script creates TensorFlow Object Detection API enabled virtual environment."
echo "[INFO] Created by Caner Karaguler - caner.karaguler@gmail.com"
echo "[INFO] Date 03/07/2019"

mkdir $1
cd $1
pip3 install virtualenv 
echo "[INFO] Creating Virtual Environment"
virtualenv -p python3 venv

git clone https://github.com/tensorflow/models.git


path=$PWD/models/research/


source venv/bin/activate



echo "[INFO] Installing Packages"
if [ "$2" == "cpu" ]
then
	
	pip install tensorflow
elif [ "$2" == "gpu" ]
then
	
	pip install tensorflow-gpu
else
	echo "[ERROR] Please Select the proper tensorflow type CPU or GPU"
	exit 1

fi


pip install  Cython
pip install  contextlib2
pip install  pillow
pip install  lxml
pip install  jupyter
pip install  matplotlib

git clone https://github.com/cocodataset/cocoapi.git
cd cocoapi/PythonAPI
make
cp -r pycocotools $path

cd $path
protoc object_detection/protos/*.proto --python_out=.
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim

echo "[INFO] Testing environment ..."


python $path/object_detection/builders/model_builder_test.py
echo "[INFO] Environment Is Ready."
