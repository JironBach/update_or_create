require 'update_or_create'

TestTable.update_or_create([
		{ id: 1, value: 'test' },
  	{ id: 2, value: 'ほげ' },
  	{ id: 3, value: 'ふが' },
])
