const bienais = [
  {
    name: "Fundação Bienal de São Paulo - Avenida Pedro Álvares Cabral - Moema, São Paulo - SP", 
    coordinates: [-23.5878111,-46.6557654]
  },
  {name: "Biennale, Venezia VE, Itália", coordinates: [45.4322409,12.3343608]},
  {name: "Triennale di Milano, Viale Emilio Alemagna, Milano MI, Itália", coordinates: [45.4722367,9.1714183]},
]

var map = L.map('map').setView([-23.5878111,-46.6557654], 3);

L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
}).addTo(map);

bienais.forEach(b => {
  L.marker(b.coordinates).addTo(map)
    .bindPopup(b.name)
    .openPopup();
  return b;
})