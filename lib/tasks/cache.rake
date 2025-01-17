namespace :cache do
  desc "Clear Rails cache"
  task clear: :environment do
    Rails.cache.clear
    puts "Cache cleared successfully!"
  end
end
