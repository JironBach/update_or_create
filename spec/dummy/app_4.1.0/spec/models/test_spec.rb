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
    	count_first = Test.all.length
			test = Test.first_or_create(first)
			count_last = Test.all.length

      expect(cont_last - count_first).to eq(first.length)
    end

    it '２回実行しても増えないこと' do
    	count_first = Test.all.length
			Test.first_or_create(first)
			Test.first_or_create(first)
			count_last = Test.all.length

      expect(cont_last - count_first).to eq(first.length)
    end

    it '２回目の更新が反映されること' do
    	count_first = Test.all.length
			Test.first_or_create(first)
			Test.first_or_create(second)
			count_last = Test.all.length

			second_value = Test.find(2).value

      expect(second_value).to eq('ホゲ')
      expect(cont_last - count_first).to eq(second.length - first.length)
    end

  end
end
