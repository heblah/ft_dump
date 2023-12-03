FROM	ubuntu:22.04

ARG		LOGIN
ENV		USER=$LOGIN
ENV		HOME=/home/$LOGIN

RUN		apt update && apt install -y zsh \
			sudo \
			neovim \
			git make clang gcc gdb python3 python3-pip \
			tldr fzf

RUN		useradd $USER && \
			gpasswd -a $USER sudo && \
			mkdir /home/$USER && \
			chown $USER /home/$USER

USER	$USER
WORKDIR	/home/$USER

CMD		["/bin/zsh"]
