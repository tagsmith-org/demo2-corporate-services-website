<template>
  <!-- Demo Info Panel -->
  <DemoInfoPanel :is-open="isDemoPanelOpen" @close="toggleDemoPanel" />

  <!-- Simple Navigation -->
  <nav class="fixed top-0 w-full bg-white/95 backdrop-blur-sm shadow-lg z-50">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <div class="flex items-center justify-between h-16 lg:h-20">
        <div class="flex items-center">
          <h1 class="text-2xl lg:text-3xl font-bold text-gradient">
            CorporatePro
          </h1>
        </div>
        <div class="hidden md:flex items-center space-x-8">
          <a href="#home" @click.prevent="scrollToSection('home')"
            class="text-gray-700 hover:text-primary-800 font-medium transition-colors duration-300 cursor-pointer">Home</a>
          <a href="#about" @click.prevent="scrollToSection('about')"
            class="text-gray-700 hover:text-primary-800 font-medium transition-colors duration-300 cursor-pointer">About</a>
          <a href="#services" @click.prevent="scrollToSection('services')"
            class="text-gray-700 hover:text-primary-800 font-medium transition-colors duration-300 cursor-pointer">Services</a>
          <a href="#contact" @click.prevent="scrollToSection('contact')"
            class="text-gray-700 hover:text-primary-800 font-medium transition-colors duration-300 cursor-pointer">Contact</a>
        </div>
        <div class="hidden md:block">
          <button @click="scrollToSection('contact')" class="btn-primary">
            Get Started
          </button>
        </div>

        <!-- Mobile menu button -->
        <div class="md:hidden">
          <button @click="toggleMobileMenu" class="text-gray-700 hover:text-primary-800">
            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path v-if="!isMobileMenuOpen" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                d="M4 6h16M4 12h16M4 18h16"></path>
              <path v-else stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12">
              </path>
            </svg>
          </button>
        </div>
      </div>

      <!-- Mobile menu -->
      <div v-if="isMobileMenuOpen" class="md:hidden bg-white border-t border-gray-200">
        <div class="px-2 pt-2 pb-3 space-y-1">
          <a href="#home" @click.prevent="scrollToSection('home'); isMobileMenuOpen = false"
            class="block px-3 py-2 text-gray-700 hover:text-primary-800 font-medium transition-colors duration-300">Home</a>
          <a href="#about" @click.prevent="scrollToSection('about'); isMobileMenuOpen = false"
            class="block px-3 py-2 text-gray-700 hover:text-primary-800 font-medium transition-colors duration-300">About</a>
          <a href="#services" @click.prevent="scrollToSection('services'); isMobileMenuOpen = false"
            class="block px-3 py-2 text-gray-700 hover:text-primary-800 font-medium transition-colors duration-300">Services</a>
          <a href="#contact" @click.prevent="scrollToSection('contact'); isMobileMenuOpen = false"
            class="block px-3 py-2 text-gray-700 hover:text-primary-800 font-medium transition-colors duration-300">Contact</a>
          <div class="px-3 py-2">
            <button @click="scrollToSection('contact'); isMobileMenuOpen = false" class="btn-primary w-full">
              Get Started
            </button>
          </div>
        </div>
      </div>
    </div>
  </nav>

  <div class="pt-16 lg:pt-20">
    <!-- Hero Section -->
    <section id="home" class="relative min-h-screen flex items-center justify-center overflow-hidden">
      <!-- Background Image -->
      <div class="absolute inset-0 z-0">
        <img
          src="https://images.unsplash.com/photo-1497366216548-37526070297c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2069&q=80"
          alt="Corporate office building" class="w-full h-full object-cover" />
        <div class="absolute inset-0 bg-primary-900/70"></div>
      </div>

      <!-- Hero Content -->
      <div class="relative z-10 container-custom text-center text-white">
        <div class="scroll-reveal">
          <h1 class="text-4xl md:text-6xl lg:text-7xl font-bold mb-6 leading-tight">
            Professional
            <span class="text-secondary-400">Corporate</span>
            <br>Solutions
          </h1>
          <p class="text-xl md:text-2xl mb-8 max-w-3xl mx-auto text-gray-200">
            Empowering businesses with strategic consulting, innovative solutions, and proven results that drive
            sustainable growth and success.
          </p>
          <div class="flex flex-col sm:flex-row gap-4 justify-center">
            <button @click="scrollToSection('services')" class="btn-secondary">
              Explore Services
            </button>
            <button @click="scrollToSection('about')"
              class="bg-transparent border-2 border-white text-white hover:bg-white hover:text-gray-900 font-medium py-3 px-6 rounded-lg transition-all duration-300">
              Learn More
            </button>
          </div>
        </div>

        <!-- Service Highlights -->
        <div class="mt-16 grid grid-cols-1 md:grid-cols-3 gap-8 max-w-4xl mx-auto">
          <div v-for="(highlight, index) in serviceHighlights" :key="index" class="scroll-reveal"
            :style="{ animationDelay: `${index * 0.2}s` }">
            <div
              class="bg-white/10 backdrop-blur-sm rounded-lg p-6 border border-white/20 hover:bg-white/20 transition-all duration-300">
              <div class="w-12 h-12 bg-secondary-400 rounded-lg flex items-center justify-center mx-auto mb-4">
                <!-- Chart Bar Icon -->
                <svg v-if="highlight.title === 'Strategic Consulting'" class="w-6 h-6 text-gray-900" fill="none"
                  stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z">
                  </path>
                </svg>
                <!-- Cog Icon -->
                <svg v-else-if="highlight.title === 'Digital Transformation'" class="w-6 h-6 text-gray-900" fill="none"
                  stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z">
                  </path>
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
                </svg>
                <!-- Trending Up Icon -->
                <svg v-else class="w-6 h-6 text-gray-900" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    d="M13 7h8m0 0v8m0-8l-8 8-4-4-6 6"></path>
                </svg>
              </div>
              <h3 class="text-lg font-semibold mb-2">{{ highlight.title }}</h3>
              <p class="text-gray-300">{{ highlight.description }}</p>
            </div>
          </div>
        </div>
      </div>

      <!-- Scroll Indicator -->
      <div class="absolute bottom-8 left-1/2 transform -translate-x-1/2 animate-bounce">
        <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 14l-7 7m0 0l-7-7m7 7V3"></path>
        </svg>
      </div>
    </section>

    <!-- About Section -->
    <section id="about" class="section-padding bg-gray-50">
      <div class="container-custom">
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center">
          <!-- Content -->
          <div class="scroll-reveal">
            <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-6">
              About <span class="text-gradient">CorporatePro</span>
            </h2>
            <p class="text-lg text-gray-600 mb-6">
              We are a leading corporate services firm with over 15 years of experience helping businesses achieve their
              strategic objectives.
            </p>
            <button @click="scrollToSection('services')" class="btn-primary">
              Learn More About Us
            </button>
          </div>

          <!-- Image -->
          <div class="scroll-reveal">
            <div class="relative">
              <img
                src="https://images.unsplash.com/photo-1522071820081-009f0129c71c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"
                alt="Professional team meeting" class="rounded-lg shadow-2xl" />
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Services Section -->
    <section id="services" class="section-padding bg-white">
      <div class="container-custom">
        <!-- Section Header -->
        <div class="text-center mb-16">
          <div class="scroll-reveal">
            <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-4">
              Our <span class="text-gradient">Services</span>
            </h2>
            <p class="text-lg text-gray-600 max-w-2xl mx-auto">
              Comprehensive corporate solutions designed to address your business challenges and drive sustainable
              growth.
            </p>
          </div>
        </div>

        <!-- Services Grid -->
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
          <div v-for="(service, index) in services" :key="index"
            class="scroll-reveal card-hover bg-white rounded-xl shadow-lg p-8 border border-gray-100"
            :style="{ animationDelay: `${index * 0.1}s` }">
            <div class="w-16 h-16 bg-primary-100 rounded-lg flex items-center justify-center mb-6">
              <!-- Chart Bar Icon -->
              <svg v-if="service.title === 'Strategic Consulting'" class="w-8 h-8 text-primary-800" fill="none"
                stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z">
                </path>
              </svg>
              <!-- Cog Icon -->
              <svg v-else-if="service.title === 'Digital Transformation'" class="w-8 h-8 text-primary-800" fill="none"
                stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z">
                </path>
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
              </svg>
              <!-- Currency Dollar Icon -->
              <svg v-else-if="service.title === 'Financial Advisory'" class="w-8 h-8 text-primary-800" fill="none"
                stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1">
                </path>
              </svg>
              <!-- Users Icon -->
              <svg v-else-if="service.title === 'Human Resources'" class="w-8 h-8 text-primary-800" fill="none"
                stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197m13.5-9a2.5 2.5 0 11-5 0 2.5 2.5 0 015 0z">
                </path>
              </svg>
              <!-- Megaphone Icon -->
              <svg v-else-if="service.title === 'Marketing & Branding'" class="w-8 h-8 text-primary-800" fill="none"
                stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="M11 5.882V19.24a1.76 1.76 0 01-3.417.592l-2.147-6.15M18 13a3 3 0 100-6M5.436 13.683A4.001 4.001 0 017 6h1.832c4.1 0 7.625-1.234 9.168-3v14c-1.543-1.766-5.067-3-9.168-3H7a3.988 3.988 0 01-1.564-.317z">
                </path>
              </svg>
              <!-- Trending Up Icon -->
              <svg v-else class="w-8 h-8 text-primary-800" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="M13 7h8m0 0v8m0-8l-8 8-4-4-6 6"></path>
              </svg>
            </div>
            <h3 class="text-xl font-semibold text-gray-900 mb-4">{{ service.title }}</h3>
            <p class="text-gray-600 mb-6">{{ service.description }}</p>
            <button @click="scrollToSection('contact')"
              class="text-primary-800 font-medium hover:text-primary-900 transition-colors duration-300">
              Learn More →
            </button>
          </div>
        </div>


      </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="section-padding bg-gray-50">
      <div class="container-custom">
        <!-- Section Header -->
        <div class="text-center mb-16">
          <div class="scroll-reveal">
            <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-4">
              Get In <span class="text-gradient">Touch</span>
            </h2>
            <p class="text-lg text-gray-600 max-w-2xl mx-auto">
              Ready to transform your business? Let's discuss how we can help you achieve your goals.
            </p>
          </div>
        </div>

        <div class="grid grid-cols-1 lg:grid-cols-2 gap-12">
          <!-- Contact Form -->
          <div class="scroll-reveal">
            <form @submit.prevent="handleSubmit" class="space-y-6">
              <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div>
                  <label for="firstName" class="block text-sm font-medium text-gray-700 mb-2">First Name</label>
                  <input id="firstName" v-model="form.firstName" type="text" required
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-transparent transition-colors duration-300"
                    placeholder="Enter your first name" />
                </div>
                <div>
                  <label for="lastName" class="block text-sm font-medium text-gray-700 mb-2">Last Name</label>
                  <input id="lastName" v-model="form.lastName" type="text" required
                    class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-transparent transition-colors duration-300"
                    placeholder="Enter your last name" />
                </div>
              </div>

              <div>
                <label for="email" class="block text-sm font-medium text-gray-700 mb-2">Email Address</label>
                <input id="email" v-model="form.email" type="email" required
                  class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-transparent transition-colors duration-300"
                  placeholder="Enter your email address" />
              </div>

              <div>
                <label for="message" class="block text-sm font-medium text-gray-700 mb-2">Message</label>
                <textarea id="message" v-model="form.message" rows="4" required
                  class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-transparent transition-colors duration-300 resize-none"
                  placeholder="Tell us about your project or inquiry"></textarea>
              </div>

              <button type="submit" class="btn-primary w-full" :disabled="isSubmitting">
                <span v-if="isSubmitting">Sending...</span>
                <span v-else>Send Message</span>
              </button>
            </form>
          </div>

          <!-- Contact Information -->
          <div class="scroll-reveal">
            <div class="bg-white rounded-lg p-8 shadow-lg">
              <h3 class="text-xl font-semibold text-gray-900 mb-6">Contact Information</h3>
              <div class="space-y-4">
                <div class="flex items-start space-x-4">
                  <div class="w-8 h-8 bg-primary-100 rounded-lg flex items-center justify-center flex-shrink-0">
                    <svg class="w-4 h-4 text-primary-800" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                        d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"></path>
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                        d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"></path>
                    </svg>
                  </div>
                  <div>
                    <div class="font-medium text-gray-900">Address</div>
                    <div class="text-gray-600">123 Business District<br>New York, NY 10001</div>
                  </div>
                </div>

                <div class="flex items-start space-x-4">
                  <div class="w-8 h-8 bg-primary-100 rounded-lg flex items-center justify-center flex-shrink-0">
                    <svg class="w-4 h-4 text-primary-800" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                        d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z">
                      </path>
                    </svg>
                  </div>
                  <div>
                    <div class="font-medium text-gray-900">Phone</div>
                    <div class="text-gray-600">+1 (555) 123-4567</div>
                  </div>
                </div>

                <div class="flex items-start space-x-4">
                  <div class="w-8 h-8 bg-primary-100 rounded-lg flex items-center justify-center flex-shrink-0">
                    <svg class="w-4 h-4 text-primary-800" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                        d="M3 8l7.89 4.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z">
                      </path>
                    </svg>
                  </div>
                  <div>
                    <div class="font-medium text-gray-900">Email</div>
                    <div class="text-gray-600">info@corporatepro.com</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Simple Footer -->
    <footer class="bg-gray-900 text-white py-12">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center">
          <h3 class="text-2xl font-bold text-gradient mb-4">CorporatePro</h3>
          <p class="text-gray-400 mb-6 max-w-md mx-auto">
            Empowering businesses with strategic consulting, innovative solutions, and proven results that drive
            sustainable growth and success.
          </p>
          <div class="text-gray-400 text-sm">
            © 2024 CorporatePro. All rights reserved.
          </div>
        </div>
      </div>
    </footer>
  </div>
