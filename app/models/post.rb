class Post < ActiveRecord::Base
  belongs_to :user

  ratyrate_rateable 'beer'

end
