# == Schema Information
#
# Table name: adresses
#
#  id             :integer          not null, primary key
#  title          :string
#  description    :text
#  price          :integer
#  credit_card    :boolean
#  time_to_go     :string
#  category_id    :integer
#  latitude       :string
#  longitude      :string
#  subcategory_id :integer
#  price_detail   :string
#  distance       :integer
#
# Indexes
#
#  index_adresses_on_category_id  (category_id)
#

class Adresse < ActiveRecord::Base
	validates :title, presence: true
	belongs_to :category, optional: true
	belongs_to :subcategory, optional: true
	reverse_geocoded_by :latitude, :longitude
end
