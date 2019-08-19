#
# Cookbook:: Python
# Spec:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'Python::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '18.04'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
    it 'should install python'do
      expect(chef_run).to install_package "python"
    end
    it 'should enable python'do
      expect(chef_run).to enable_service "python"
    end
    it 'should be start python'do
      expect(chef_run).to start_service "python"
    end



end
