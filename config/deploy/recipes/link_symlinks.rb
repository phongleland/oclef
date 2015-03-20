after 'deploy:finalize_update', 'deploy:link_symlinks'

namespace :deploy do
  desc 'relink the symlinks from the shared folder root to a release folder root destination'
  task :link_symlinks, roles: :app do
    linked_items.map do |li|
      source = destination = li
      if li.is_a? Array
        source, destination = li
      end
      run "ln -nfs #{shared_path}/#{source} #{latest_release}/#{destination}"
    end
  end

end