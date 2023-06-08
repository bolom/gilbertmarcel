namespace :deploy do
  namespace :prepare_db do
    desc 'Run db:migrate and monitor ActiveRecord::ConcurrentMigrationError errors'
    task call: :environment do
      Rake::Task['db:create'].invoke
      Rake::Task['db:migrate'].invoke
      Rake::Task['db:seed'].invoke
    end
  end
end