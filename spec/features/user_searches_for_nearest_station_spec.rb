require 'rails_helper'

describe "As a user" do
  describe "when I click the button to find the nearest station" do
    scenario "I should see the closest station with required info" do
      visit '/'
      click_button("Find Nearest Station")
      
      expect(current_path).to eq("/search")
      
      expect(page).to have_content("Nearest Station: Seventeenth Street Plaza")
      expect(page).to have_content("Address: 1225 17th St. Denver CO")
      expect(page).to have_content("Fuel Type: ELEC")
      expect(page).to have_content("Access Times: MO: Not Specified; TU: Not Specified; WE: Not Specified; TH: Not Specified; FR: Not Specified; SA: Not Specified; SU: Not Specified")
    end
  end
end
