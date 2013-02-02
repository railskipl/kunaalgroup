class CreateLatestinformations < ActiveRecord::Migration
  def change
    create_table :latestinformations do |t|
      t.date :published_on
      t.text :description

      t.timestamps
    end
  end
end
