class RenameInvestmentsToTransactions < ActiveRecord::Migration
  def up
    rename_table :investments, :transactions
  end

  def down
    rename_table :transactions, :investments
  end
end
