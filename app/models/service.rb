class Service < ApplicationRecord
    extend FriendlyId
    friendly_id :slug, use: :slugged
    validates_presence_of :title, :content, :description, :slug
    validates_uniqueness_of :slug
end
