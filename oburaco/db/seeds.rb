# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# require 'csv'
# tabela = CSV.read("./tabela_tratada.csv")

# tabela.each do |row|
#   a = row[0].split(",")
#   b = "'" << a[0].to_s << "'"
#   Servico.create!(:nome => a[1], :grupo_servicos_id => GrupoServico.where("nome = #{b}").ids[0])
#   end


vereadores = [ ["Aderaldo Pinto", "aderaldopinto@hotmail.com", "(81) 3301-1259", "PSB", "http://sapl.recife.pe.leg.br/sapl_documentos/parlamentar/fotos/145_foto_parlamentar"],
                [ "Aerto Luna", "", "(81) 3301-1343", "PRP", "http://sapl.recife.pe.leg.br/sapl_documentos/parlamentar/fotos/x120_foto_parlamentar.pagespeed.ic.ziBb7j0KfS.webp"],
                ["Aimee Carvalho", "", "(81) 3301-1339", "PSB", "http://www.recife.pe.leg.br/noticias/aimee-carvalho-critica-ideologia-de-genero/image_preview"],
                ["Alfredo Santana", "", "(81) 3301-1346", "http://sapl.recife.pe.leg.br/sapl_documentos/parlamentar/fotos/122_foto_parlamentar" ],
                ["Aline Mariano", "vereadoraalinemariano@hotmail.com", "(81) 3301-1233", "PMDB", "http://sapl.recife.pe.leg.br/sapl_documentos/parlamentar/fotos/x123_foto_parlamentar.pagespeed.ic.eY-3j6OD3a.webp"],
                ["Almir Fernando Alves", "inscrofat@hotmail.com", "(81) 3301-1331", "PC do B", "http://www.recife.pe.leg.br/noticias/almir-fernando-agradece-votos/image_preview"],
                ["Amaro Cipriano de Lima", "", "(81) 3301-1333", "PSB", "http://sapl.recife.pe.leg.br/sapl_documentos/parlamentar/fotos/61_foto_parlamentar"],
                ["André Régis", "", "(81) 33011217", "PSDB", "http://sapl.recife.pe.leg.br/sapl_documentos/parlamentar/fotos/147_foto_parlamentar"],
                ["Antonio Luiz Neto", "antonio.neto@recife.pe.gov.br", "(81) 33011207", "PTB", "https://paneladepressao.s3.amazonaws.com/uploads/influencer/avatar/1770/cO8Pp7m9.jpeg"],
                ["Augusto Carreras", "augusto.carreras@uol.com.br", "(81) 3301-1252", "PSB", "http://sapl.recife.pe.leg.br/sapl_documentos/parlamentar/fotos/71_foto_parlamentar"],
                ["Carlos Gueiros", "carlosgueiros@carlosgueiros.com.br", "(81) 3301-1278", "PSB", "http://sapl.recife.pe.leg.br/sapl_documentos/parlamentar/fotos/65_foto_parlamentar"],
                ["Davi Muniz", "davimuniz2012@gmail.com", "(81) 3301-1340", "PEN", "http://sapl.recife.pe.leg.br/sapl_documentos/parlamentar/fotos/148_foto_parlamentar"],
                ["Edmar de Oliveira", "edmar.deoliveira@hotmail.com", "(81) 3301-1197", "SDD", "http://3.bp.blogspot.com/-9JInfqYVKQI/UHdD722ay3I/AAAAAAAAWi4/HfnklRrEGW8/s1600/EDMAR.jpg"],
                ["Eduardo Chera", "", "(81) 3301-1341", "PDT", "http://sapl.recife.pe.leg.br/sapl_documentos/parlamentar/fotos/149_foto_parlamentar"],
                ["Eduardo Marques", "", "3301-1356", "PTB", "http://sapl.recife.pe.leg.br/sapl_documentos/parlamentar/fotos/8_foto_parlamentar"],
                ["Eriberto Rafael", "", "(81) 3301-1234", "PTC", "http://sapl.recife.pe.leg.br/sapl_documentos/parlamentar/fotos/150_foto_parlamentar"],
                ["Erivaldo da Silva", "erivaldo.eri@hotmail.com", "(81) 3301.1274", "PSD", "http://sapl.recife.pe.leg.br/sapl_documentos/parlamentar/fotos/125_foto_parlamentar"],
                ["Estefano Barbosa", "vereadormenudo@hotmail.com", "(81) 3301-1325", "PSB", "http://sapl.recife.pe.leg.br/sapl_documentos/parlamentar/fotos/126_foto_parlamentar"],
                ["Eurico Freire", "eurico.freire@recife.pe.leg.br", "(81) 3301.1435", "REDE", "http://sapl.recife.pe.leg.br/sapl_documentos/parlamentar/fotos/x151_foto_parlamentar.pagespeed.ic.sc27UO__ZT.webp"],
                ["Felipe Francismar", "felipefrancismar@outlook.com", "81-3301-1272", "PSB", "http://sapl.recife.pe.leg.br/sapl_documentos/parlamentar/fotos/152_foto_parlamentar"],
                ["Gilberto Alves", "", "(81) 3301.1224", "PSD", "http://sapl.recife.pe.leg.br/sapl_documentos/parlamentar/fotos/127_foto_parlamentar"],
                ["Henrique Leite", "", "(81) 3301-1362", "PDT", "http://sapl.recife.pe.leg.br/sapl_documentos/parlamentar/fotos/52_foto_parlamentar"],
                ["Isabella de Roldão", "gabinete.ideroldao@recife.pe.leg.br", "(81) 3301.1277", "PDT", "http://sapl.recife.pe.leg.br/sapl_documentos/parlamentar/fotos/x153_foto_parlamentar.pagespeed.ic.hOqakkHzyT.webp"],
                ["Jadeval de Lima", "", "(81) 3301-1201", "PDT", "http://sapl.recife.pe.leg.br/sapl_documentos/parlamentar/fotos/x129_foto_parlamentar.pagespeed.ic.VjK35NNWVh.webp"],
                ["Jairo Brito", "", "81 3301.1232", "PT", "http://sapl.recife.pe.leg.br/sapl_documentos/parlamentar/fotos/130_foto_parlamentar"],
                ["Jayme Asfora","", "(81) 3301-1291", "PMDB", "http://imgsapp.diariodepernambuco.com.br/app/noticia_127983242361/2013/03/25/430507/20130325194501701301a.jpg"],
                ["Jurandir Liberal", "", "81 3301 1282", "PT", "http://1.bp.blogspot.com/-397rrIQu3E0/T384nWg8ZFI/AAAAAAAAAIU/_Kcoj6VioVo/s1600/DSC_00591.jpg"],
                ["Luiz Eustáquio", "leustaquioneto@uol.com.br", "(81) 3301.1360", "PSB", "http://sapl.recife.pe.leg.br/sapl_documentos/parlamentar/fotos/111_foto_parlamentar"],
                ["Marco Aurélio Medeiros", "", "813301-1334", "PRTB", "http://sapl.recife.pe.leg.br/sapl_documentos/parlamentar/fotos/154_foto_parlamentar"],
                ["Marcos di Bria", "vereador_marcosdibria@hotmail.com", "81 3301.1283", "PSDC", "http://sapl.recife.pe.leg.br/sapl_documentos/parlamentar/fotos/136_foto_parlamentar"],
                ["Marcos Menezes", "", "8133011279", "PDT", "http://sapl.recife.pe.leg.br/sapl_documentos/parlamentar/fotos/47_foto_parlamentar"],
                ["Marília Arraes", "", "8133011270", "PT", "http://www.aldovilela.com.br/wp-content/uploads/2014/09/MARILIA_ARRAES.jpg"],
                ["Michele Collins", "", "813301-1348", "PP", "http://sapl.recife.pe.leg.br/sapl_documentos/parlamentar/fotos/x155_foto_parlamentar.pagespeed.ic.j6fnIlaTnM.png"],
                ["Osmar Ricardo", "vereadorosmarricardo@recife.pe.leg.br", "81 33011337", "PT", "http://sapl.recife.pe.leg.br/sapl_documentos/parlamentar/fotos/42_foto_parlamentar"],
                ["Rodrigo Vidal", "", "813301-1359", "PSB", "http://www2.recife.pe.gov.br/wp-content/uploads/Rodrigo-Vidal.jpg"],
                ["Rogério de Lucca", "", "813301-1344", "PSL", "http://sapl.recife.pe.leg.br/sapl_documentos/parlamentar/fotos/144_foto_parlamentar"],
                ["Vera Lopes", "", "813301-1231", "PPS", "http://www.recife.pe.leg.br/noticias/projeto-de-vera-lopes-preve-ressarcimento-de-planos-de-saude/image_preview"],
                ["Vicente André Gomes", "vicenteandrégomes@bol.com.br", "81 33011242", "PSB", "http://sapl.recife.pe.leg.br/sapl_documentos/parlamentar/fotos/84_foto_parlamentar"],
                ["Wilton Brito", "wiltonbrito@recife.pe.leg.br", "(81) 3301.1214", "PP", "http://www.recife.pe.leg.br/noticias/wilton-brito-sugere-polos-de-cultura-popular-1/image_preview"]
    ]
    
  vereadores.each do |row|
    Vereador.create!(:nome => row[0], :email => row[1], :telefone => row[2], :partido => row[3], :imagem => row[4])
end
