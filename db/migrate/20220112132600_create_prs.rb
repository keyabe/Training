class CreatePrs < ActiveRecord::Migration[6.1]
  def change
    create_table :prs do |t|
      t.string :title

      t.timestamps
    end
  end
end
