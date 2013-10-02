class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :title
      t.text :body
      t.integer :votes

      t.timestamps
    end
  end
end
