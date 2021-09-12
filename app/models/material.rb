class Material < ApplicationRecord

    validates :nome, presence: true, length: {maximum: 255}
    validates  :nome, uniqueness: {message: ',já existe um material no sistema com esse nome!'}
    validates_numericality_of :qtd, :only_integer => true, :greater_than_or_equal_to => 0
end
