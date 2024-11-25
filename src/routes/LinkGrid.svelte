 <script>
  export let courseID = "1" //set default on 1

  let links = [
      { courseID: "2", title: "Antonia, P.", url: "studentpages/Antonia_P/website.html", description: "Hockey" },
      { courseID: "2", title: "Beispiel2, B.", url: "https://www.youtube.com", description: "Beispielbeschreibung 2" },
      { courseID: "2", title: "Beispiel3, C.", url: "https://www.wikipedia.org", description: "Beispielbeschreibung 3" },
      { courseID: "2", title: "Julian, B.", url: "studentpages/Test/Test.html", description: "Test HTML Seite" },
      { courseID: "2", title: "Beispiel4, D", url: "https://www.apostelgymnasium.de", description: "Beispielbeschreibung 4" },
  ];

  // Filtere die Links basierend auf der übergebenen CourseID
  let filteredLinks = links.filter(link => link.courseID === courseID);

  filteredLinks = filteredLinks.sort((a, b) => a.title.localeCompare(b.title));
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

  .tile h3 {
    margin-bottom: 10px;
  }

  .tile p {
    font-size: 0.9em;
    color: #666;
  }
</style>

<div class="grid-container">
  {#each filteredLinks as link}
    <a href="{link.url}" target="_blank">
      <div class="tile">
        <h3>{link.title}</h3>
        <p>{link.description}</p>
      </div>
    </a>
  {/each}
</div>
