require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "Post"
  end

  test "should create/show/destroy Post" do
    visit posts_url
    click_on "New post"

    fill_in "Title", with: 'Post three'
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back to posts"

    click_on "Post three"

    click_on "Destroy this post", match: :first

    assert_text "Post was successfully destroyed"
  end
end
