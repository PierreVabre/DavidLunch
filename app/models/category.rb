# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  parent      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  parent_id   :integer
#  gif         :string
#
# Indexes
#
#  index_categories_on_parent     (parent)
#  index_categories_on_parent_id  (parent_id)
#

class Category < ApplicationRecord
	
	has_many :adresses
	has_many :subcategories
	
	#belongs_to :parent_id, class_name: "Category"
	#belongs_to :parent, :class_name => "Category"
	#has_many :category, :foreign_key => "parent_id"

end
