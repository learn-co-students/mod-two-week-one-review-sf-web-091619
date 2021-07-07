class AddDefaultValueToHasMermaids < ActiveRecord::Migration[5.1]
  def change
    change_column_default :seas, :has_mermaids, true
  end
end
