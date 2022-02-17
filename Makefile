server:
	python3 socket_app/server.py $(filter-out $@,$(MAKECMDGOALS))

client:
	python3 socket_app/client.py $(filter-out $@,$(MAKECMDGOALS))

dependencies: apt_get requirements

apt_get:
	apt-get update
	apt-get install portaudio19-dev python-all-dev python3-all-dev

requirements:
	python3.9 -m pip install -r requirements.txt
