FROM continuumio/anaconda3:2021.11

RUN apt-get update && apt-get install -y \
    sudo \
    wget \
    libglib2.0-0 \
    libsm6 \
    libxrender1 \
    libxext6 \
    libgl1-mesa-dev

RUN conda update -y -n base -c defaults conda

# 環境の作成
RUN conda create -y -n image_processing_100_questions

# opencvのインストール into image_processing_100_questions
RUN conda install -y -c conda-forge -n image_processing_100_questions opencv

# python moduleのインストール
RUN pip install ipykernel opencv-python scipy mglearn

# ipykernelにimage_processing_100_questionsの環境変数を追加
RUN python -m ipykernel install --user --name=image_processing_100_questions

# jupyter kernelspec list
WORKDIR /
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token=''"]