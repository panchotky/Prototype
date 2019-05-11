class Disc < ApplicationRecord
	# NESTED_ALLOWED_PARAMS = [:id, :_destroy, :number]


     has_many :songs, dependent: :destroy
     belongs_to :item

	#親のフォームに子のフィールドを追加すると、一緒に子の新規登録ができる
     accepts_nested_attributes_for :songs, allow_destroy: true


end
