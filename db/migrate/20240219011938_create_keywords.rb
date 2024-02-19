class CreateKeywords < ActiveRecord::Migration[7.0]
  def change
    create_table :keywords do |t|
      t.string :keyword_name

      t.timestamps
    end
  end
end
