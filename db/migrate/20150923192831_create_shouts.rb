class CreateShouts < ActiveRecord::Migration
  def change
    create_table :shouts do |t|
      t.string :message, limit: 160
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
