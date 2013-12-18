require 'spec_helper'

describe Seeders::Books do
  let(:seeder) { Seeders::Books }

  it 'seeds books' do
    seeded_book = Seeders::Books.books.first[0]
    seeder.seed
    expect(Book.where(title: seeded_book)).to be_present
  end

  it 'seeds book title' do
    seed = Seeders::Books.books.first
    title, author, rating = *seed.flatten

    seeder.seed
    seeded_author = Book.find_by(author: author)
    seeded_book = Book.find_by(title: title)
    expect(seeded_book.attributes).to include(seeded_author)
  end

  it 'does not create duplicates' do
    seeder.seed
    count_after_seed = Book.count
    seeder.seed
    expect(Book.count).to eql(count_after_seed)
  end
end
