class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def verSolicitacao
      @id = params[:id]
      @vereadores = [{nome: "Joao da Silva", email: "joao@hotmail.com", telefone: "(81)987654321"}, {nome: "Maria da Silva", email: "maria@hotmail.com", telefone: "(81)976543218"}, {nome: "Marcio de Aquino", email: "marcinho@bol.com.br", telefone: "(81)naomeligue"}]
      @solicitacao = {descricao: "Problemas do Mundo", categoria:"Deu ruim", semanas:"15", cor:"#F00", letra: "F", latitude: -8.0898485,longitude:-34.8834002}
  end
  
  def readData
    require 'open-uri'
    require 'csv'
    dados = open('http://dados.recife.pe.gov.br/storage/f/2016-10-19T161509/156_diario.csv').read
    lines = dados.split("\r\n")
    dados_processados = []
    lines.each do |line|
        dados_processados << line.split(";")
    end
    dados_de_interesse = { GRUPOSERVICO_DESCRICAO: nil, SERVICO_DESCRICAO: nil, LOGRADOURO: nil, NUMERO: nil, BAIRRO: nil, DATA_DEMANDA: nil, SITUACAO: nil, DATA_ULT_SITUACAO: nil}
    lista_de_dados = dados_processados.delete_at(0)
    dados_de_interesse.each do |dado,posicao|
        dados_de_interesse[dado] = lista_de_dados.index(dado.to_s)
    end
    dados_finais = []
    dados_processados.each do |array|
        dados_finais << Hash.new()
        dados_de_interesse.each do |dado,posicao|
            dados_finais.last[dado] = array[posicao]
        end
    end
    
    @info = "[ "
    
    dados_finais.each do |dado|
        @info += "{address: '#{dado[:LOGRADOURO]}, #{dado[:NUMERO]}, #{dado[:BAIRRO]}', "
        @info += "grupo: '#{dado[:GRUPOSERVICO_DESCRICAO]}', "
        @info += "desc: '#{dado[:SERVICO_DESCRICAO]}', "
        @info += "data: '#{dado[:DATA_DEMANDA]}', "
        @info += "situacao: '#{dado[:SITUACAO]}'},"
    end
    @info.chop!
    @info += "]"
  end
end
