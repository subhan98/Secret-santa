feature "Add a user" do
  scenario "User can add a user to the page " do
    visit("/")
    #click_link("button")

    fill_in("Name", with: "subhan")
    fill_in("Email", with: "subhan@hotmail.com")
    click_button("Submit")
    #expect(page).to have_content("David")
  end
end
