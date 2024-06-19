class Profile < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_one_attached :avatar
  belongs_to :user
  has_many :collects
  has_many :followers, through: :collects, source: :user

  def address_info
    [["請選擇", nil], %w[台北市 台北市], %w[新北市 新北市], %w[桃園市 桃園市], %w[台中市 台中市], %w[台南市 台南市], %w[高雄市 高雄市], %w[新竹縣 新竹縣], %w[苗栗縣 苗栗縣], %w[彰化縣 彰化縣], %w[南投縣 南投縣], %w[雲林縣 雲林縣], %w[嘉義縣 嘉義縣], %w[屏東縣 屏東縣], %w[宜蘭縣 宜蘭縣], %w[花蓮縣 花蓮縣], %w[台東縣 澎湖縣], %w[金門縣 金門縣], %w[連江縣 連江縣], %w[基隆市 基隆市], %w[新竹市 新竹市], %w[嘉義市 嘉義市]]
  end
end
