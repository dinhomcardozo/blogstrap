class ArticlesController < ApplicationController
  def index # O método index pega todos os artigos do banco e os envia para a visão.
    @articles = Article.all # Uma variável artigos com @ agora é uma variável pública para a view e mostra TODOS os artigos
  end

  def show #Mostrar
    @article = Article.find(params[:id]) # Cria uma variável e puxa do Model Article e procura pelo ID no caso do artigo
  end

  def new #novo
    @article = Article.new # Cria um artigo vazio
  end

  def create #no momento da criação de um novo artigo
    @article = Article.new(article_params) # Cria um novo artigo com os parâmetros definidos

    if @article.save # Se salvar com sucesso
      redirect_to @article # Redireciona para o artigo recém-criado (no caso, a página show)
    else
      render :new # Se houver erro, renderiza a página de novo (mantém os dados preenchidos)
    end
  end

  def edit
    @article = Article.find(params[:id]) #sem precisar declarar, ele já puxa o conteúdo para editar
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params) # Se salvar com sucesso os parametros permitidos
      redirect_to @article # Redireciona para o artigo recém-criado (no caso, a página show)
    else
      render :edit # Se houver erro, renderiza a página de edição (mantém os dados preenchidos)
    end

  end

  private

  def article_params
    params.require(:article).permit(:title, :body) # Só permite os parâmetros title e body para garantir segurança
  end
end