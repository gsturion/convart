# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"
require "pry-byebug"

Work.delete_all
Event.delete_all
Artist.delete_all

events = Rails.root.join('lib', 'seeds', 'Events.csv')
csv_options = { headers: :first_row }
CSV.foreach(events, csv_options) do |row|
  # Here, row is an array of columns
  event = {
    event_id: row['ID Evento'],
    edition: row['Denominação do Evento'],
    inicial_date: row['Data de Início'],
    final_date: row['Data Final'],
    place: row['Realização']
   }
  print event
  Event.create!(event)
end

artists = Rails.root.join('lib', 'seeds', 'Artists2.csv')
csv_options = { headers: :first_row }
CSV.foreach(artists, csv_options) do |row|
  # Here, row is an array of columns
  artist = {
    artist_id: row['Entity identifier'],
    name: row['Entity names'],
    nationality: row['nacionalidade'],
    delegation: row['participação'],
    #idno_evento: row['idno-evento']
  }
  print artist
  Artist.create!(artist)
end

works = Rails.root.join('lib', 'seeds', 'Works2.csv')
csv_options = { headers: :first_row }
CSV.foreach(works, csv_options) do |row|
  # Here, row is an array of columns
  #row['ID Evento'].split(';').each do |event_id|
    work = {
        work_id: row['ID Obra'],
        title: row['Título da Obra'],
        date: row['Data da Obra'],
        size: row['Dimensão da Obra'],
        support: row['Suporte'],
        technique: row['Técnica'],
        #idno_evento: row['ID Evento'],
        artist: Artist.find_by(artist_id: row['ID Entidade']),
        event: Event.find_by(event_id: row['ID Evento'])
      }
      print work
      Work.create!(work)
  #end
end
