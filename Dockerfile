# Use the official Python image as the base
FROM python:3.11


# Maintainer information
LABEL maintainer="Alexander Johnston"


# Set the working directory in the container
WORKDIR /app

RUN apt update && apt install -y libgl1 libglx-mesa0 libopengl0

# Install Python packages without specifying exact versions
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
# Expose port 8888 for Jupyter Notebook
EXPOSE 8888


# Command to run Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
