require 'spec_helper'

describe Categorization do
  let(:blanks) { ['', nil] }

  it { should have_valid(:book_id).when(1) }
  it { should_not have_valid(:book_id).when(*blanks) }
  it { should_not have_valid(:book_id).when('an id') }

  it { should have_valid(:category_id).when(6) }
  it { should_not have_valid(:category_id).when(*blanks) }
  it { should_not have_valid(:category_id).when('an id') }

  it { should belong_to :book }
  it { should belong_to :category }

end
