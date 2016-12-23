# == Schema Information
#
# Table name: usecases
#
#  id          :integer          not null, primary key
#  title       :string
#  gif         :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  secondTitle :string
#

class Usecase < ApplicationRecord
	has_and_belongs_to_many :adresses, class_name: 'Adresse'
end
