class User < ActiveRecord::Base
    has_secure_password

    validates :name, presence: true
    validates :username, presence: true, uniqueness: true
    validates :password, length: {in: 8..16}


    has_many :courses
end