require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe "Testar CRUD e layout" do
    it "renderizando layout posts index(root_path)" do
			get :index
			get :new
			# esperar que a index renderize layout posts
			expect(response).to render_template("posts")
		end
  end
end