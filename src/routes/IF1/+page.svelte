<script>
	import LinkGrid from '../LinkGrid.svelte';
</script>

<svelte:head>
	<title>IF1</title>
	<meta name="IF Kurs 1" content="Showcase of all Products of Course 1" />
</svelte:head>

<section>
	<h1>
		Website Projekte aus IF 1
	</h1>

	<h2>
		<strong>Herr Behrens</strong>
	</h2>

	<p>Hier werden die Ergebnisse des Kurses veröffentlicht, sobald die Projekte abgeschlossen wurden.</p>
	
	
</section>
<LinkGrid courseID="1" />

<style>
	section {
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		flex: 0.6;
	}

	h1 {
		width: 100%;
	}
</style>
