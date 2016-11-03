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
#

class Adresse < ActiveRecord::Base
	validates :title, presence: true
end