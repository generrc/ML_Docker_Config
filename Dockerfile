FROM python:3.11

LABEL maintainer="generrc"

WORKDIR /app

RUN apt update && apt install -y libgl1 libglx-mesa0 libopengl0

RUN pip install --upgrade pip && \
    pip install numpy \
    seaborn\
    pandas \
    matplotlib \
    seaborn \
    jupyterlab \
    notebook \
    ucimlrepo \
    scipy \
    scikit-learn \
    torch \
    torchsummary \
    fastai \
    gymnasium \
    ale_py \
    torchaudio\
    gymnasium[other] \
    opencv-python \
    ipywidgets 

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]

