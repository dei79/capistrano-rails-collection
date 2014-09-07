namespace :rails do
  namespace :rake do
    namespace :db do
      desc 'Drops the database to an empty state'
      task :drop do
        on primary :db do
          within release_path do
            with rails_env: fetch(:stage) do
              execute :rake, 'db:drop'
            end
          end
        end
      end

      desc 'Resets the database to an empty state'
      task :reset do
        on primary :db do
          within release_path do
            with rails_env: fetch(:stage) do
              execute :rake, 'db:reset'
            end
          end
        end
      end

      desc <<-DESC
          Create the database, load the schema, and initialize with the seed data \
          (use db:reset to also drop the db first)
        DESC
      task :setup do
        on primary :db do
          within release_path do
            with rails_env: fetch(:stage) do
              execute :rake, 'db:setup'
            end
          end
        end
      end

      desc "Load the seed data from db/seeds.rb"
      task :seed do
        on primary :db do
          within release_path do
            with rails_env: fetch(:stage) do
              execute :rake, 'db:seed'
            end
          end
        end
      end

      desc "Migrate the database"
      task :rollback do
        on primary :db do
          within release_path do
            with rails_env: fetch(:stage) do
              execute :rake, 'db:migrate'
            end
          end
        end
      end

      desc "Rolls the schema back to the previous version"
      task :rollback do
        on primary :db do
          within release_path do
            with rails_env: fetch(:stage) do
              execute :rake, 'db:rollback'
            end
          end
        end
      end
    end
  end
end
