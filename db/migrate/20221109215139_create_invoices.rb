class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.integer :monto
      t.datetime :fecha
      t.string :detalle
      t.decimal :iva
      t.decimal :valor
      t.references :id_recibtable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
