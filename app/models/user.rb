class User < ApplicationRecord
    validates :email, :format => {:with => /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, :message => "Invalid email address"}
    validates :first_name, presence: true
    validates :last_name, presence: true
end
