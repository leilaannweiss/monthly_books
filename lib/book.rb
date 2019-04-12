# frozen_string_literal: true

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

  def self.select_book_by_rank(rank)
    all.find do |book|
      book.rank == rank
    end
  end
end





