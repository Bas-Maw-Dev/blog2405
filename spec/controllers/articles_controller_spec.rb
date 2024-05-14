require "rails_helper"

RSpec.describe ArticlesController, type: :controller do
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    article = Article.create!(title: "Title", body: "Content")
    it "returns http success" do
      get :show, params: { id: 1 }
      expect(response).to have_http_status(:success)
    end
  end
end