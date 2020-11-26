const bienais = [
  {
    name: "Biennale de Venezia - Veneza, Itália",
    coordinates: [12.358113, 45.429239],
  },
  {
    name: "Carnegie International - Filadélfia, EUA",
    coordinates: [-75.1343, 39.975199],
  },
  {
    name: "Triennale di Milano - Milão, Itália",
    coordinates: [9.173507, 45.472243],
  },
  {
    name: "Bienal de São Paulo - São Paulo, Brasil",
    coordinates: [-46.653786, -23.587921],
  },
  {
    name: "Tokyo Biennale - Tóquio, Japão",
    coordinates: [139.509821, 35.68657],
  },
  { name: "Documenta - Kassel, Alemanha", coordinates: [9.49778, 51.31972] },
  {
    name: "Ljubljana Biennial of Graphic Arts - Ljubljana, Eslovênia",
    coordinates: [14.50595, 46.05128],
  },
  {
    name: "Biennale de la Méditerranée - Alexandria, Egito",
    coordinates: [-92.4449, 31.3112],
  },
  {
    name: "Biennale de Paris - Paris, França",
    coordinates: [2.637473, 48.349877],
  },
  {
    name: "Bienal Americana de Córdoba - Córdoba, Argentina",
    coordinates: [-64.18333, -31.41667],
  },
  {
    name: "Bienal Coltejer - Medellín, Colômbia",
    coordinates: [-75.602411, 6.173828],
  },
  {
    name: "Bienales del Grabado Latinoamericano - San Juan, Porto Rico",
    coordinates: [-66.0571, 18.3744],
  },
  {
    name: "Triennale-India - Nova Delhi, Índia",
    coordinates: [77.221449, 28.633862],
  },
  {
    name: "Biennale of Sydney -Sydney, Austrália",
    coordinates: [151.294054, -33.803717],
  },
  {
    name: "Bienal de La Habana - Havana, Cuba",
    coordinates: [-82.351649, 23.140834],
  },
  {
    name: "Johannesburg Biennale - Joanesburgo, África do Sul",
    coordinates: [28.0436, -26.2023],
  },
  {
    name: "Shanghai Biennale - Xangai, China",
    coordinates: [121.475431, 31.221941],
  },
  {
    name: "Bienal do Mercosul - Porto Alegre, Brasil",
    coordinates: [-51.2305, -30.033],
  },
  {
    name: "Dak'Art Dakar Biennale - Dacar, Senegal",
    coordinates: [-17.457171, 14.712019],
  },
  {
    name: "Manifesta - Amsterdã, Países Baixos",
    coordinates: [4.891389, 52.365043],
  },
  {
    name: "Bienal del Fin del Mundo - Ushuaia, Argentina",
    coordinates: [-6.302505, -54.807346],
  },
  {
    name: "Gwangju Biennale - Gwangju, Coréia do Sul",
    coordinates: [126.889107, 35.182315],
  },
  {
    name: "Bienal de Curitiba - Curitiba, Brasil",
    coordinates: [-4.267013, -25.409845],
  },
  { name: "Biennale de Lyon - Lyon, França", coordinates: [4.79904, 45.75845] },
  {
    name: "Liverpool Biennial - Liverpool, Reino Unido:",
    coordinates: [-2.835767, 53.423106],
  },
  {
    name: "Berlin Biennale - Berlim, Alemanha",
    coordinates: [13.375368, 52.510242000000005],
  },
  {
    name: "Moscow Biennale of Contemporary Art - Moscou, Rússia",
    coordinates: [37.586456, 55.760099],
  },
  {
    name: "Marrakech Biennale - Marraquexe, Marrocos:",
    coordinates: [-7.998619, 31.625658],
  },
  {
    name: "Bienal de Arte de Cerveira - Viana do Castelo, Portugal:",
    coordinates: [-8.742745, 41.945885],
  },
  {
    name: "Singapore Biennale - Singapura, Singapura",
    coordinates: [103.8583746015625, 1.2907457421875],
  },
  {
    name: "Kochi-Muziris Biennale - Kochi, Índia",
    coordinates: [76.245601, 9.968549],
  },
  {
    name: "Prospect - Nova Orleans, EUA:",
    coordinates: [-75.6540362, 45.3854224],
  },
  {
    name: "Sharjah Biennial - Sharjah, Emirados Árabes Unidos",
    coordinates: [55.391291, 25.371387],
  },
  {
    name: "Taipei Biennial - Taipei, Taiwan",
    coordinates: [121.5482329375, 25.05559271875],
  },
];

var map = L.map("map").setView([-23.5878111, -46.6557654], 3);

L.tileLayer("https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png", {
  attribution:
    '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors',
}).addTo(map);

bienais.forEach((b) => {
  L.marker(b.coordinates).addTo(map).bindPopup(b.name).openPopup();
  return b;
});
