class User < ApplicationRecord
    has_secure_password

    validates :login, presence: true
    #
    validates :password_digest, length: { minimum: 6}
end
