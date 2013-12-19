require 'spec_helper'

describe Book do
  let(:blanks) { ['', nil] }

  it { should have_valid(:title).when('a title') }
  it { should_not have_valid(:title).when(*blanks) }

  it { should have_valid(:author).when('Dr. Seuss') }
  it { should_not have_valid(:author).when(*blanks) }

  it { should have_valid(:rating).when(49) }
  it { should_not have_valid(:rating).when(101) }
  it { should have_valid(:rating).when(0) }
  it { should_not have_valid(:rating).when(-1) }
  it { should have_valid(:rating).when(*blanks) }
  it { should have_many(:categorizations) }

end
