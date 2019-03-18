Bundler.require

configure do
  set :bind, '0.0.0.0'
  set :port, 58613
end

after do
  content_type :json
end

get '/nodes/:id' do |id|
  id = id.to_i

  {
    id: id,
    name: 'Tiergarten',
    connections: [{
      node_id: id + 1,
      node_name: 'Potsdamer Platz',
      type: 'Bus'
    },
    {
      node_id: id + 2,
      node_name: 'Zoologischer Garten',
      type: 'Bike'
    }]
  }.to_json
end

