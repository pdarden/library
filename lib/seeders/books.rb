module Seeders
  module Books
    class << self
      def seed

        books.each do |title, attributes|
          Book.find_or_create_by(title: title, author: attributes.first) do |book|
            book.title = title
            book.author = attributes.first
            book.rating = attributes.last
          end
        end
      end
      def books
        {
            "Lord of the Flies" => [
              "William Golding",
              68
          ],
            "The Lord of the Rings Trilogy" => [
              "J.R.R. Tolkien",
              89
          ]
        }
      end
    end
  end
end

