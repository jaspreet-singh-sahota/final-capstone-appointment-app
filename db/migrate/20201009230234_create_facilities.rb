class CreateFacilities < ActiveRecord::Migration[6.0]
  def change
    create_table :facilities do |t|
      t.string :name
      t.string :image_url
      t.string :brief_description
      t.string :detailed_description
      t.string :free_trial
      t.string :three_months_package
      t.string :six_months_package
      t.string :annual_package

      t.timestamps
    end
  end
end
