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
    it 'runs apt get update' do
      expect(chef_run).to update_apt_update 'update_sources'
    end
    it 'should install python'do
      expect(chef_run).to install_package "python"
    end
    it 'should install python-pip'do
      expect(chef_run).to install_package "python-pip"
    end
    it 'should install plugins'do
      expect(chef_run).to run_execute 'pip install Flask==0.10.1'
    end
    it 'should install python plugin Jinja2==2.7.3'do
      expect(chef_run).to run_execute 'pip install Jinja2==2.7.3'
    end
    it 'should install python plugin MarkupSafe==0.23'do
      expect(chef_run).to run_execute 'pip install MarkupSafe==0.23'
    end
    it 'should install python plugin Werkzeug==0.9.6'do
      expect(chef_run).to run_execute 'pip install Werkzeug==0.9.6'
    end
    it 'should install python plugin gnureadline==6.3.3'do
      expect(chef_run).to run_execute 'pip install gnureadline==6.3.3'
    end
    it 'should install python plugin itsdangerous==0.24'do
      expect(chef_run).to run_execute 'pip install itsdangerous==0.24'
    end
    it 'should install python plugin rauth==0.7.0'do
      expect(chef_run).to run_execute 'pip install rauth==0.7.0'
    end
    it 'should install python plugin requests==2.3.0'do
      expect(chef_run).to run_execute 'pip install requests==2.3.0'
    end
    it 'should install python plugin wsgiref==0.1.2'do
      expect(chef_run).to run_execute 'pip install wsgiref==0.1.2'
    end
    it 'should install python plugin gunicorn==18.0'do
      expect(chef_run).to run_execute 'pip install gunicorn==18.0'
    end
    it 'should install python plugin Flask-SSLify==0.1.4'do
      expect(chef_run).to run_execute 'pip install Flask-SSLify==0.1.4'
    end
end
