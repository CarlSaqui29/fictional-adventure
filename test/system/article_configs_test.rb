require "application_system_test_case"

class ArticleConfigsTest < ApplicationSystemTestCase
  setup do
    @article_config = article_configs(:one)
  end

  test "visiting the index" do
    visit article_configs_url
    assert_selector "h1", text: "Article Configs"
  end

  test "creating a Article config" do
    visit article_configs_url
    click_on "New Article Config"

    fill_in "Description", with: @article_config.description
    fill_in "Title", with: @article_config.title
    click_on "Create Article config"

    assert_text "Article config was successfully created"
    click_on "Back"
  end

  test "updating a Article config" do
    visit article_configs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @article_config.description
    fill_in "Title", with: @article_config.title
    click_on "Update Article config"

    assert_text "Article config was successfully updated"
    click_on "Back"
  end

  test "destroying a Article config" do
    visit article_configs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Article config was successfully destroyed"
  end
end
