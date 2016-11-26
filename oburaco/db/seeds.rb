# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'
tabela = CSV.read("./tabela_tratada.csv")

tabela.each do |row|
  a = row[0].split(",")
  b = a[0].to_s
  a.each do |linha|
    Servico.create!(:nome => a[1], :grupo_servicos_id => GrupoServico.where("nome = #{b}").ids)
    end
  end
  