# tells rails to include factorybot when rspec is run
RSpec.configure do |config|
    config.include FactoryBot::Syntax::Methods
end