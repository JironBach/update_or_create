require 'spec_helper'

describe '#name' do
	first = [
		{ id: 1, value: 'test' },
  	{ id: 2, value: 'ほげ' },
  	{ id: 3, value: 'ふが' },
	]
	second = [
		{ id: 1, value: 'test' },
  	{ id: 2, value: 'ホゲ' },
  	{ id: 3, value: 'ふが' },
  	{ id: 4, value: 'JironBach' },
	]

  context 'update_or_create' do
    it 'テストデータが正常に追加されること' do
    	count_first = TestTable.all.length
			TestTable.update_or_create(first)
			count_last = TestTable.all.length

      expect(count_last - count_first).to eq(first.length)
    end

    it '２回実行しても増えないこと' do
    	count_first = TestTable.all.length
			TestTable.update_or_create(first)
			TestTable.update_or_create(first)
			count_last = TestTable.all.length

      expect(count_last - count_first).to eq(first.length)
    end

    it '２回目の更新で件数が増えること' do
			TestTable.update_or_create(first)
    	count_first = TestTable.all.length
			TestTable.update_or_create(second)
			count_last = TestTable.all.length
			second_value = TestTable.find(2).value

      expect(count_last - count_first).to eq(second.length - first.length)
    end

    it 'first_or_createでは変わらないことを確認' do
    	count_first = TestTable.all.length
			TestTable.update_or_create(first)
			TestTable.first_or_create(second)
			count_last = TestTable.all.length
			second_value = TestTable.find(2).value

      expect(second_value).to eq('ほげ')
    end

    it '２回目の更新が反映されること' do
    	count_first = TestTable.all.length
			TestTable.update_or_create(first)
			TestTable.update_or_create(second)
			count_last = TestTable.all.length
			second_value = TestTable.find(2).value

      expect(second_value).to eq('ホゲ')
    end

  end
end
