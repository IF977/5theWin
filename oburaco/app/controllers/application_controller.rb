class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def verSolicitacao
      dados = [{id: 148, categoria: "ILUMINAÇÃO PÚBLICA", descricao: "MANUTENÇÃO EM LÂMPADA APAGADA",   latitude: -8.1112669, longitude: -34.8999691, semanas: ((Date.today - Date.parse("2016-10-11T00:00:00"))/7).floor},
      {id: 274, categoria: "PAVIMENTAÇÃO",                descricao: "OPERAÇÃO TAPA-BURACO EM ASFALTO", latitude: -8.1278559, longitude: -34.8992795, semanas: ((Date.today - Date.parse("2016-10-15T00:00:00"))/7).floor},
      {id: 126, categoria: "ILUMINAÇÃO PÚBLICA",          descricao: "MANUTENÇÃO EM LÂMPADA APAGADA",   latitude: -8.1267401, longitude: -34.898803,  semanas: ((Date.today - Date.parse("2016-10-18T00:00:00"))/7).floor},
      {id: 260, categoria: "PAVIMENTAÇÃO",                descricao: "OPERAÇÃO TAPA-BURACO EM ASFALTO", latitude: -8.1240252, longitude: -34.9083994, semanas: ((Date.today - Date.parse("2016-09-11T00:00:00"))/7).floor},
      {id: 262, categoria: "PAVIMENTAÇÃO",                descricao: "OPERAÇÃO TAPA-BURACO EM ASFALTO", latitude: -8.1244123, longitude: -34.9066511, semanas: ((Date.today - Date.parse("2016-10-11T00:00:00"))/7).floor},
      {id: 261, categoria: "PAVIMENTAÇÃO",                descricao: "OPERAÇÃO TAPA-BURACO EM ASFALTO", latitude: -8.1330341, longitude: -34.9127567, semanas: ((Date.today - Date.parse("2016-10-19T00:00:00"))/7).floor},
    {id: 6,   categoria: "ARBORIZAÇÃO",                 descricao: "VISTORIA DE ARVORES",               latitude: -8.1358728, longitude: -34.9050083, semanas: ((Date.today - Date.parse("2016-10-20T00:00:00"))/7).floor},
      {id: 278, categoria: "PAVIMENTAÇÃO",                descricao: "OPERAÇÃO TAPA-BURACO EM ASFALTO", latitude: -8.1454786, longitude: -34.9081513, semanas: ((Date.today - Date.parse("2016-06-12T00:00:00"))/7).floor},
      {id: 279, categoria: "PAVIMENTAÇÃO",                descricao: "OPERAÇÃO TAPA-BURACO EM ASFALTO", latitude: -8.1419197, longitude: -34.9056932, semanas: ((Date.today - Date.parse("2016-07-13T00:00:00"))/7).floor},
      {id: 121, categoria: "ILUMINAÇÃO PÚBLICA",          descricao: "MANUTENÇÃO EM LÂMPADA APAGADA",   latitude: -8.1303511, longitude: -34.8997455, semanas: ((Date.today - Date.parse("2016-08-15T00:00:00"))/7).floor},
      {id: 111, categoria: "ILUMINAÇÃO PÚBLICA",          descricao: "MANUTENÇÃO EM LÂMPADA APAGADA",   latitude: -8.1177573, longitude: -34.8986279, semanas: ((Date.today - Date.parse("2016-09-17T00:00:00"))/7).floor}]

      dados.each do |dado|
        if dado[:id].to_s == params[:id]
          @solicitacao = dado
        end
      end
      #@vereadores = [{nome: "Joao da Silva", email: "joao@hotmail.com", telefone: "(81)987654321"}, {nome: "Maria da Silva", email: "maria@hotmail.com", telefone: "(81)976543218"}, {nome: "Marcio de Aquino", email: "marcinho@bol.com.br", telefone: "(81)naomeligue"}]
      while @vereadores.size != 3
        novovereador = Vereador.find(1..39)
        if not @vereadores.include?(novovereador)
          @vereadores << novovereador
        end
      end
      #@solicitacao = {descricao: "Problemas do Mundo", categoria:"Deu ruim", semanas:"15", latitude: -8.0898485,longitude:-34.8834002}
  end
  
  def readData
    dados = [{id: 148, GRUPOSERVICO_CODIGO: 17, GRUPOSERVICO_DESCRICAO: "ILUMINAÇÃO PÚBLICA", SERVICO_CODIGO: 25, SERVICO_DESCRICAO: "MANUTENÇÃO EM LÂMPADA APAGADA", LOGRADOURO: "RUA PADRE BERNARDINO PESSOA", NUMERO: 0, BAIRRO: "BOA VIAGEM", RPA: 6, DATA_DEMANDA: DateTime.parse("2016-10-31T00:00:00").strftime("%d/%m/%Y"), SITUACAO: "EXECUÇÃO", DATA_ULT_SITUACAO: "2016-10-31T00:00:00", COLOR: "yellow"},
{id: 274, GRUPOSERVICO_CODIGO: 25, GRUPOSERVICO_DESCRICAO: "PAVIMENTAÇÃO", SERVICO_CODIGO: 65, SERVICO_DESCRICAO: "OPERAÇÃO TAPA-BURACO EM ASFALTO", LOGRADOURO: "RUA DOM JOSE LOPES", NUMERO: 40, BAIRRO: "BOA VIAGEM", RPA: 6, DATA_DEMANDA: DateTime.parse("2016-10-31T00:00:00").strftime("%d/%m/%Y"), SITUACAO: "CADASTRADA", DATA_ULT_SITUACAO: "2016-10-31T00:00:00", COLOR: "red"},
{id: 126, GRUPOSERVICO_CODIGO: 17, GRUPOSERVICO_DESCRICAO: "ILUMINAÇÃO PÚBLICA", SERVICO_CODIGO: 25, SERVICO_DESCRICAO: "MANUTENÇÃO EM LÂMPADA APAGADA", LOGRADOURO: "RUA  NAVEGANTES", NUMERO: 611, BAIRRO: "BOA VIAGEM", RPA: 6, DATA_DEMANDA: DateTime.parse("2016-10-31T00:00:00").strftime("%d/%m/%Y"), SITUACAO: "EXECUÇÃO", DATA_ULT_SITUACAO: "2016-10-31T00:00:00", COLOR: "yellow"},
{id: 260, GRUPOSERVICO_CODIGO: 25, GRUPOSERVICO_DESCRICAO: "PAVIMENTAÇÃO", SERVICO_CODIGO: 65, SERVICO_DESCRICAO: "OPERAÇÃO TAPA-BURACO EM ASFALTO", LOGRADOURO: "RUA  AMALIA BERNARDINO DE SOUZA", NUMERO: 210, BAIRRO: "BOA VIAGEM", RPA: 6, DATA_DEMANDA: DateTime.parse("2016-10-31T00:00:00").strftime("%d/%m/%Y"), SITUACAO: "CADASTRADA", DATA_ULT_SITUACAO: "2016-10-31T00:00:00", COLOR: "red"},
{id: 262, GRUPOSERVICO_CODIGO: 25, GRUPOSERVICO_DESCRICAO: "PAVIMENTAÇÃO", SERVICO_CODIGO: 65, SERVICO_DESCRICAO: "OPERAÇÃO TAPA-BURACO EM ASFALTO", LOGRADOURO: "RUA  ERNESTO DE PAULA SANTOS", NUMERO: 1277, BAIRRO: "BOA VIAGEM", RPA: 6, DATA_DEMANDA: DateTime.parse("2016-10-31T00:00:00").strftime("%d/%m/%Y"), SITUACAO: "CADASTRADA", DATA_ULT_SITUACAO: "2016-10-31T00:00:00", COLOR: "red"},
{id: 261, GRUPOSERVICO_CODIGO: 25, GRUPOSERVICO_DESCRICAO: "PAVIMENTAÇÃO", SERVICO_CODIGO: 65, SERVICO_DESCRICAO: "OPERAÇÃO TAPA-BURACO EM ASFALTO", LOGRADOURO: "RUA  CAMBOIM", NUMERO: 000, BAIRRO: "BOA VIAGEM", RPA: 6, DATA_DEMANDA: DateTime.parse("2016-10-31T00:00:00").strftime("%d/%m/%Y"), SITUACAO: "CADASTRADA", DATA_ULT_SITUACAO: "2016-10-31T00:00:00", COLOR: "red"},
{id: 6, GRUPOSERVICO_CODIGO: 7, GRUPOSERVICO_DESCRICAO: "ARBORIZAÇÃO", SERVICO_CODIGO: 16, SERVICO_DESCRICAO: "VISTORIA DE ARVORES", LOGRADOURO: "RUA  ANTONIO PASSOS", NUMERO: 200, BAIRRO: "BOA VIAGEM", RPA: 6, DATA_DEMANDA: DateTime.parse("2016-10-31T00:00:00").strftime("%d/%m/%Y"), SITUACAO: "CADASTRADA", DATA_ULT_SITUACAO: "2016-10-31T00:00:00", COLOR: "red"},
{id: 278, GRUPOSERVICO_CODIGO: 25, GRUPOSERVICO_DESCRICAO: "PAVIMENTAÇÃO", SERVICO_CODIGO: 65, SERVICO_DESCRICAO: "OPERAÇÃO TAPA-BURACO EM ASFALTO", LOGRADOURO: "RUA PROFESSOR AUGUSTO LINS E SILVA", NUMERO: 958, BAIRRO: "BOA VIAGEM", RPA: 6, DATA_DEMANDA: DateTime.parse("2016-10-31T00:00:00").strftime("%d/%m/%Y"), SITUACAO: "CADASTRADA", DATA_ULT_SITUACAO: "2016-10-31T00:00:00", COLOR: "red"},
{id: 279, GRUPOSERVICO_CODIGO: 25, GRUPOSERVICO_DESCRICAO: "PAVIMENTAÇÃO", SERVICO_CODIGO: 65, SERVICO_DESCRICAO: "OPERAÇÃO TAPA-BURACO EM ASFALTO", LOGRADOURO: "RUA VISCONDE JEQUITINHONHA", NUMERO: "S/N", BAIRRO: "BOA VIAGEM", RPA: 6, DATA_DEMANDA: DateTime.parse("2016-10-31T00:00:00").strftime("%d/%m/%Y"), SITUACAO: "CADASTRADA", DATA_ULT_SITUACAO: "2016-10-31T00:00:00", COLOR: "red"},
{id: 121, GRUPOSERVICO_CODIGO: 17, GRUPOSERVICO_DESCRICAO: "ILUMINAÇÃO PÚBLICA", SERVICO_CODIGO: 25, SERVICO_DESCRICAO: "MANUTENÇÃO EM LÂMPADA APAGADA", LOGRADOURO: "RUA  LUSIANIA", NUMERO: 0, BAIRRO: "BOA VIAGEM", RPA: 6, DATA_DEMANDA: DateTime.parse("2016-10-31T00:00:00").strftime("%d/%m/%Y"), SITUACAO: "EXECUÇÃO", DATA_ULT_SITUACAO: "2016-10-31T00:00:00", COLOR: "yellow"},
{id: 111, GRUPOSERVICO_CODIGO: 17, GRUPOSERVICO_DESCRICAO: "ILUMINAÇÃO PÚBLICA", SERVICO_CODIGO: 25, SERVICO_DESCRICAO: "MANUTENÇÃO EM LÂMPADA APAGADA", LOGRADOURO: "RUA  FAUSTINO PORTO", NUMERO: 265, BAIRRO: "BOA VIAGEM", RPA: 6, DATA_DEMANDA: DateTime.parse("2016-10-31T00:00:00").strftime("%d/%m/%Y"), SITUACAO: "EXECUÇÃO", DATA_ULT_SITUACAO: "2016-10-31T00:00:00", COLOR: "yellow"}]
@info = "[ "

dados.each do |dado|
    @info += "{address: '#{dado[:LOGRADOURO]}, #{dado[:NUMERO]}, #{dado[:BAIRRO]}', "
    @info += "grupo: '#{dado[:GRUPOSERVICO_DESCRICAO]}', "
    @info += "desc: '#{dado[:SERVICO_DESCRICAO]}', "
    @info += "data: '#{dado[:DATA_DEMANDA]}', "
    @info += "color: '#{dado[:COLOR]}', "
    @info += "id: '#{dado[:id]}', "
    @info += "situacao: '#{dado[:SITUACAO]}'},"
end
@info.chop!
@info += "]"
  end
end
