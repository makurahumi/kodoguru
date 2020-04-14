class Cuisine < ActiveHash::Base
  self.data = [
    {id: 1, name: '和食'}, {id: 2, name: '寿司'}, {id: 3, name: 'そば・うどん'}, {id: 4, name: 'ラーメン'}, {id: 5, name: 'たこ焼き・お好み焼き'}, 
    {id: 6, name: '焼肉'}, {id: 7, name: 'カレー'}, {id: 8, name: '定食'}, {id: 9, name: '居酒屋'}, {id: 10, name: '洋食'},
    {id: 11, name: '中華料理'}, {id: 12, name: 'インド料理'}, {id: 13, name: 'タイ料理'}, {id: 14, name: 'ベトナム料理'}, {id: 15, name: '韓国料理'},
    {id: 16, name: 'イタリア料理'}, {id: 17, name: 'パスタ'}, {id: 18, name: 'ピザ'}, {id: 19, name: 'フランス料理'}, {id: 20, name: '弁当屋'},
    {id: 21, name: '惣菜'}, {id: 22, name: 'カフェ'}, {id: 23, name: 'スイーツ'}, {id: 24, name: '和菓子'}, {id: 25, name: 'ベーカリー'},
    {id: 26, name: 'その他'}
  ]
end