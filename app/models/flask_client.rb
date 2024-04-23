class FlaskClient
  require 'net/http'

  FLASK_API_URL = 'http://flask:5000/api/embeddings'

  def self.embeddings(data)
    res = Net::HTTP.post(
      URI(FLASK_API_URL),
      { data: }.to_json,
      'Content-Type' => 'application/json'
    )
    JSON.parse(res.body)['embeddings']
  end
end
