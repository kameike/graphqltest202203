class CreateOrganizationHierarchies < ActiveRecord::Migration[7.0]
  def change
    create_table :organization_hierarchies, id: false do |t|
      t.integer :ancestor_id, null: false
      t.integer :descendant_id, null: false
      t.integer :generations, null: false
    end

    add_index :organization_hierarchies, [:ancestor_id, :descendant_id, :generations],
      unique: true,
      name: "organization_anc_desc_idx"

    add_index :organization_hierarchies, [:descendant_id],
      name: "organization_desc_idx"
  end
end
