FROM ubuntu

# neccessary pacakges to run pyccel
RUN apt-get update \
	&& apt-get install -y gcc && apt-get install -y gfortran \
	&& apt-get install -y libblas-dev liblapack-dev\
	&& apt-get install -y libopenmpi-dev openmpi-bin\
	&& apt-get install -y libomp-dev libomp5
# neccessary pacakges to run pyccel
RUN apt-get -y install build-essential zlib1g-dev libncurses5-dev libgdbm-dev \
	libnss3-dev libssl-dev libreadline-dev libffi-dev wget git
# installing python
RUN  apt-get install -y python3.9 python3-pip
# copying the pyccel project to be tested

#ARG PYCCEL_PATH
#COPY ./pyccel /home/pyccel

#WORKDIR /home/pyccel
#RUN  bash -c 'pip3 install --user -e .[test]'
#RUN  bash -c ./tests/run_tests_py3.sh


