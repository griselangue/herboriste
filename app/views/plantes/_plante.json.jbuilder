json.extract! plante, :id, :nomCommun, :nomScientifique, :description, :dimension, :fleur, :tige, :feuille, :racine, :fruit, :created_at, :updated_at
json.url plante_url(plante, format: :json)
