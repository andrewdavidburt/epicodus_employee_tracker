require("rspec")
require("pg")
require("sinatra/activerecord")
require("division")
require("employee")

RSpec.configure do |config|
  config.after(:each) do
    Employee.all().each() do |employee|
      employee.destroy()
    end
  end
    Division.all().each() do |division|
      division.destroy()
    end
  end
end
