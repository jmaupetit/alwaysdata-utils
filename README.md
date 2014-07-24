alwaysdata-utils
================

Scripts to install nodejs and bower on alwaysdata servers

## Install Nodejs + bower

    $ wget -qO- https://raw.github.com/jmaupetit/alwaysdata-utils/master/ad_node_install.sh | bash

At this time github ssl certificate is no longer a wildcard certificate and you may not be able to connect to `raw.github.com`. Once advised of the risks you may encounter, bypass this checking by adding the `--no-check-certificate` to your command:

    $ wget --no-check-certificate -qO- https://raw.github.com/jmaupetit/alwaysdata-utils/master/ad_node_install.sh | bash
