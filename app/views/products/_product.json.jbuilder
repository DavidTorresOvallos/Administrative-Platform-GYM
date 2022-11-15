json.extract! product, :id, :nombre, :descripcion, :id_productable_id, :id_productable_type, :created_at, :updated_at
json.url product_url(product, format: :json)
