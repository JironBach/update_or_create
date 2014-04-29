require 'spec_helper'

describe 'seed' do

  before(:each) do
    TestTable.all.each do |test|
      test.destroy
    end
  end

  after(:all) do
    TestTable.all.each do |test|
      test.destroy
    end
  end

  context 'do nothing' do
    it 'rake db:seed:ext RAILS_ENV=testで件数が３件になること' do
      `rake db:seed:ext RAILS_ENV=test`
			count = TestTable.all.length
      expect(count).to eq(3)
    end

  end
end
