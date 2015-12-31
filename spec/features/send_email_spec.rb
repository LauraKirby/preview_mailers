require 'rails_helper'

feature 'visiting the email page' do

  before(:each) do
    visit "/users"
  end

  scenario 'fill out and submit new email form' do
    fill_in "Name", with: "Alex"
    fill_in "Email", with: "alex@example.com"

    click_on "Email Me"

    expect(page).to have_content "Email sent to Alex"
  end
end