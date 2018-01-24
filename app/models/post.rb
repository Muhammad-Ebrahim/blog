class Post < ApplicationRecord
    extend FriendlyId
    friendly_id :slug, use: :slugged
    validates_presence_of :title, :content, :description, :slug
end
