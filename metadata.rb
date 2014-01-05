# encoding: utf-8
name             'ubuntu-base'
maintainer       'Darron Froese'
maintainer_email 'darron@froese.org'
license          'Apache 2.0'
description      'Installs/configures all base Ubuntu installs.'
version          '0.1.0'
recipe           'ubuntu-base::default', 'Installs/configures all base Ubuntu installs.'

depends 'apt'