</template>

<script setup lang="ts">
import { ref, onMounted } from 'vue'
import DemoInfoPanel from '@/components/DemoInfoPanel.vue'

onMounted(() => {
  console.log('HomeView mounted successfully!')
  console.log('Initial demo panel state:', isDemoPanelOpen.value)
})



// Service highlights data
const serviceHighlights = [
  {
    title: 'Strategic Consulting',
    description: 'Expert guidance to optimize your business strategy and operations.'
  },
  {
    title: 'Digital Transformation',
    description: 'Modernize your business with cutting-edge technology solutions.'
  },
  {
    title: 'Growth Solutions',
    description: 'Scalable strategies to accelerate your business growth and market presence.'
  }
]

// Services data
const services = [
  {
    title: 'Strategic Consulting',
    description: 'Expert guidance to optimize your business strategy, operations, and market positioning.'
  },
  {
    title: 'Digital Transformation',
    description: 'Modernize your business with cutting-edge technology solutions and digital strategies.'
  },
  {
    title: 'Financial Advisory',
    description: 'Comprehensive financial planning, analysis, and advisory services for business growth.'
  },
  {
    title: 'Human Resources',
    description: 'Strategic HR solutions to build high-performing teams and organizational culture.'
  },
  {
    title: 'Marketing & Branding',
    description: 'Build a strong brand presence and effective marketing strategies for market growth.'
  },
  {
    title: 'Compliance & Risk',
    description: 'Ensure regulatory compliance and implement effective risk management frameworks.'
  }
]



