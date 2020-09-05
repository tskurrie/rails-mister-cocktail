class RemoveAssociationFromCocktails < ActiveRecord::Migration[6.0]
  def change
    remove_reference :cocktails, :doses, null: false, foreign_key: true
    remove_reference :cocktails, :ingredients, null: false, foreign_key: true
  end
end
