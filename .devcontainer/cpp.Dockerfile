FROM mcr.microsoft.com/vscode/devcontainers/cpp:ubuntu-22.04

# Setup the locale
RUN apt update && apt install -y locales
RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen en_US.UTF-8 && \
    update-locale LANG=en_US.UTF-8

# Install CMake
RUN apt-get update && \
    wget https://github.com/Kitware/CMake/releases/download/v3.27.9/cmake-3.27.9-linux-x86_64.tar.gz && \
    tar -zxvf cmake-3.27.9-linux-x86_64.tar.gz && \
    cp -r cmake-3.27.9-linux-x86_64/bin/* /usr/bin/ && \
    cp -r cmake-3.27.9-linux-x86_64/share/* /usr/share/

# Install OpenCV
RUN apt update && apt install -y libopencv-dev

COPY . /app

# Delete as-is build directory
RUN rm -fr /app/build