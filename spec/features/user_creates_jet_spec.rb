require "rails_helper"

feature "User creates jet" do
    scenario "successfully" do
        visit root_path
        click_on 'List a new jet'

        expect(page).to have_css 'form'
    end
end