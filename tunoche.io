<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Tu Noche - Eventos Exclusivos</title>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600;700&display=swap" rel="stylesheet">
  <style>
    /* ====== RESET & BASE ====== */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Montserrat', sans-serif;
    }
    body {
      background-color: #fff8f5;
      color: #333;
      line-height: 1.6;
    }
    a { text-decoration: none; color: inherit; }
    button { cursor: pointer; }

    /* ====== HERO ====== */
    header {
      height: 100vh;
      background: url('https://placedog.net/1920/1080') center/cover no-repeat;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      text-align: center;
      color: #fff;
      position: relative;
    }
    header::after {
      content: '';
      position: absolute;
      inset: 0;
      background: rgba(0,0,0,0.4);
    }
    header .hero-content {
      position: relative;
      z-index: 1;
      max-width: 700px;
    }
    header h1 {
      font-size: 3rem;
      margin-bottom: 0.5rem;
    }
    header p {
      font-size: 1.5rem;
      margin-bottom: 1.5rem;
    }
    header .btn {
      background-color: #f5a9c0;
      color: #fff;
      padding: 0.8rem 2rem;
      border: none;
      border-radius: 50px;
      font-size: 1.1rem;
      transition: 0.3s;
    }
    header .btn:hover { background-color: #f06d99; }

    /* ====== SECCIÓN SOBRE NOSOTROS ====== */
    section {
      padding: 5rem 2rem;
      text-align: center;
    }
    section h2 {
      font-size: 2.5rem;
      margin-bottom: 1rem;
      color: #f06d99;
    }
    section p {
      max-width: 800px;
      margin: 0 auto 2rem;
    }

    /* ====== GALERÍA ====== */
    .gallery {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 1rem;
      margin-top: 2rem;
    }
    .gallery img {
      width: 100%;
      border-radius: 15px;
      transition: transform 0.3s;
    }
    .gallery img:hover { transform: scale(1.05); }

    /* ====== FORMULARIO ====== */
    form {
      max-width: 600px;
      margin: 0 auto;
      background: #fff0f2;
      padding: 2rem;
      border-radius: 15px;
      box-shadow: 0 4px 10px rgba(0,0,0,0.1);
    }
    form input, form select, form textarea {
      width: 100%;
      padding: 0.8rem;
      margin-bottom: 1rem;
      border-radius: 10px;
      border: 1px solid #f5a9c0;
      font-size: 1rem;
    }
    form button {
      width: 100%;
      background-color: #f5a9c0;
      color: #fff;
      padding: 1rem;
      font-size: 1.2rem;
      border: none;
      border-radius: 50px;
      transition: 0.3s;
    }
    form button:hover { background-color: #f06d99; }

    /* ====== CARRUSEL ====== */
    .carousel {
      position: relative;
      overflow: hidden;
      margin: 2rem auto;
      max-width: 100%;
    }
    .carousel-track {
      display: flex;
      transition: transform 0.5s ease-in-out;
    }
    .carousel-track img {
      max-height: 300px;
      width: 100%;
      object-fit: cover;
      flex-shrink: 0;
      margin-right: 10px;
      border-radius: 15px;
    }

    /* ====== WHATSAPP ====== */
    .whatsapp {
      position: fixed;
      bottom: 20px;
      right: 20px;
      background-color: #25D366;
      width: 60px;
      height: 60px;
      border-radius: 50%;
      display: flex;
      justify-content: center;
      align-items: center;
      box-shadow: 0 4px 8px rgba(0,0,0,0.2);
      transition: 0.3s;
      z-index: 100;
    }
    .whatsapp:hover { transform: scale(1.1); }
    .whatsapp img { width: 35px; height: 35px; }

    /* ====== FOOTER ====== */
    footer {
      text-align: center;
      padding: 2rem;
      background: #fce4ec;
      margin-top: 3rem;
    }

    /* ====== RESPONSIVE ====== */
    @media(max-width:768px){
      header h1 { font-size: 2.2rem; }
      header p { font-size: 1.2rem; }
    }
  </style>
</head>
<body>

  <!-- HERO -->
  <header>
    <div class="hero-content">
      <h1>Tu Noche</h1>
      <p>Eventos empresariales y festivos en todo el país</p>
      <a href="#formulario" class="btn">Solicitar presupuesto</a>
    </div>
  </header>

  <!-- SOBRE NOSOTROS -->
  <section id="sobre-nosotros">
    <h2>Qué hacemos</h2>
    <p>Organizamos eventos exclusivos para mayores de 25 años, con experiencias inolvidables, comidas y tragos de calidad, recorriendo todo el país.</p>
  </section>

  <!-- GALERÍA -->
  <section id="galeria">
    <h2>Galería de Eventos</h2>
    <div class="gallery">
      <img src="https://placedog.net/400/300" alt="Evento 1">
      <img src="https://placedog.net/401/300" alt="Evento 2">
      <img src="https://placedog.net/402/300" alt="Evento 3">
      <img src="https://placedog.net/403/300" alt="Evento 4">
    </div>
  </section>

  <!-- FORMULARIO -->
  <section id="formulario">
    <h2>Pide tu presupuesto personalizado</h2>
    <form id="contactForm">
      <input type="text" name="nombre" placeholder="Nombre" required>
      <input type="email" name="email" placeholder="Email" required>
      <input type="tel" name="telefono" placeholder="Teléfono" required>
      <select name="evento" required>
        <option value="">Tipo de evento</option>
        <option value="corporativo">Corporativo</option>
        <option value="fiesta">Fiesta</option>
        <option value="otro">Otro</option>
      </select>
      <textarea name="mensaje" placeholder="Mensaje" rows="4" required></textarea>
      <button type="submit">Enviar solicitud</button>
    </form>
  </section>

  <!-- CARRUSEL DE EXPERIENCIAS -->
  <section id="experiencias">
    <h2>Experiencias de fiestas anteriores</h2>
    <div class="carousel">
      <div class="carousel-track">
        <img src="https://placedog.net/800/300" alt="Fiesta 1">
        <img src="https://placedog.net/801/300" alt="Fiesta 2">
        <img src="https://placedog.net/802/300" alt="Fiesta 3">
      </div>
    </div>
  </section>

  <!-- WHATSAPP -->
  <a href="https://wa.me/5491123456789" target="_blank" class="whatsapp">
    <img src="https://upload.wikimedia.org/wikipedia/commons/6/6b/WhatsApp.svg" alt="WhatsApp">
  </a>

  <!-- FOOTER -->
  <footer>
    <p>© 2025 Tu Noche. Todos los derechos reservados.</p>
  </footer>

  <!-- JS -->
  <script>
    // Formulario
    const form = document.getElementById('contactForm');
    form.addEventListener('submit', function(e){
      e.preventDefault();
      alert('¡Gracias por tu solicitud! Nos contactaremos pronto.');
      form.reset();
    });

    // Carrusel
    const track = document.querySelector('.carousel-track');
    const slides = Array.from(track.children);
    let index = 0;

    function moveCarousel() {
      index++;
      if(index >= slides.length) index = 0;
      const slideWidth = slides[0].getBoundingClientRect().width + 10; // ancho + margen
      track.style.transform = 'translateX(' + (-slideWidth * index) + 'px)';
    }

    setInterval(moveCarousel, 3000);
  </script>

</body>
</html>
