require "test_helper"

class ArticleConfigsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article_config = article_configs(:one)
  end

  test "should get index" do
    get article_configs_url
    assert_response :success
  end

  test "should get new" do
    get new_article_config_url
    assert_response :success
  end

  test "should create article_config" do
    assert_difference('ArticleConfig.count') do
      post article_configs_url, params: { article_config: { description: @article_config.description, title: @article_config.title } }
    end

    assert_redirected_to article_config_url(ArticleConfig.last)
  end

  test "should show article_config" do
    get article_config_url(@article_config)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_config_url(@article_config)
    assert_response :success
  end

  test "should update article_config" do
    patch article_config_url(@article_config), params: { article_config: { description: @article_config.description, title: @article_config.title } }
    assert_redirected_to article_config_url(@article_config)
  end

  test "should destroy article_config" do
    assert_difference('ArticleConfig.count', -1) do
      delete article_config_url(@article_config)
    end

    assert_redirected_to article_configs_url
  end
end
