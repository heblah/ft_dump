
FROM	fedora:39 as core_base

ARG		LOGIN
ENV		USER=$LOGIN
ENV		HOME=/home/$LOGIN

RUN		dnf install -y fish man-db man-pages \
			sudo \
			neovim \
			git make clang gcc gdb python3 python3-pip \
			tldr fzf


FROM	core_base as config
RUN		useradd $USER && \
			echo "$USER:tetrapak" | chpasswd

USER	$USER
WORKDIR	/home/$USER

CMD		["/bin/fish"]
