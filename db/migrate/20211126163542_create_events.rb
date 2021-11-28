class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.text :description
      t.string :location
      t.timestamp :starttime, null: false
      t.timestamp :endtime
      t.string :organizermail, null: false
      t.string :organizertelegram
      t.string :link

      t.timestamps
    end
  end
end
