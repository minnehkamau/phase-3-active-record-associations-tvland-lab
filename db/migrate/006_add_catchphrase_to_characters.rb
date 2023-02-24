class AddCatchphraseToCharacters < ActiveRecord::Migration[6.1]
  def change
    unless column_exists?(:characters, :catchphrase)
      add_column :characters, :catchphrase, :string
    end
  end
end
