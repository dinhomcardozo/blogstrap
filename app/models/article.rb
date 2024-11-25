class Article < ApplicationRecord
    validates :title, presence: true, length: { minimum: 5 }   #para validar que nada está em branco(vazio) que é obrigatório e com minimo 5 caracteres
    validates :body, presence: true, length: { minimum: 10 }
end