FROM ubuntu:18.04
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install jupyter
RUN pip3 install matplotlib
RUN pip3 install pandas
RUN pip3 install scipy
RUN pip3 install sklearn
RUN pip3 install numpy
RUN pip3 install seaborn
RUN useradd -ms /bin/bash jupyter

COPY ./src/ /home/jupyter
COPY ./data/ /home/jupyter/data/
COPY ./src/TerrorGroupClassifier6.ipynb /home/jupyter/.

USER jupyter

WORKDIR /home/jupyter

ENTRYPOINT ["jupyter", "notebook", "--ip=*"]

