require "rails_helper"

feature "User creates jet" do
    scenario "successfully" do
        login_as nil
        visit root_path
        click_on 'List a new jet'

    
        expect(page).to have_css 'form'
    end
end