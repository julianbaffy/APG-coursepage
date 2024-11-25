<script>
	import Header from './Header.svelte';
	import '../app.css';
</script>

<div class="app">
	<Header />

	<main>
		<slot />
	</main>

	<footer>
		<div class="left">
			&copy; Julian Baldauf, 2024
		</div>
		<div class="right">
			<a href="/impress">Impressum</a>
		</div>
	</footer>
</div>

<style>
	.app {
		display: flex;
		flex-direction: column;
		min-height: 100vh;
	}

	main {
		flex: 1;
		display: flex;
		flex-direction: column;
		padding: 1rem;
		width: 100%;
		max-width: 64rem;
		margin: 0 auto;
		box-sizing: border-box;
	}

	footer {
		display: flex;
    	justify-content: space-between;
    	align-items: center; /* Stellt sicher, dass die Elemente vertikal zentriert sind */
    	padding: 10px 20px;
		flex-direction: column;
		border-top: 1px solid #ccc; /* Optionale Linie oben im Footer */
	}

	footer .left {
    text-align: left;
	}

	footer .right {
    text-align: right;
	}

	footer .right a {
    text-decoration: none; /* Optional: Entfernt die Unterstreichung des Links */
    color: inherit; /* Optional: Link hat die gleiche Farbe wie der Text */
	}

	footer a {
		font-weight: bold;
	}

	@media (min-width: 480px) {
		footer {
			padding: 12px 0;
		}
	}
</style>
