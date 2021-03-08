class Way < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '通常訪問可能' },
    { id: 3, name: 'アポイント面談可能' },
    { id: 4, name: 'オンライン面談可能' },
    { id: 5, name: 'コンタクト不可' }
  ]

  include ActiveHash::Associations
  has_many :memos
end
