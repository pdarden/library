require 'spec_helper'

describe Checkout do
  let(:blanks) { ['', nil] }

  it { should have_valid(:book_id).when(1) }
  it { should_not have_valid(:book_id).when(*blanks) }
  it { should_not have_valid(:book_id).when('an id') }

  it { should have_valid(:member_id).when(6) }
  it { should_not have_valid(:member_id).when(*blanks) }
  it { should_not have_valid(:member_id).when('an id') }

  it { should belong_to :book }

end
