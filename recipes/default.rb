# encoding: utf-8
#
# Cookbook Name:: ubuntu_base
# Recipe:: default
#
# Copyright (C) 2014, Darron Froese <darron@froese.org>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

execute :fix_locale do
  command 'export LANGUAGE=en_US.UTF-8'
  command 'export LANG=en_US.UTF-8'
  command 'export LC_ALL=en_US.UTF-8'
  command 'locale-gen en_US.UTF-8'
  command 'dpkg-reconfigure locales'
end

execute 'apt-get-update' do
  command 'apt-get update'
end

package 'python-software-properties' do
  package_name node['software-properties']['package']
end

package 'curl'
package 'wget'
package 'screen'
package 'lynx-cur'
package 'ngrep'
package 'whois'
package 'traceroute'
package 'nmap'
package 'lsof'
package 'tmux'
package 'unzip'
package 'tree'
package 'dnsutils'
package 'xz-utils'
package 'bzip2'
package 'dnstracer'
package 'htop'
package 'git-core'
