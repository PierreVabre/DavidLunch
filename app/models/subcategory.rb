# == Schema Information
#
# Table name: subcategories
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category    :integer
#  gif         :string
#
# Indexes
#
#  index_subcategories_on_category  (category)
#

class Subcategory < ApplicationRecord

	belongs_to :category, optional: true
	has_many :adresses, class_name: 'Adresse'

	#has_many :subcategory
	#belongs_to :parent_id, class_name: "Category"

	#belongs_to :parent, :class_name => "Category"
	#has_many :category, :foreign_key => "parent_id"

end
