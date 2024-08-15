 <script>
  let courses = [
      { courseID: "1", title: "IF 1 BEH", url: "/IF1", thumpnail: "" },
      { courseID: "2", title: "IF 2 BAF", url: "/IF2", thumpnail: ""}
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
    padding: 20px;
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
</style>

<div class="grid-container">
  {#each courses as course}
    <a href="{course.url}" target="_blank">
      <div class="tile">
        <h3>{course.title}</h3>
      </div>
    </a>
  {/each}
</div>
