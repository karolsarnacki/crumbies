class CreateStoryParts < ActiveRecord::Migration[5.0]
  def change
    create_table :story_parts, id: :uuid do |t|
      t.references :story, type: :uuid, foreign_key: { on_delete: :restrict }, null: false

      t.string :type, null: false
      t.integer :position, default: 1, null: false

      t.timestamps
    end

    add_column :stories, :parts_count, :integer, default: 0, null: false
  end
end
