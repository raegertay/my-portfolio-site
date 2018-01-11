class PagesController < ApplicationController

  def home
    ViewCounter.create(name: 'home')
  end

  def contactme
    ViewCounter.create(name: 'contactme')
  end

end
