FROM ubuntu:14.04

RUN apt-get update -qq && apt-get install -y python-dev libblas-dev liblapack-dev libatlas-base-dev gfortran libpng12-dev libfreetype6-dev libjpeg-dev tcl-dev tk-dev python-tk libboost-program-options-dev libboost-python-dev libsnappy-dev python-pip git

RUN pip install numpy==1.10.1
RUN pip install scipy==0.16.1 scikit-learn==0.17 matplotlib==1.5.0 csc-pysparse==1.1.1.4 networkx divisi2==2.2.5

RUN cd /root; git clone https://github.com/ocelma/python-recsys.git; cd python-recsys; python setup.py install

RUN cd /root; git clone git://github.com/pybrain/pybrain.git pybrain; cd pybrain; sudo python setup.py install

RUN cd /root; git clone https://github.com/dpkp/kafka-python.git; cd kafka-python; git checkout v0.9.5; sudo python setup.py install

WORKDIR /root/aiw
