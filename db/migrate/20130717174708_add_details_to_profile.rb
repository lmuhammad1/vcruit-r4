class AddDetailsToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :phone, :string
    add_column :profiles, :email, :string
    add_column :profiles, :facebook, :string
    add_column :profiles, :twitter, :string
    add_column :profiles, :linkedin, :string
  end
end
