server:
	python3 socket_app/server.py $(filter-out $@,$(MAKECMDGOALS))

client:
	python3 socket_app/client.py $(filter-out $@,$(MAKECMDGOALS))

apt_get:
	apt-get update
	apt-get install -y portaudio19-dev python-all-dev python3-all-dev

install: apt_get
	python3.9 -m pip wheel --wheel-dir ./dist .
	python3.9 -m pip install . --prefer-binary --force-reinstall --find-links ./dist
