require 'rails_helper'

RSpec.describe Post, type: :model do

  context "Validacao de um Artigo" do
    it "Artigo valido?" do

      # instanciar um artigo
      post = Post.new

      # preenchendo os campos
      post.title = "Artigo1"
      post.description = "Primeiro artigo do blog"
      post.body = "Bem-vindo, fique a vontade para criar, atualizar, ler e deletar este artigo! lorem "
      post.author = "Rinaldi"

      # esperar que todos os campos sejam validados (presence of)
      expect(post.valid?).to be_truthy
      
    end

    context "Testando o submit" do
			it "Cadastrando artigo" do
				post = Post.all
				size_old = post.size
				visit '/posts/new'
	
				within("#form") do
					fill_in "Titulo", :with => :title
					fill_in "Assunto", :with => :description
					fill_in "Autor", :with => :author
					fill_in "Mensagem", :with => :body
				end
	
				click_button 'Enviar'
				expect(page).to have_content(:title)
				expect(page).to have_content(:description)
				expect(page).to have_content(:author)
				expect(page).to have_content(:body)
	
				post = Post.all
				expect(post.size).to eql(size_old + 1)
			end
		end
  end
end