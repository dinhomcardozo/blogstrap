class CreateArticles < ActiveRecord::Migration[8.0]
  def change
    create_table :articles do |t| #cria tabela artigos com uma variavel t
      t.string :title
      t.text :body

      t.timestamps #created at e updated at
    end
  end
end
