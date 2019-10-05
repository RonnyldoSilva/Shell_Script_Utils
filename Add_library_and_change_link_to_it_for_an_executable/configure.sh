cd libs 

rm libopencv_core.so
rm libopencv_core.so.3.4

rm libopencv_dnn.so
rm libopencv_dnn.so.3.4

rm libopencv_highgui.so
rm libopencv_highgui.so.3.4

rm libopencv_imgcodecs.so
rm libopencv_imgcodecs.so.3.4

rm libopencv_imgproc.so
rm libopencv_imgproc.so.3.4

rm libcudart.so.8.0

sudo ln -s libcudart.so.8.0.61 libcudart.so.8.0 

sudo ln -s libopencv_core.so.3.4.0 libopencv_core.so
sudo ln -s libopencv_core.so.3.4.0 libopencv_core.so.3.4

sudo ln -s libopencv_dnn.so.3.4.0 libopencv_dnn.so
sudo ln -s libopencv_dnn.so.3.4.0 libopencv_dnn.so.3.4

sudo ln -s libopencv_highgui.so.3.4.0 libopencv_highgui.so
sudo ln -s libopencv_highgui.so.3.4.0 libopencv_highgui.so.3.4

sudo ln -s libopencv_imgcodecs.so.3.4.0 libopencv_imgcodecs.so
sudo ln -s libopencv_imgcodecs.so.3.4.0 libopencv_imgcodecs.so.3.4

sudo ln -s libopencv_imgproc.so.3.4.0 libopencv_imgproc.so
sudo ln -s libopencv_imgproc.so.3.4.0 libopencv_imgproc.so.3.4

sudo ln -s libjasper.so libjasper.so.1
sudo ln -s libjasper.so libjasper.so.1.0.0
sudo ln -s libtbb.so libtbb.so.2

cd ..

sudo apt-get install -y libboost-all-dev
sudo apt-get install -y libopenblas-base
sudo apt-get install -y libgfortran3

LD_LIBRARY_PATH=$(pwd)/libs/
export LD_LIBRARY_PATH

echo REVAI_PATH=$(pwd)/ >> ~/.bashrc
echo "export REVAI_PATH">> ~/.bashrc

echo LD_LIBRARY_PATH=$(pwd)/libs/ >> ~/.bashrc
echo "export LD_LIBRARY_PATH" >> ~/.bashrc

source ~/.bashrc
