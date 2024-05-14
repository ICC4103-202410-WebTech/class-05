class Author < ApplicationRecord
    has_many :books
    accepts_nested_attributes_for :books

    validates :name, presence: true

    before_validation :normalize_name
    before_validation :remove_whitespaces

    private
        def normalize_name
            self.name = name.downcase.titleize
        end

        def remove_whitespaces
            self.name = name.strip
        end
end