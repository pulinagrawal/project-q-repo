# == Schema Information
#
# Table name: categories
#
#  id            :integer          not null, primary key
#  category_name :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Category < ActiveRecord::Base
    has_many :questions

    validates :category_name, presence:  true, length: { maximum: 30 }

    def self.search(search)
        if search
            self.where("category_name like ?", "%#{search}%")
        else
            self.all
        end
    end
end
