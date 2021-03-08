class Pace < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '週１回以上' },
    { id: 3, name: '２週間に１回以上' },
    { id: 4, name: '月１回以上' },
    { id: 5, name: 'コンタクト不可' }
  ]
  
  include ActiveHash::Associations
  has_many :memos
end
