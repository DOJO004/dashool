class Profile < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_one_attached :avatar
  belongs_to :user

  def address_info
    address = [["請選擇",nil],["台北市", "台北市"], ["新北市", "新北市"], ["桃園市","桃園市"],["台中市","台中市"],["台南市","台南市"],["高雄市", "高雄市"],["新竹縣","新竹縣"],["苗栗縣","苗栗縣"],["彰化縣","彰化縣"],["南投縣","南投縣"],["雲林縣","雲林縣"],["嘉義縣","嘉義縣"],["屏東縣","屏東縣"],["宜蘭縣","宜蘭縣"],["花蓮縣","花蓮縣"],["台東縣","澎湖縣"],["金門縣","金門縣"],["連江縣","連江縣"],["基隆市","基隆市"],["新竹市","新竹市"],["嘉義市","嘉義市"]]
    address
  end
end
