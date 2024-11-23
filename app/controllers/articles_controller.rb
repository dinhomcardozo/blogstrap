class ArticlesController < ApplicationController
  def index
    @articles = Article.all #uma variavel artigos com @ agora é uma variavel publica para a view e mostra TODOS os artigos
  end

  def show # criado antes no routes config\routes.rb
    @article = Article.find(params[:id]) #cria uma variavel e puxa do Model Article e procura pelo ID no caso do artigo
  end
end