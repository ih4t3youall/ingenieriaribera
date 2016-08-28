json.extract! comentario, :id, :nombre, :telefono, :email, :mensaje, :created_at, :updated_at
json.url comentario_url(comentario, format: :json)