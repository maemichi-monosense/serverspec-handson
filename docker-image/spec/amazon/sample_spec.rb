require 'spec_helper'

describe 'image' do
  describe 'Amazon Linux' do
    it { expect(os[:family]).to eq 'amazon' }
    it { expect(os[:release]).to eq '2018.03' }
  end

  describe package('aws-cli') do
    it { should be_installed } 
  end
end
