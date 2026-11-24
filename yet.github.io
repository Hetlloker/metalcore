<!DOCTYPE html>
<html lang="ru">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Металлургия — от руды до стали</title>
<style>
  :root {
    --steel: #2b3a4a;
    --molten: #ff7a1a;
    --ember: #d94f00;
    --light: #f4f1ec;
    --dark: #1a222c;
  }
  * { margin: 0; padding: 0; box-sizing: border-box; }
  body {
    font-family: 'Segoe UI', Arial, sans-serif;
    background: var(--light);
    color: var(--dark);
    line-height: 1.6;
  }
  header {
    background: linear-gradient(135deg, var(--dark) 0%, var(--steel) 60%, var(--ember) 130%);
    color: #fff;
    padding: 70px 20px;
    text-align: center;
  }
  header h1 {
    font-size: clamp(2rem, 5vw, 3.2rem);
    letter-spacing: 2px;
    text-transform: uppercase;
  }
  header p { margin-top: 12px; opacity: .85; font-size: 1.1rem; }
  nav {
    position: sticky; top: 0;
    background: var(--dark);
    display: flex; justify-content: center; gap: 8px;
    padding: 10px; z-index: 10;
  }
  nav a {
    color: #fff; text-decoration: none; padding: 8px 16px;
    border-radius: 6px; transition: background .3s;
  }
  nav a:hover { background: var(--molten); }
  section {
    max-width: 1000px;
    margin: 0 auto;
    padding: 50px 20px;
  }
  h2 {
    color: var(--steel);
    border-left: 5px solid var(--molten);
    padding-left: 12px;
    margin-bottom: 24px;
    font-size: 1.8rem;
  }
  .cards {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
    gap: 18px;
  }
  .card {
    background: #fff;
    border-radius: 12px;
    padding: 22px;
    box-shadow: 0 3px 12px rgba(0,0,0,.08);
    border-top: 4px solid var(--molten);
    transition: transform .25s;
  }
  .card:hover { transform: translateY(-5px); }
  .card h3 { color: var(--ember); margin-bottom: 8px; }
  .timeline { list-style: none; position: relative; padding-left: 30px; }
  .timeline::before {
    content: ''; position: absolute; left: 10px; top: 0; bottom: 0;
    width: 3px; background: var(--molten); border-radius: 3px;
  }
  .timeline li { margin-bottom: 18px; position: relative; }
  .timeline li::before {
    content: ''; position: absolute; left: -26px; top: 6px;
    width: 12px; height: 12px; border-radius: 50%;
    background: var(--molten); border: 2px solid var(--steel);
  }
  .timeline b { color: var(--steel); }
  /* Температурная шкала — интерактив */
  .heat-demo {
    background: var(--dark); color: #fff;
    border-radius: 12px; padding: 30px; text-align: center;
  }
  input[type="range"] { width: 80%; margin: 18px 0; accent-color: var(--molten); }
  #bar {
    height: 26px; border-radius: 13px;
    background: linear-gradient(90deg, #444, #ff7a1a);
    width: 20%; transition: width .2s, background .2s;
    margin: 0 auto 12px;
  }
  #tempOut { font-size: 1.5rem; font-weight: bold; }
  #metalName { color: var(--molten); font-size: 1.1rem; margin-top: 6px; }
  footer {
    background: var(--dark); color: #aaa;
    text-align: center; padding: 24px; font-size: .9rem;
  }
</style>
</head>
<body>

<header>
  <h1>🔥 Металлургия</h1>
  <p>Наука и ремесло: как руда превращается в сталь</p>
</header>

<nav>
  <a href="#about">О отрасли</a>
  <a href="#process">Технологии</a>
  <a href="#history">История</a>
  <a href="#lab">Лаборатория</a>
</nav>

<section id="about">
  <h2>Что такое металлургия</h2>
  <div class="cards">
    <div class="card">
      <h3>Чёрная металлургия</h3>
      <p>Производство чугуна и стали из железной руды. Основа строительства, машиностроения и транспортной отрасли.</p>
    </div>
    <div class="card">
      <h3>Цветная металлургия</h3>
      <p>Добыча и обработка меди, алюминия, никеля, цинка и редких металлов. Ключ к электронике и энергетике.</p>
    </div>
    <div class="card">
      <h3>Металлообработка</h3>
      <p>Прокат, литьё, ковка и сварка — превращение слитков в готовые конструкции и детали.</p>
    </div>
  </div>
</section>

<section id="process">
  <h2>Основные технологии</h2>
  <div class="cards">
    <div class="card">
      <h3>Доменный процесс</h3>
      <p>В доменной печи при ~1600 °C из руды и кокса выплавляют чугун.</p>
    </div>
    <div class="card">
      <h3>Кислородный конвертер</h3>
      <p>Чугун продувается кислородом, углерод выгорает — получается сталь.</p>
    </div>
    <div class="card">
      <h3>Электропечь</h3>
      <p>Плавка электричеством, часто на металлоломе. Экологичный и гибкий способ.</p>
    </div>
  </div>
</section>

<section id="history">
  <h2>Вехи истории</h2>
  <ul class="timeline">
    <li><b>~3000 до н. э.</b> — начало бронзового века: медь и олово сплавляют в бронзу.</li>
    <li><b>~1200 до н. э.</b> — железный век: человек научился ковать железо.</li>
    <li><b>1855</b> — конвертер Бессемера: сталь становится массовой.</li>
    <li><b>1950-е</b> — кислородно-конвертерный процесс революционизирует сталеплавильное производство.</li>
    <li><b>Сегодня</b> — электросталеплавильные печи и водородные технологии открывают «зелёную» эру металлургии.</li>
  </ul>
</section>

<section id="lab">
  <h2>Мини-лаборатория: плавим металл</h2>
  <div class="heat-demo">
    <p>Подвиньте ползунок, чтобы «нагреть» металл и узнать, при какой температуре он плавится.</p>
    <input type="range" id="temp" min="0" max="3500" value="20" oninput="updateHeat(this.value)">
    <div id="bar"></div>
    <div id="tempOut">20 °C</div>
    <div id="metalName"></div>
  </div>
</section>

<footer>
  Учебный проект о металлургии · Сделано с любовью к металлу
</footer>

<script>
  const metals = [
    { t: 660, name: 'Алюминий — плавится' },
    { t: 962, name: 'Серебро — плавится' },
    { t: 1064, name: 'Золото — плавится' },
    { t: 1085, name: 'Медь — плавится' },
    { t: 1538, name: 'Железо — плавится' },
    { t: 2000, name: 'Жидкая сталь в конвертере (~1600 °C) давно достигнута' },
    { t: 3400, name: 'Приближаемся к плавлению вольфрама (3422 °C)!' }
  ];

  function updateHeat(val) {
    const bar = document.getElementById('bar');
    const out = document.getElementById('tempOut');
    const name = document.getElementById('metalName');
    out.textContent = val + ' °C';
    bar.style.width = (val / 3500 * 100) + '%';
    const intensity = Math.min(val / 2000, 1);
    bar.style.background = `linear-gradient(90deg, #444, rgb(${255 * intensity}, ${120 * intensity}, 26))`;
    let current = 'Металл пока холодный';
    for (const m of metals) if (val >= m.t) current = m.name;
    name.textContent = current;
  }
</script>

</body>
</html>
