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

# Set the working directory
WORKDIR /xv6

# Start a shell when the container runs
CMD ["bash"]