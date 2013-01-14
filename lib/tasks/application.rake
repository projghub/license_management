namespace :db do
  desc "Drop, create, migrate, seed, prepare test"
  task :reload => [
    'environment',
    'db:drop',
    'db:create',
    'db:migrate',
    'db:seed',
    'db:test:prepare'
  ]
end
