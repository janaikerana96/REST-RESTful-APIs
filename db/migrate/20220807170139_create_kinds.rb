class CreateKinds < ActiveRecord::Migration[7.0]
  def change
    create_table :kinds do |t|
      t.string :descripton

      t.timestamps
    end
  end
end
