# name: allowsameorigin
# about: allows Discourse site to be embedded in HTML iframe
# version: 1
# authors: Ben Miller

Rails.application.config.action_dispatch.default_headers.merge!({'X-Frame-Options' => 'ALLOWALL'})
