class Movie < ActiveRecord::Base

    has_many :roles
    has_many :actors, through: :roles

    def self.genres
      self.all.map do |movie|
        movie.genre  
      end.uniq
    end
end
