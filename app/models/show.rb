class Show < ActiveRecord::Base
  def self.highest_rating
    maximum(:rating)
  end

  def self.most_popular_show
    Show.order(:rating).reverse[0]
  end

  def self.lowest_rating
    minimum(:rating)
  end

  def self.least_popular_show
    Show.order(:rating)[0]
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    Show.all.sort_by { |show| show[:name] }
  end
end
