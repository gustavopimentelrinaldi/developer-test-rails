class Post < ApplicationRecord
	# validando campos
	validates :title, :description, :body, :author, :presence => true
	validates :title, :description, :author, :length => {:maximum => 60 }
end