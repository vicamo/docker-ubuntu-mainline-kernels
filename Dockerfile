FROM scratch as base

RUN set -ex; \
	export DEBIAN_FRONTEND=noninteractive; \
	apt-get update --quiet; \
	apt-get install --yes --no-install-recommends \
		dkms \
		wget \
		;

BASE_IMAGE=base
FROM ${BASE_IMAGE}

RUN set -ex; \
	export DEBIAN_FRONTEND=noninteractive; \
	;
