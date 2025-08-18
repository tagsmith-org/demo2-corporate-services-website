<template>
  <div id="app" class="min-h-screen bg-white">
    <router-view />
  </div>
</template>

<script setup lang="ts">
import { onMounted } from 'vue'

onMounted(() => {
  console.log('App mounted successfully!')

  // Initialize scroll reveal animations
  const observerOptions = {
    threshold: 0.1,
    rootMargin: '0px 0px -50px 0px'
  }

  const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.classList.add('revealed')
      }
    })
  }, observerOptions)

  // Observe all elements with scroll-reveal class
  document.querySelectorAll('.scroll-reveal').forEach(el => {
    observer.observe(el)
  })
})
</script>
