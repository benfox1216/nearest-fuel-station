require 'rails_helper'

describe "As a user" do
  describe "when I click the button to find the nearest station" do
    scenario "I should see the closest station with required info" do
      visit '/'
      click_button("Find Nearest Station")
      
      expect(current_path).to eq("/search")
      
      
    end
  end
end
