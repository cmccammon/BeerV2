class Post < ActiveRecord::Base
  belongs_to :user

  ratyrate_rateable 'beer'


  def beer
    if self.beer_id
      @beer ||= Brewery.beers.find(self.beer_id)
    end
  end

end
