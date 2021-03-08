class Remote < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '可能(zoom)' },
    { id: 3, name: '可能(Skype)' },
    { id: 4, name: '可能(Microsoft Teams)' },
    { id: 5, name: 'リモート面談不可' }
  ]

  include ActiveHash::Associations
  has_many :articles
end
