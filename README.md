# Discourse Allow Same Origin Plugin

This plugin sets Discourse's Rails server to add the `X-Frame-Options: ALLOWALL` HTTP header to all responses.

## How to install

There's already a template in the **app.yml** file for installing plugins due to the `docker_manager` plugin, so just add this plugin on the end!
```
hooks:
  after_code:
    - exec:
        cd: $home/plugins
        cmd:
          - mkdir -p plugins
          - git clone https://github.com/discourse/docker_manager.git
          - git clone https://github.com/discourse/discourse-spoiler-alert.git
          - git clone https://github.com/TheBunyip/discourse-allow-same-origin.git
```

Now you have to rebuild the container for the changes to be applied:
```
./launcher rebuild app
```

References:
 - https://meta.discourse.org/t/advanced-troubleshooting-with-docker/15927
 - https://meta.discourse.org/t/x-frame-options-sameorigin-header-prevents-embedding/14928/7
