class CreateImageQuizzes < ActiveRecord::Migration[5.0]
  def change
    create_table :image_quizzes do |t|
      t.references :category
      t.string :image
      t.string :answer

      t.timestamps
    end
  end
end