<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Boquete Experience</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      line-height: 1.6;
      margin: 0;
      padding: 0;
      background-color: #f4f4f4;
    }
    header {
      background: url('boquete-banner.jpg') no-repeat center center/cover;
      color: white;
      height: 60vh;
      display: flex;
      justify-content: center;
      align-items: center;
      text-align: center;
    }
    header h1 {
      font-size: 3rem;
      background: rgba(0, 0, 0, 0.5);
      padding: 20px;
    }
    .container {
      padding: 2rem;
      max-width: 1200px;
      margin: auto;
    }
    section {
      margin-bottom: 4rem;
    }
    section h2 {
      font-size: 2rem;
      margin-bottom: 1rem;
    }
    section p {
      margin-bottom: 1rem;
    }
    .grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
      gap: 2rem;
    }
    img {
      width: 100%;
      height: auto;
      border-radius: 10px;
    }
    #map {
      width: 100%;
      height: 500px;
    }
  </style>
</head>
<body>

<header>
  <h1>Boquete: Un Paraíso Natural en la Provincia de Chiriquí</h1>
</header>

<div class="container">
  <section>
    <h2>El Volcán Barú y su Parque Nacional</h2>
    <p>El área que rodea el Volcán Barú fue declarada Parque Nacional en 1976, y hoy es uno de los principales atractivos de la región. Con más de 12,000 pies de altura, es el punto más alto de Panamá. Las caminatas y ascensos al volcán te permiten disfrutar de la impresionante vista del Mar Caribe y el Océano Pacífico simultáneamente.</p>
    <img src="volcan-baru.jpg" alt="Volcán Barú">
  </section>

  <section>
    <h2>Cultura y Tradiciones en Boquete</h2>
    <p>Boquete es un punto de encuentro cultural, donde la influencia de la comunidad indígena Ngobe-Buglé se entrelaza con festivales locales como el Boquete Jazz & Blues Festival y el Boquete Community Players.</p>
    <img src="ngobe-bugle.jpg" alt="Ngobe-Buglé Cultura">
  </section>

  <section>
    <h2>Una Experiencia Para Todos los Gustos</h2>
    <p>Desde baños en aguas termales hasta tours de café, Boquete ofrece una variedad de actividades para todos. ¡No te pierdas el famoso café Geisha, uno de los mejores del mundo!</p>
    <img src="cafe-geisha.jpg" alt="Tour de Café en Boquete">
  </section>

  <section>
    <h2>Zonas Clave de Boquete</h2>
    <div class="grid">
      <div>
        <h3>Bajo Boquete</h3>
        <p>El corazón del distrito, rodeado de montañas y atravesado por el río La Caldera, es el lugar ideal para recorrer a pie.</p>
        <img src="bajo-boquete.jpg" alt="Bajo Boquete">
      </div>
      <div>
        <h3>Los Naranjos</h3>
        <p>Conocido por sus fincas de café, es ideal para los amantes de la naturaleza. Está cerca del Parque Nacional Volcán Barú.</p>
        <img src="los-naranjos.jpg" alt="Los Naranjos">
      </div>
      <div>
        <h3>Jaramillo</h3>
        <p>Disfruta de la gastronomía local en Jaramillo, donde se cultivan productos frescos como parte del movimiento de la granja a la mesa.</p>
        <img src="jaramillo.jpg" alt="Jaramillo">
      </div>
    </div>
  </section>

  <section>
    <h2>Cómo Llegar a Boquete</h2>
    <p>Para llegar a Boquete desde Ciudad de Panamá, toma un vuelo a David y luego un viaje en auto de 50 minutos. Alternativamente, puedes conducir por la carretera Panamericana en aproximadamente 6 horas.</p>
  </section>

  <!-- Mapa dinámico con pines -->
  <section>
    <h2>Mapa Interactivo</h2>
    <div id="map"></div>
  </section>
</div>

<!-- Agrega el script de Google Maps -->
<script async
  src="https://maps.googleapis.com/maps/api/js?key=TU_CLAVE_DE_API&callback=initMap">
</script>
<script>
  // Inicialización del mapa
  function initMap() {
    const boquete = { lat: 8.7806, lng: -82.4405 };
    const map = new google.maps.Map(document.getElementById("map"), {
      zoom: 14,
      center: boquete,
    });

    // Pines de ejemplo
    const lugares = [
      { name: 'Hotel Boquete', lat: 8.7806, lng: -82.4405 },
      { name: 'Restaurante La Casona', lat: 8.7785, lng: -82.4311 },
      { name: 'Tour de Café', lat: 8.7832, lng: -82.4364 },
    ];

    lugares.forEach(lugar => {
      const marker = new google.maps.Marker({
        position: { lat: lugar.lat, lng: lugar.lng },
        map: map,
        title: lugar.name,
      });

      const infoWindow = new google.maps.InfoWindow({
        content: `<h3>${lugar.name}</h3>`
      });

      marker.addListener('click', () => {
        infoWindow.open(map, marker);
      });
    });
  }
</script>

</body>
</html>
