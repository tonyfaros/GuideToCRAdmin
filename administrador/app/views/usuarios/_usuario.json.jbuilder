json.extract! usuario, :id, :admin, :nombre, :email, :password, :foto, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
