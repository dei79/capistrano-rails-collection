namespace :rails do
  namespace :rake do
    namespace :log do
      desc 'Truncates all *.log files in log/ to zero bytes'
      task :clear do
        on primary :db do
          within release_path do
            with rails_env: fetch(:stage) do
              execute :rake, 'log:clear'
            end
          end
        end
      end
    end

    namespace :tmp do
      desc 'Clear session, cache, and socket files from tmp/'
      task :clear do
        on primary :db do
          within release_path do
            with rails_env: fetch(:stage) do
              execute :rake, 'tmp:clear'
            end
          end
        end
      end
    end
  end
end
