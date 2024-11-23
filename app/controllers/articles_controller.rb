class ArticlesController < ApplicationController
  def index
    @articles = Article.all #uma variavel artigos com @ agora é uma variavel publica para a view e mostra TODOS os artigos
  end
end