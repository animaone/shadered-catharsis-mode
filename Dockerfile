FROM x11docker/xfce
RUN apt update && apt install libsdl2-dev libglew-dev libglm-dev libgtk-3-dev build-essential cmake -y
RUN apt install git -y
RUN cd / && git clone https://github.com/dfranx/SHADERed.git && cd SHADERed && git submodule update --init && cmake . && make -j10
RUN mkdir SHADERed_host