class Article < ApplicationRecord
    has_many :remarks
    
    validates :title, presence: :true
    validates :comment, presence: true, length: { minimum: 5}
end
