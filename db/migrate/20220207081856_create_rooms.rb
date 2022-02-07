class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :name, null: false#ルーム名を保存するよ、ただし名無しは勘弁
      t.timestamps
    end
  end
end
