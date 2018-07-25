require 'spec_helper'

set :backend, :docker

set_property name: 'handmade'

describe 'container' do
  before(:all) do
    @container = Docker::Container.get(property[:name])

    set :docker_container, @container.id
  end

  # check version
  describe 'Amazon Linux OS' do
    it { expect(os[:family]).to eq 'amazon' }
    it { expect(os[:release]).to eq '2018.03' }
  end

  describe package('aws-cli') do
    it { should be_installed }
  end
end
