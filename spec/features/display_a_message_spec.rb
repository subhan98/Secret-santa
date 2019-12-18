feature "Display a message" do
  scenario "Display a message on the webpage" do
    visit("/")
    expect(page).to have_content "Welcome to Secret Santa!"
  end
end
