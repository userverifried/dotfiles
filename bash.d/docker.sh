#!/bin/bash
#
# Docker Functions

#export DOCKER_HOST=tcp://localhost:2375
alias docker='sudo docker'
alias docker-compose='sudo docker-compose'

function dbash() {
	DOTS="${HOME}"/.dotfiles
	RDOT="${DOTS}"/rootrc

	docker exec -ti \
		-v "${DOTS}"/bash.d:"${HOME}"/.bash.d \
		-v "${DOTS}"/config:"${HOME}"/.config \
		-v "${DOTS}"/scripts:"${HOME}"/.scripts \
		-v "${DOTS}"/bashrc:"${HOME}"/.bashrc \
		-v "${DOTS}"/profile:"${HOME}"/.profile \
		-v "${DOTS}"/bash_colors.sh:"${HOME}"/.bash_colors.sh \
		-v "${DOTS}"/nanorc:/etc/nanorc \
		-v "${RDOT}"/bash.d:"${ROOT}"/.bash.d \
		"${RDOT}"/scripts:"${ROOT}"/.scripts \
		"${RDOT}"/bashrc:"${ROOT}"/.bashrc \
		"${RDOT}"/profile:"${ROOT}"/.profile
		"$1" /bin/bash
}
