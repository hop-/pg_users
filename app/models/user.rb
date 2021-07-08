class User < ApplicationRecord
    validates :email, :format => {:with => /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, :message => "Invalid email address"}
end
