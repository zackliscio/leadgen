class CreateProspects < ActiveRecord::Migration
  def change
    create_table :prospects do |t|
      t.string :company_name
      t.string :contact
      t.string :contact_email
      t.string :contact_title
      t.text :company_description
      t.string :company_url
      t.text :company_image_url
      t.string :company_bcorp_url
      t.boolean :responded

      t.timestamps
    end
  end
end
