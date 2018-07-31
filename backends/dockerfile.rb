require 'specinfra'
require 'specinfra/helper/set'

include Specinfra::Helper::Set

set :backend, :dockerfile
set :os, family: 'amazon'

Specinfra.backend.from('amazonlinux:1')
Specinfra::Runner.install_package('aws-cli')
