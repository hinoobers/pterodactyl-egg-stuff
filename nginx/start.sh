if [[ {{AUTO_UPDATE}} == "1" ]]; then rm -rf webroot/; git clone https://{{USERNAME}}:{{ACCESS_TOKEN}}@github.com/{{USERNAME}}/{{GIT_ADDRESS}}.git webroot/; fi; {{STARTUP_CMD}};

if [[ ! -z ${COMPOSER_MODULES} ]]; then composer require ${COMPOSER_MODULES} --working-dir=/home/container/webroot; fi;
