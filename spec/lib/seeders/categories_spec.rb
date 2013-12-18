require 'spec_helper'

describe Seeders::Categories do
  let(:seeder) { Seeders::Categories }

  it 'seeds categories' do
    seeder.seed
    expect(Category.count).to_not eql(0)
  end

  it 'seeds category name' do
    name = Seeders::Categories.categories.first
    seeder.seed
    expect(Category.find_by(name: name)).to be_present
  end

  it 'does not create duplicates' do
    seeder.seed
    count_after_seed = Category.count
    seeder.seed
    expect(Category.count).to eql(count_after_seed)
  end
end

