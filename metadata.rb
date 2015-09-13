# encoding: utf-8
name             'ubuntu_base'
maintainer       'Darron Froese'
maintainer_email 'darron@froese.org'
license          'Apache 2.0'
description      'Installs/configures all base Ubuntu installs.'
version          '0.14.0'
recipe           'ubuntu_base::default', 'Installs/configures all base Ubuntu installs.'

depends 'apt'
depends 'chef-sugar'
depends 'sysdig'
