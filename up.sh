docker-compose \
    -f ./docker-compose.yml \
    -f ./waterbutler/docker-compose.yml \
    up -d \
    elasticsearch \
    postgres \
    mongo \
    rabbitmq \
    assets \
    admin_assets \
    wb \
    fakecas \
    sharejs \
    worker \
    web \
    ember_osf_web \
    api \
    admin \
    preprints \
    registries \
    mfr \
    unoconv
