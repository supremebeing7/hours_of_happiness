class PagesController < ApplicationController

  def home
    @establishments = Establishment.all
  end
end
