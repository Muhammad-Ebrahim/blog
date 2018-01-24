class Post < ApplicationRecord
    validates_presence_of :title, :content, :description
end
