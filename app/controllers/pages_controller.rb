class PagesController < ApplicationController
  def about
    @title = 'About'
    @content = 'This is stuff about us.'
  end
end
