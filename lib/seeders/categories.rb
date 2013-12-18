module Seeders
  module Categories
    class << self
      def seed
        categories.each do |name|
          Category.find_or_create_by(name: name) do |category|
            category.name = name
          end
        end
      end
      def categories
        [
          "Children",
          "Fiction",
          "Non-Fiction",
          "Science-Fiction"
        ]
      end
    end
  end
end