// Mobile menu state
const isMobileMenuOpen = ref(false)

// Demo panel state
const isDemoPanelOpen = ref(false)

// Demo panel functions
function toggleDemoPanel() {
  console.log('Toggling demo panel...')
  isDemoPanelOpen.value = !isDemoPanelOpen.value
}

// Navigation function
function scrollToSection(sectionId: string) {
  const element = document.getElementById(sectionId)
  if (element) {
    element.scrollIntoView({
      behavior: 'smooth',
      block: 'start'
    })
  } else {
    // Fallback: try to scroll to top if section not found
    if (sectionId === 'home') {
      window.scrollTo({
        top: 0,
        behavior: 'smooth'
      })
    }
  }
}

// Toggle mobile menu
function toggleMobileMenu() {
  isMobileMenuOpen.value = !isMobileMenuOpen.value
}

// Form data
const isSubmitting = ref(false)
const form = ref({
  firstName: '',
  lastName: '',
  email: '',
  message: ''
})

async function handleSubmit() {
  isSubmitting.value = true

  // Simulate form submission
  await new Promise(resolve => setTimeout(resolve, 2000))

  // Reset form
  form.value = {
    firstName: '',
    lastName: '',
    email: '',
    message: ''
  }

  isSubmitting.value = false

  // Show success message
  alert('Thank you for your message! We\'ll get back to you soon.')
}
</script>
