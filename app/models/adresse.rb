# == Schema Information
#
# Table name: adresses
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  price       :integer
#  credit_card :boolean
#  time_to_go  :string
#  category_id :integer
#  latitude    :string
#  longitude   :string
#
# Indexes
#
#  index_adresses_on_category_id  (category_id)
#

class Adresse < ActiveRecord::Base
	validates :title, presence: true
	belongs_to :category
	belongs_to :subcategory
end
