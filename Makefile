DOCKER_NAME=ft_dump
LOGIN=halvarez

all: 
	if [ "$(docker image ls | grep ${DOCKER_NAME})" == "" ]; then \
		docker build \
			--build-arg LOGIN=${LOGIN} \
			-t ${DOCKER_NAME} srcs/.; \
	fi
	docker run \
		-itv ${HOME}:/home/${LOGIN} \
		${DOCKER_NAME}

clean:
	docker rmi -f ${DOCKER_NAME}

re:
	make clean
	make all

.PHONY: all clean re 
