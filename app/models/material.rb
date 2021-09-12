class Material < ApplicationRecord

    validates :nome, presence: true, length: {maximum: 255}
    validates  :nome, uniqueness: {message: ',já existe um material no sistema com esse nome!'}
    #validates :qtd, length: {minimum: 0, message: 'não pode ser negativo!'} # não funcionou para negativo
end
