class Material < ApplicationRecord

    validates :nome, presence: true
    validates  :nome, uniqueness: {message: ',já existe um material no sistema com esse nome!'}
    #validates_length_of :qtd, minimum: 1, message: 'não pode ser negativo!' # não funcionou para negativo
end
