require 'spec_helper'

describe "Static pages" do
  subject { page }

  shared_examples_for "all static pages" do
    it { should have_title(title)}
    it { should have_selector("h1", text: content)}
  end
  describe "Contact" do
    before { visit contact_path }
    let (:title) {"Contact"}
    let (:content) {"Contact"}
    it_should_behave_like "all static pages"
    it { should_not have_title('| Home')}
  end

  describe "Home page" do
    before { visit root_path }
    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit help_path }
    it { should have_content("Help") }
    it { should have_title(full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }
    it { should have_content('about') }
    it { should have_title(full_title('About')) }
  end
end
