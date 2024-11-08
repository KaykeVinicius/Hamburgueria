class Menu < ApplicationRecord
    validates :Titulo, presence: true, length: { minimum: 5 }
    validates :Descricao, presence: true, length: { minimum: 10 }
    validates :Preco, presence: true, numericality: { greater_than: 0 }
end
