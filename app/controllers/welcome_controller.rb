class WelcomeController < ApplicationController
  def index
  	@websites = [
    ["http://railsgirls.com", "Rails Girls"],
    ["https://en.wikibooks.org/wiki/Ruby_Programming", "Wikibooks"],
    ["http://guides.rubyonrails.org", "Ruby on Rails Guides"],
    ["http://wykop.pl", "Wykop.pl"],
    ["http://google.com", "Google.com"]
  ]

  
@entries = Entry.all
  end

end
