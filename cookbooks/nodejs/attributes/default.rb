#
# Cookbook Name:: nodejs
# Attributes:: nodejs
#
# Copyright 2010-2012, Promet Solutions
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

default['nodejs']['install_method'] = 'source'
default['nodejs']['version'] = '0.6.11'
default['nodejs']['checksum'] = '94bbdb2d62645fd2ad5b96e41cfec68abf004fd03fabaaf7d71c48b39013cbd1'
default['nodejs']['dir'] = '/usr/local'
default['nodejs']['npm'] = '1.1.2'

nodejs_tar_path = "node-v#{node['nodejs']['version']}.tar.gz"
if node['nodejs']['version'].split('.')[1].to_i >= 5
  nodejs_tar_path = "v#{node['nodejs']['version']}/#{nodejs_tar_path}"
end

default['nodejs']['src_url'] = "http://nodejs.org/dist/#{nodejs_tar_path}"
default['nodejs']['npm_src_url'] = "http://registry.npmjs.org/npm/-/npm-#{node['nodejs']['npm']}.tgz"
