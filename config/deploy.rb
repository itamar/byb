require "rvm/capistrano"
require 'bundler/capistrano'

set :user, 'ubuntu'
set :application, "byb"

# server details
set :deploy_to, "/home/#{user}/#{application}"
set :deploy_via, :remote_cache
set :use_sudo, false
# set :rvm_type, :system
ssh_options[:forward_agent] = true
default_run_options[:pty] = true

# repo details
set :scm, :git
set :repository,  "git@github.com:itamaryu/byb.git"
set :branch, "master"
set :git_enable_submodules, 1

set :domain, "54.235.6.136"
role :web, domain # Your HTTP server, Apache/etc
role :app, domain # This may be the same as your `Web` server
role :db, domain, :primary => true # This is where Rails migrations will run

# after "deploy:update_code", "customs:config"
# after "deploy:create_symlink","customs:symlink"
# after "deploy", "deploy:cleanup"

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

# namespace :deploy do
#   task :start do
#     ;
#   end
#   task :stop do
#     ;
#   end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path, 'tmp', 'restart.txt')}"
#   end
#   task :reseed do
#     run <<-CMD.compact
#         cd #{current_release} &&
#         #{rake} RAILS_ENV=production db:migrate:reset &&
#         #{rake} RAILS_ENV=production db:seed
#     CMD
#   end
# end

# namespace(:customs) do
#   task :config, :roles => :app do
#     run "ln -nfs #{shared_path}/system/database.yml #{release_path}/config/database.yml"
#     run "ln -nfs #{shared_path}/system/config.yml #{release_path}/config/config.yml"
#     run "mkdir -p #{shared_path}/log/transactions_logs" # create transactions_logs directory if not exist
#   end
#   task :symlink, :roles => :app do
#     run "rm -fr #{release_path}/public/spree"
#     run "ln -nfs #{shared_path}/spree #{release_path}/public/spree"
#     run "ln -nfs #{shared_path}/uploads #{release_path}/lib"
#   end
# end

# desc "tail production log files" 
# task :tail_logs, :roles => :app do
#   run "tail -f #{shared_path}/log/production.log" do |channel, stream, data|
#     puts  # for an extra line break before the host name
#     puts "#{channel[:host]}: #{data}" 
#     break if stream == :err    
#   end
# end

# ##
# # Rake helper task.
# # http://pastie.org/255489
# # http://geminstallthat.wordpress.com/2008/01/27/rake-tasks-through-capistrano/
# # http://ananelson.com/said/on/2007/12/30/remote-rake-tasks-with-capistrano/
# def run_remote_rake(rake_cmd)
#   rake_args = ENV['RAKE_ARGS'].to_s.split(',')
#   cmd = "cd #{fetch(:latest_release)} && #{fetch(:rake, "rake")} RAILS_ENV=#{fetch(:rails_env, "production")} #{rake_cmd}"
#   cmd += "['#{rake_args.join("','")}']" unless rake_args.empty?
#   run cmd
#   set :rakefile, nil if exists?(:rakefile)
# end
