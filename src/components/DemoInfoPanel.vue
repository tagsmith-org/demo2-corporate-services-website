<template>
    <div class="demo-info-container">
        <!-- Info Button -->
        <button @click="togglePanel"
            class="fixed top-4 right-4 z-[80] w-12 h-12 bg-yellow-400 hover:bg-yellow-500 rounded-full shadow-xl flex items-center justify-center transition-all duration-300 hover:scale-110 border-2 border-white"
            :class="{ 'bg-green-400 hover:bg-green-500': props.isOpen }">
            <svg v-if="!props.isOpen" class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    d="M8.228 9c.549-1.165 2.03-2 3.772-2 2.21 0 4 1.343 4 3 0 1.4-1.278 2.575-3.006 2.907-.542.104-.994.54-.994 1.093m0 3h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z">
                </path>
            </svg>
            <svg v-else class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
            </svg>
        </button>

        <!-- Info Panel -->
        <div class="fixed top-0 left-0 right-0 z-[70] bg-gradient-to-r from-yellow-50 to-orange-50 border-b-4 border-yellow-300 shadow-lg transition-transform duration-500 ease-in-out"
            :class="props.isOpen ? 'transform translate-y-0' : 'transform -translate-y-full'">
            <div class="container mx-auto px-4 py-6">
                <div class="max-w-4xl mx-auto">
                    <div class="flex items-start justify-between">
                        <div class="flex-1">
                            <h2 class="text-2xl font-bold text-gray-800 mb-4 flex items-center">
                                <svg class="w-8 h-8 text-yellow-600 mr-3" fill="none" stroke="currentColor"
                                    viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                        d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                </svg>
                                Corporate Services Website Demo
                            </h2>

                            <div class="grid md:grid-cols-2 gap-8">
                                <!-- Features Section -->
                                <div>
                                    <h3 class="text-lg font-semibold text-gray-700 mb-3">🚀 Key Features</h3>
                                    <ul class="space-y-2 text-gray-600">
                                        <li class="flex items-start">
                                            <span class="text-green-500 mr-2">✓</span>
                                            <span>Modern Vue 3 + TypeScript architecture</span>
                                        </li>
                                        <li class="flex items-start">
                                            <span class="text-green-500 mr-2">✓</span>
                                            <span>Responsive design with Tailwind CSS</span>
                                        </li>
                                        <li class="flex items-start">
                                            <span class="text-green-500 mr-2">✓</span>
                                            <span>Smooth scroll navigation</span>
                                        </li>
                                        <li class="flex items-start">
                                            <span class="text-green-500 mr-2">✓</span>
                                            <span>Interactive animations and transitions</span>
                                        </li>
                                        <li class="flex items-start">
                                            <span class="text-green-500 mr-2">✓</span>
                                            <span>Contact form with validation</span>
                                        </li>
                                        <li class="flex items-start">
                                            <span class="text-green-500 mr-2">✓</span>
                                            <span>Service showcase with call-to-action</span>
                                        </li>
                                    </ul>
                                </div>

                                <!-- Technical Details -->
                                <div>
                                    <h3 class="text-lg font-semibold text-gray-700 mb-3">⚙️ Technical Stack</h3>
                                    <ul class="space-y-2 text-gray-600">
                                        <li class="flex items-start">
                                            <span class="text-blue-500 mr-2">•</span>
                                            <span><strong>Frontend:</strong> Vue 3, TypeScript, Vite</span>
                                        </li>
                                        <li class="flex items-start">
                                            <span class="text-blue-500 mr-2">•</span>
                                            <span><strong>Styling:</strong> Tailwind CSS</span>
                                        </li>
                                        <li class="flex items-start">
                                            <span class="text-blue-500 mr-2">•</span>
                                            <span><strong>Build Tool:</strong> Vite</span>
                                        </li>
                                        <li class="flex items-start">
                                            <span class="text-blue-500 mr-2">•</span>
                                            <span><strong>Deployment:</strong> GitHub Actions + Nginx</span>
                                        </li>
                                        <li class="flex items-start">
                                            <span class="text-blue-500 mr-2">•</span>
                                            <span><strong>Domain:</strong> demo2.websmith-shop.com</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <!-- Demo Instructions -->
                            <div class="mt-6 p-4 bg-white rounded-lg border border-yellow-200">
                                <h3 class="text-lg font-semibold text-gray-700 mb-2">🎯 Try These Features</h3>
                                <div class="grid sm:grid-cols-2 gap-4 text-sm text-gray-600">
                                    <div>
                                        <strong>Navigation:</strong> Use the top menu to navigate between sections
                                    </div>
                                    <div>
                                        <strong>Services:</strong> Click "Explore Services" to view service offerings
                                    </div>
                                    <div>
                                        <strong>Contact:</strong> Fill out the contact form to get in touch
                                    </div>
                                    <div>
                                        <strong>Scroll:</strong> Experience smooth scrolling between sections
                                    </div>
                                </div>
                            </div>

                            <!-- About This Demo -->
                            <div class="mt-6 p-4 bg-white rounded-lg border border-blue-200">
                                <h3 class="text-lg font-semibold text-gray-700 mb-2">💡 About This Demo</h3>
                                <ul class="space-y-2 text-sm text-gray-600">
                                    <li><strong>Project:</strong> CorporatePro - Professional Corporate Services Website
                                    </li>
                                    <li><strong>Purpose:</strong> Showcase modern corporate website functionality with
                                        Vue 3 and TypeScript</li>
                                    <li><strong>Target:</strong> Professional services companies and consulting firms
                                    </li>
                                </ul>
                            </div>

                            <!-- Demo Limitations -->
                            <div class="mt-6 p-4 bg-white rounded-lg border border-orange-200">
                                <h3 class="text-lg font-semibold text-gray-700 mb-2">❗ Demo Limitations</h3>
                                <ul class="space-y-2 text-sm text-gray-600">
                                    <li><span class="text-red-500 mr-2">•</span><strong>No Real Contact:</strong>
                                        Contact form doesn't actually send emails</li>
                                    <li><span class="text-red-500 mr-2">•</span><strong>Demo Content:</strong> All
                                        content is placeholder information</li>
                                    <li><span class="text-red-500 mr-2">•</span><strong>No Backend:</strong> No
                                        server-side functionality implemented</li>
                                    <li><span class="text-red-500 mr-2">•</span><strong>No Database:</strong> No data
                                        persistence or storage</li>
                                    <li><span class="text-red-500 mr-2">•</span><strong>No Authentication:</strong> No
                                        user login or admin panel</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Overlay -->
        <div v-if="props.isOpen" @click="closePanel" class="fixed inset-0 bg-black bg-opacity-25 z-[65]"></div>
    </div>
</template>

<script setup lang="ts">
import { onMounted, onUnmounted } from 'vue'

interface Props {
    isOpen: boolean
}

interface Emits {
    (e: 'close'): void
}

const props = defineProps<Props>()
const emit = defineEmits<Emits>()

function togglePanel(): void {
    emit('close') // This will toggle the panel state in parent
}

function closePanel(): void {
    emit('close')
}

// Close panel on escape key
function handleKeydown(event: KeyboardEvent): void {
    if (event.key === 'Escape' && props.isOpen) {
        closePanel()
    }
}

// Add keyboard listener
onMounted(() => {
    if (typeof window !== 'undefined') {
        window.addEventListener('keydown', handleKeydown)
    }
})

onUnmounted(() => {
    if (typeof window !== 'undefined') {
        window.removeEventListener('keydown', handleKeydown)
    }
})
</script>

<style scoped>
.demo-info-container {
    font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
}
</style>
