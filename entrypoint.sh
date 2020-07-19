#!/bin/bash

GITEA_VERSION=$1
GITEA_URL=https://github.com/go-gitea/gitea/archive/v${GITEA_VERSION}.tar.gz

if wget -q --no-check-certificate --method=HEAD $GITEA_URL
then
    echo -n "Download package... "
    wget --no-check-certificate -qO /tmp/gitea.tar.gz $GITEA_URL
    echo "OK"

    mkdir /tmp/gitea

    pushd /tmp/gitea
        tar -xzf /tmp/gitea.tar.gz -C . --strip-components=1

        make frontend

        if [ ! -d /assets ]
        then
            mkdir /assets
        fi

        rm -rf /assets/*

        mv public/* /assets
    popd

    exit 0
fi

echo "No package found for Gitea v${GITEA_VERSION}"

exit 1

