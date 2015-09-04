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

include_recipe 'chef-sugar::default'

bash 'update_ulimit' do
  user 'root'
  cwd '/tmp'
  code <<-EOH
    echo '* hard nofile #{node['ulimit']}' >> /etc/security/limits.conf
    echo '* soft nofile #{node['ulimit']}' >> /etc/security/limits.conf
    sysctl -w fs.file-max=#{node['ulimit']}
    sysctl -p
  EOH
end

bash 'fix_locale' do
  user 'root'
  cwd '/tmp'
  code <<-EOH
    export LANGUAGE=en_US.UTF-8
    export LANG=en_US.UTF-8
    export LC_ALL=en_US.UTF-8
    locale-gen en_US.UTF-8
    dpkg-reconfigure locales
    touch /root/.locale-fixed
  EOH
  not_if { File.exist?('/root/.locale-fixed') }
  not_if { vagrant? }
end

execute 'apt-get-update' do
  command 'apt-get update'
end

execute 'install https transport' do
  command 'apt-get install -y apt-transport-https'
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
package 'iotop'
package 'git-core'
package 'goaccess'
package 'mailutils'
package 'vim'
package 'zsh'
package 'glances'

package 'ntp'

service 'ntp' do
  supports status: true, restart: true
  action [:enable, :start]
end

include_recipe 'sysdig::default' unless linode?
