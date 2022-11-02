FROM python:3.8

ADD cvae.py .

RUN pip install tensorflow
RUN pip install numpy 
RUN pip install imageio
RUN pip install -U matplotlib
RUN pip install ipython
RUN pip install display
RUN pip install tensorflow-probability
RUN pip install git+https://github.com/tensorflow/docs
ADD mnist.npz .
RUN pip install tensorflow
RUN pip install click

RUN pip install pandas

CMD ["python" , "./cvae.py" ]
