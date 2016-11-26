require 'csv'
tabela = CSV.read("./tabela_tratada.csv")

a = tabela[0][0].split(",")

print a[0].is_a? String