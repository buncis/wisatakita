class StaticPagesController < ApplicationController
  def home
    @reviews = Review.all
    @wisata = Wisatum.all
  end
end
