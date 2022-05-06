class CreateMainrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :mainrooms do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end
