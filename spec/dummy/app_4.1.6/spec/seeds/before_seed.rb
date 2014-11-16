require 'spec_helper'

describe 'seed' do

  before(:each) do
    TestTable.all.each do |test|
      test.destroy
    end
  end

  context 'do nothing' do
    it '件数が０件であること' do
			count = TestTable.all.length
      expect(count).to eq(0)
    end

  end
end
