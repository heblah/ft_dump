DOCKER_NAME=ft_dump
LOGIN=halvarez
USER_ID=$(shell id -u)

all: 
	if [ "$(docker image ls | grep ${DOCKER_NAME})" == "" ]; then \
		docker build \
			--build-arg LOGIN=${LOGIN} \
			-t ${DOCKER_NAME} src/.; \
	fi
	docker run \
		-u ${USER_ID} \
		-itv ${HOME}:/home/${LOGIN} \
		${DOCKER_NAME}

clean:
	docker rmi -f ${DOCKER_NAME}

re:
	make clean
	make all

.PHONY: all clean re 
