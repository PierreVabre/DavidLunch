class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :new, :destroy, :update]
  def home
  end
end
