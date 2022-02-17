ifeq (run,$(firstword $(MAKECMDGOALS)))
  RUN_ARGS := $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))
  $(eval $(RUN_ARGS):;@:)
endif

server:
	python3 socket_app/server.py ${RUN_ARGS}

client:
	python3 socket_app/client.py ${RUN_ARGS}

dependencies: apt_get requirements

apt_get:
	apt-get update
	apt-get install portaudio19-dev python-all-dev python3-all-dev

requirements:
	python3.9 -m pip install -r requirements.txt
