class Word < ApplicationRecord
	validates :title, presence: true, length: { minimum: 3 }
	validates :category, presence: true
end
