# frozen_string_literal: true

class Book
  attr_accessor :rank, :title, :overview, :url, :list
  @@all = []

  def initialize(rank:, title:, overview:, url:, list: nil)
    @rank = rank
    @title = title
    @overview = overview
    @url = url
    @list = list
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_rank(rank)
    all.find do |book|
      book.rank == rank.to_s
    end
  end

  def display_lists
    list.each do |list_item|
      puts list_item
    end
  end
end





