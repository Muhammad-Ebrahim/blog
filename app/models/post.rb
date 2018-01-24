class Post < ApplicationRecord
    extend FriendlyId
    friendly_id :slug, use: :slugged
    validates_presence_of :title, :content, :description, :slug
    acts_as_taggable
    acts_as_taggable_on
    validates_uniqueness_of :slug
end
