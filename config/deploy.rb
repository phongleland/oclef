require 'bundler/capistrano'
require 'capistrano/ext/multistage'
require 'rvm/capistrano'

set :stages, %w(production)
set :default_stage, 'production'

set :application, "oclef"
set :scm, :git
set :repository,  "git@github.com:phongleland/oclef.git"
set :branch, 'master'
set :deploy_via, :remote_cache

default_run_options[:pty] = true
set :ssh_options, {:forward_agent => true, :keys => %w(/Users/phongleland/.ssh/oclef)}
set :user, 'deployer'
set :use_sudo, false
set :domain, "ec2-52-1-141-202.compute-1.amazonaws.com"

set :deploy_to, "/var/www/#{application}"
