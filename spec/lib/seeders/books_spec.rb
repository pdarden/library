require 'spec_helper'

describe Seeders::Books do
  let(:seeder) { Seeders::Books }

  before(:each) do
    seeder.seed
  end

  it 'seeds books' do
    seeded_book = Seeders::Books.books.first[0]
    expect(Book.where(title: seeded_book)).to be_present
  end

  it 'seeds book title' do
    titles = Seeders::Books.books.keys
    expect(Book.find_by(title: titles[0])).to be_present
  end

  it 'does not create duplicates' do
    count_after_seed = Book.count
    seeder.seed
    expect(Book.count).to eql(count_after_seed)
  end
end
