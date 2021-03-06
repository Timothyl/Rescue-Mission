class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title, null: false
      t.string :description, null: false

      t.timestamps null: false
      t.index :title, unique: true
    end
  end
end
