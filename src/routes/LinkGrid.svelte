 <script>
  let links = [
    { title: "Google", url: "https://www.google.com", description: "Search Engine" },
      { title: "YouTube", url: "https://www.youtube.com", description: "Video Sharing" },
      { title: "Wikipedia", url: "https://www.wikipedia.org", description: "Online Encyclopedia" },
      { title: "Julian Baldauf", url: "studentpages/Test.html", description: "Test HTML Seite" },
      { title: "APG", url: "https://www.apostelgymnasium.de", description: "Die Schule der Schülerinnen und Schüler" },
  ];

  links = links.sort((a, b) => a.title.localeCompare(b.title));
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
  {#each links as link}
    <a href="{link.url}" target="_blank">
      <div class="tile">
        <h3>{link.title}</h3>
        <p>{link.description}</p>
      </div>
    </a>
  {/each}
</div>
