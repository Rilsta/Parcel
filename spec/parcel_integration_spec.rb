
require('capybara/rspec')
require('./app')
require('launchy')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the parcel calculation path', {:type => :feature}) do
  it('calculates the cost of shipping a parcel') do
    visit('/')
    fill_in "length", :with => "2"
    fill_in "width", :with => "2"
    fill_in "height", :with => "2"
    fill_in "weight", :with => "2"
    fill_in "miles", :with => "10"
    click_button('Enter')
    expect(page).to have_content("20")
  end
end
