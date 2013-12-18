require 'spec_helper'

describe Book do
  let(:blanks) { ['', nil] }

  it { should have_valid(:title).when('a title') }
  it { should_not have_valid(:title).when(*blanks) }

end
