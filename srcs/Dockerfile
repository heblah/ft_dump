FROM	ubuntu:22.04

ARG		LOGIN
ENV		USER=$LOGIN
ENV		HOME=/home/$LOGIN

RUN		apt update && apt install -y zsh \
			neovim \
			git make clang gcc gdb python3 python3-pip

RUN		useradd $USER

USER	$USER
WORKDIR	/home/$USER

CMD		["/bin/zsh"]
