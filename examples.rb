class Example
  require 'rest_client'

  # Lista de todos los diputados
  def self.lista_diputados
    RestClient.get('http://api.datamx.io/v1/diputados')
  end

  # Informacion de un diputado
  def self.diputado(id)
    RestClient.get("http://api.datamx.io/v1/diputados/#{id}")
  end

  # Lista de Iniciativas
  def self.lista_iniciativas(pagina = 1)
    params = { params: { page: pagina } }
    RestClient.get('http://api.datamx.io/v1/iniciativas', params)
  end

  # Lista de votos dada una iniciativa
  def self.lista_votos(iniciativa)
    RestClient.get("http://api.datamx.io/v1/iniciativas/#{iniciativa}/votos")
  end
end

puts Example.lista_diputados
# puts Example.diputado(1)
# puts Example.lista_iniciativas(4)
# puts Example.lista_votos(3)
