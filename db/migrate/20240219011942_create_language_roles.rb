class CreateLanguageRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :language_roles do |t|
      t.string :language_role

      t.timestamps
    end
  end
end
