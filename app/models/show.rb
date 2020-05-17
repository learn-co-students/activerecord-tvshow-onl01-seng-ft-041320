class Show < ActiveRecord::Base

    def self.highest_rating
      highest_rated_show = Show.order(rating: :desc).first
      highest_rated_show.rating
    end

    def self.most_popular_show
      Show.order(rating: :desc).first
    end

    def self.lowest_rating
      lowest_rated_show = Show.order(rating: :asc).first
      lowest_rated_show.rating
    end

    def self.least_popular_show
      Show.order(rating: :asc).first
    end

    def self.ratings_sum
      Show.sum(:rating)
    end
    
    def self.popular_shows
      Show.where("rating > 5")
    end

    def self.shows_by_alphabetical_order
      Show.order(:name)
    end
end