class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string:title	#タイトル
      t.string:body		#本文
      t.timestamps
    end
  end
end
