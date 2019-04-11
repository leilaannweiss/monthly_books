class Category
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  # def books
  #   Book.all.select do |book|
  #     book.category == self
  #   end
  # end
end

