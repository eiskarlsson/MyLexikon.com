require 'spec_helper'
describe "Static_pages" , :type => :controller do
  describe "Home_page"  do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
  end
end
