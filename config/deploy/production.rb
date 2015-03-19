set :rails_env, 'development'
server 'ec2-52-1-141-202.compute-1.amazonaws.com', :app, :web, :db, :primary => true