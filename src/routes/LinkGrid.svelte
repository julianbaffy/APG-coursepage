<script>
    // Beispielhaftes Array von Links
    const links = [
      { title: "Google", url: "https://www.google.com", description: "Search Engine" },
      { title: "YouTube", url: "https://www.youtube.com", description: "Video Sharing" },
      { title: "Wikipedia", url: "https://www.wikipedia.org", description: "Online Encyclopedia" },
      { title: "Julian Baldauf", url: "studentpages/Test.html", description: "Test HTML Seite" },
      // Weitere Links hier hinzufügen
    ];
  </script>
  
  <style>
    .grid-container {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); /* Anpassbares Layout für verschiedene Bildschirmgrößen */
      gap: 20px; /* Abstand zwischen den Kacheln */
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
  
    .tile a {
      text-decoration: none;
      color: inherit; /* Erbt die Farbe des Textes */
      display: block;
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
      <div class="tile">
        <a href="{link.url}" target="_blank">
          <h3>{link.title}</h3>
          <p>{link.description}</p>
        </a>
      </div>
    {/each}
  </div>
  