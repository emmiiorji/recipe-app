require_relative '../rails_helper'

RSpec.describe 'home page', type: :feature do
  before(:each) do
    DatabaseCleaner.clean_with(:truncation)
    @user = User.create(
      name: 'Benson'
    )
    visit root_path
  end

  it 'shows the Logo in the navbar' do
    expect(page).to have_content('Recipe App')
  end

  it 'shows the Sign up button in the navbar' do
    expect(page).to have_content('Sign Up')
  end

  it 'shows the Login' do
    expect(page).to have_content('LogIn')
  end
end
