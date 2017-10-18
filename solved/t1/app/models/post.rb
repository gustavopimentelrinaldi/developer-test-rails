class Post < ApplicationRecord
    validates :title, :description, :body, :author, :presence => true
end
