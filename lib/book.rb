class Book
  attr_accessor :rank, :title, :overview, :url, :table
  @@all = []

  def initialize(rank:, title:, overview:, url:, table: nil)
    @rank = rank
    @title = title
    @overview = overview
    @url = url
    @table = table
    @@all << self
  end

  def self.all
    @@all
  end


end
