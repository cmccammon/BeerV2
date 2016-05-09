class Post < ActiveRecord::Base
  belongs_to :user
  validates :comment, presence: true 

  ratyrate_rateable 'beer'


  def beer
    if self.beer_id
      @beer ||= Brewery.beers.find(self.beer_id)
    end
  end
  paginates_per 10

end
