require 'spec_helper'

set :backend, :docker

describe "container" do
  before(:all) do
    @container = Docker::Container.get('handmade')
    # ensure container is running
    @container.top # FIXME: abort

    set :docker_container, @container.id
  end

  # check version
  describe 'Amazon Linux OS' do
    it { expect(os[:family]).to eq 'amazon' }
    it { expect(os[:release]).to eq '2018.03' }
  end
end
