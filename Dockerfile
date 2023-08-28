FROM ubuntu:jammy

# Install deps
RUN apt-get update
RUN apt-get install -y gcc \
        make \
        gcc-multilib \
        build-essential \
        gdb-multiarch \
        qemu-system-misc \
        binutils-riscv64-linux-gnu

RUN apt-get install -y gcc-riscv64-linux-gnu

RUN apt-get install -y autoconf automake autotools-dev \
 curl python3 python3-pip libmpc-dev libmpfr-dev libgmp-dev \
 gawk build-essential bison flex texinfo gperf libtool patchutils \
 bc zlib1g-dev libexpat-dev ninja-build git cmake libglib2.0-dev


RUN git clone --depth 1 https://github.com/riscv/riscv-gnu-toolchain

# Set the working directory
WORKDIR /xv6

# Start a shell when the container runs
CMD ["bash"]