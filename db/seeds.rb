# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

BASE_URL = 'https://www.googleapis.com/books/v1/volumes?q=book'

Example.api_call

response = RestClient.get('https://www.googleapis.com/books/v1/volumes?q=kmettt')
books_array = JSON.parse(response)

books_array.each do |book|
    input = Book.create(title: book["totalItems"])
    binding.pry
end
