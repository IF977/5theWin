require 'csv'

tabela = CSV.read("./tabela_tratada.csv", col_sep: ';')
puts tabela[0][0].encoding
puts tabela[1][0]
print tabela[1][0].bytes