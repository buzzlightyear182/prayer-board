class CreatePrayers < ActiveRecord::Migration
  def up
    create_table :prayers do |t|
      t.text :body
      t.belongs_to :user, index: true
      t.boolean :answered, default: false
      t.timestamps
    end
  end

  def down
    drop_table :prayers
  end
end
