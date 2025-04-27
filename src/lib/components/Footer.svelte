<script lang="ts">
  import Heart from '$lib/icons/Heart.svelte';
</script>

<footer class="border-t border-purple-700 px-4 py-6">
  <div class="mx-auto flex max-w-7xl flex-col items-center justify-center md:flex-row">
    <p class="mb-4 text-sm text-purple-400 md:mb-0">
      &copy; {new Date().getFullYear()} - Made with 
      <Heart size={14} color="#ef4444" className="inline-block" /> 
      by Elberte Plínio.
    </p>
    <!-- Uncomment if needed
    <div class="flex space-x-6">
      <a href="/terms" class="text-sm text-purple-400 transition-colors hover:text-white"
        >Terms of Service</a
      >
      <a href="/privacy" class="text-sm text-purple-400 transition-colors hover:text-white"
        >Privacy</a
      >
    </div>
    -->
  </div>
</footer>
