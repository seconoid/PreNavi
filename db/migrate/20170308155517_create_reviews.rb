class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references :user, null:false
      t.references :student, null:false
      t.integer :plan_point
      t.integer :concept_point
      t.integer :impl_point
      t.string :comment
      t.timestamps
    end
  end
end
