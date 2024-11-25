 <script>
  export let courseID = "1" //set default on 1

  let links = [
      { courseID: "2", title: "Antonia, P.", url: "studentpages/Antonia_P/website.html", description: "Hockey" },
      { courseID: "2", title: "Kira, S.", url: "studentpages/Kira_S/Index.html", description: "Häkeln lernen" },
      { courseID: "2", title: "Margó, W.", url: "studentpages/Margo_W/website.html", description: "Volleyball" },
      { courseID: "2", title: "Mattes, P.", url: "studentpages/Mattes_P/Index.html", description: "Formel 1" },
      { courseID: "2", title: "Neele, S.", url: "studentpages/Neele_S/fussball.html", description: "Fußball" },
      { courseID: "2", title: "Paul, S.", url: "studentpages/Paul_S/barca.html", description: "FC Barcelona" },
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
