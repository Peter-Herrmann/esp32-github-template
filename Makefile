# Common Variables
APP_DIR     := app
DOCKER_RUN  := docker run --rm -v "$(APP_DIR_RAW):/project" -w /project -u $(UID) -e HOME=/tmp -it espressif/idf
IDF_CMD     := idf.py

# Targets
.PHONY: build config

build:
	cd app && docker run --rm -v "$$PWD:/project" -w /project -e HOME=/tmp espressif/idf idf.py build

config:
	cd app && docker run --rm -v "$$PWD:/project" -w /project -e HOME=/tmp espressif/idf idf.py menuconfig

clean:
	cd app && docker run --rm -v "$$PWD:/project" -w /project -e HOME=/tmp espressif/idf idf.py fullclean
