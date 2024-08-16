 <script>
  import thumpnail1 from '$lib/images/IF1.png';
  import thumpnail2 from '$lib/images/IF2.png';
  let courses = [
      { courseID: "1", title: "IF 1 BEH", url: "/IF1", thumpnail: thumpnail1 },
      { courseID: "2", title: "IF 2 BAF", url: "/IF2", thumpnail: thumpnail2 }
  ];

  courses = courses.sort((a, b) => a.courseID.localeCompare(b.courseID));
</script>

<style>
  .grid-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
    gap: 20px;
    padding: 20px;
  }

  .tile {
    background-color: #f1f1f1;
    border-radius: 8px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    padding: 0px;
    text-align: center;
    transition: transform 0.2s ease, box-shadow 0.2s ease;
  }

  .tile:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 12px rgba(0, 0, 0, 0.15);
  }

  /* Direkte Anpassung der Linkstile */
  .tile a {
    text-decoration: none !important; /* Entfernt die Unterstreichung */
    color: inherit !important; /* Setzt die Textfarbe auf die Standardfarbe */
    display: block; /* Macht die gesamte Kachel anklickbar */
  }

  .tile h3 {
    margin-bottom: 10px;
  }

  .tile p {
    font-size: 0.9em;
    color: #666;
  }

  /* Container für das Bild im 16:9-Verhältnis */
  .image-container {
    width: 100%;
    padding-top: 56.25%; /* 16:9 Verhältnis (9/16 * 100) */
    position: relative;
  }

  /* Das Bild selbst */
  .image-container img {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
    border-radius: 8px 8px 0 0; /* Abrundung der oberen Ecken */
  }

</style>

<div class="grid-container">
  {#each courses as course}
    <a href="{course.url}">
      <div class="tile">
        <div class="image-container">
          <img alt={course.title} src={course.thumpnail} />
        </div>
      </div>
    </a>
  {/each}
</div>
