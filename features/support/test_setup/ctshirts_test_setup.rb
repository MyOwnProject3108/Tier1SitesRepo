module Ctshirts
  class TestConfig
    def setup(config)
      puts "Started"
      visit_page(Smartmanager::LoginPage).login
    end
    
    def teardown
      puts "Teardown"
    end
  end
end
  