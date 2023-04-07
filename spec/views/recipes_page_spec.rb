require_relative '../rails_helper'

RSpec.describe 'Food page', type: :feature do
  before(:each) do
    DatabaseCleaner.clean_with(:truncation)
    @user = User.create(
      name: 'Benson',
      email: 'ben1@gmail.com',
      password: '123456'
    )
    visit user_session_path
    fill_in 'Email', with: @user.email.to_s
    fill_in 'Password', with: @user.password.to_s
    find("input[type='submit']").click

    @recipe1 = Recipe.new(name: 'Recipe1', preparation_time: '1 hr', cooking_time: '1.5 hrs',
                          description: 'This recipe is super easy and every one can do it')
    @recipe1.user_id = @user.id
    @recipe1.save
  end

  it 'shows the Remove action button' do
    visit recipes_path
    expect(page).to have_content('Remove')
  end

  it 'shows the the title text' do
    visit recipes_path
    expect(page).to have_content('RECIPE LIST')
  end

  it 'shows the Logo in the navbar' do
    expect(page).to have_content('Recipe App')
  end

  it 'shows the Foods in the navbar' do
    expect(page).to have_content('Food')
  end

  it 'shows the Recipes in the navbar' do
    expect(page).to have_content('Recipes')
  end

  it 'shows the Recipe name' do
    visit recipe_path(@recipe1)
    expect(page).to have_content(@recipe1.name.to_s)
  end

  it 'shows the recipe preparation time' do
    visit recipe_path(@recipe1)
    expect(page).to have_content(@recipe1.preparation_time.to_s)
  end

  it 'shows the recipe cooking time' do
    visit recipe_path(@recipe1)
    expect(page).to have_content(@recipe1.cooking_time.to_s)
  end
end
