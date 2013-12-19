require 'spec_helper'

describe Category do
  let(:blanks) { ['', nil] }

  it { should have_valid(:name).when('a name') }
  it { should_not have_valid(:name).when(*blanks) }
  it { should validate_uniqueness_of(:name) }
  it { should have_many(:books).through(:categorizations) }

end
