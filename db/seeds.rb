# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Should you load a csv?
books = [
  {
    title: 'Galapagos',
    author: 'Kurt Vonnegut',
    rating: '4.5'
  },
  {
    title: 'Douglas Adams',
    author: "The Hitchhiker's Guide to the Galaxy",
    rating: '4'
  },
  {
    title: 'Glamorama',
    author: 'Bret Easton Ellis',
    rating: '1.5'
  }
]

#use attributes for rails 4

books.each do |attributes|
  book = Book.where({
    title: attributes[:title],
    author: attributes[:author],
    rating: attributes[:rating]
    }).first

  if book.nil?
    book = Book.new(attributes)
  else
    book.attributes = attributes
  end

  book.save!
end

categorys = [
  {
    category: 'fiction',
  },
  {
    category: 'sci-fi',
  },
  {
    category: 'horror',
  }
]

categorys.each do |attributes|
  category = Category.where({
    category: attributes[:category],
    }).first

  if category.nil?
    category = Category.new(attributes)
  else
    category.attributes = attributes
  end

  category.save!
end