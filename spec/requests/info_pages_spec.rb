require 'spec_helper'

describe "Info pages" do

  let(:base_title) { "Overheard in AA" }

  describe "Home page" do

    it "should have the title 'Home'" do
      visit home_path
      page.should have_selector('title', :text => "#{base_title} | Home")
    end

    describe "for signed-in users" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        FactoryGirl.create(:micropost, user: user, content: "Lorem ipsum")
        FactoryGirl.create(:micropost, user: user, content: "Dolor sit amet")
        sign_in user
        visit root_path
      end

      it "should render the user's feed" do
        user.feed.each do |item|
          page.should have_selector("li##{item.id}", text: item.content)
        end
      end

      describe "follower/following counts" do
        let(:other_user) { FactoryGirl.create(:user) }
        before do
          other_user.follow!(user)
          visit root_path
        end
      end
    end
  end
end