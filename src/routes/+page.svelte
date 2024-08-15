<script>
	import LinkGrid from './LinkGrid.svelte';
</script>

<svelte:head>
	<title>Home</title>
	<meta name="description" content="Svelte demo app" />
</svelte:head>

<section>
	<h1>
		HTML Projekte des WP II Informatik
	</h1>

	<h2>
		<strong>am Apostelgymnasium Köln</strong>
	</h2>
	
	
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
