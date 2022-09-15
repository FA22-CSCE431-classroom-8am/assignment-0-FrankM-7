# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book with title', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in 'Title', with: 'harry potter'
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('harry potter')
    end
end

RSpec.describe 'Creating a book with author', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in 'Author', with: 'JK Rowling'
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('JK Rowling')
    end
end

RSpec.describe 'Creating a book with price', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in 'Price', with: '10.0'
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('10.0')
    end
end

RSpec.describe 'Creating a book with title', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in 'Title', with: 'harry potter'
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('harry potter')
    end
end