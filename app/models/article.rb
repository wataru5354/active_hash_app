class Article < ApplicationRecord
  # アクティブハッシュを用いてbelongs_toを設定するときは以下のコードを記述する
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre # アクティブハッシュを使用する際はモデルをコマンドで作らず、直接ファイルを作成する

  validates :title, :text, presence: true

  validates :genre_id, numericality: { other_than: 1 , message: "can't be blank"}

end
