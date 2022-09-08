json.extract! projekt, :id, :namn, :beskrivning, :ägare, :status, :created_at, :updated_at
json.url projekt_url(projekt, format: :json)
