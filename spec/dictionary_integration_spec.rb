require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the dictionary app path', {:type => :feature}) do
  it('processes the users word and allows them to add definitions') do
    visit('/')
    visit('/form')
    fill_in('word', :with => "apple")
    click_button('Submit')
    visit('/allwords')
    expect(page).to have_content("apple")
  end
end
