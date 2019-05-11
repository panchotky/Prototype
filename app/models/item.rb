class Item < ApplicationRecord
	# ALLOWED_PARAMS = [:name]

     has_many :discs, dependent: :destroy

     #親のフォームに子のフィールドを追加すると、一緒に子の新規登録ができる
     accepts_nested_attributes_for :discs, allow_destroy: true

end

