class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string        :name
      t.text          :message
      t.references    :theme,     foreign_key: false
      t.timestamps
    end
  end
end
