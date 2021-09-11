class Material < ApplicationRecord

    validates :nome, presence: true
    validates  :nome, uniqueness: {message: ',já existe um material no sistema com esse nome!'}
end
