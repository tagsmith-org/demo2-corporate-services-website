# Corporate Services Website

A professional corporate services website built with Vue 3, TypeScript, and Tailwind CSS. This modern, responsive website showcases corporate services with a trustworthy and formal design theme.

## 🚀 Quick Deploy

### 1. Настройка GitHub Secrets
В настройках репозитория (Settings → Secrets and variables → Actions) добавьте:
- `HOST` - IP адрес сервера
- `PORT` - SSH порт (обычно 22)
- `USER` - имя пользователя на сервере
- `SSH_KEY` - приватный SSH ключ

### 2. Деплой
Просто запушьте изменения в main ветку - автоматический деплой запустится!

🌐 **Сайт будет доступен:** https://demo2.websmith-shop.com

## 🎨 Design Theme

- **Primary Color**: #1E3A8A (Deep Blue)
- **Secondary Color**: #FACC15 (Yellow)
- **Background**: White
- **Font**: Roboto, sans-serif
- **Style**: Trustworthy and formal corporate aesthetic

## ✨ Features

### 🏠 Hero Section
- Full-screen hero with professional corporate imagery
- Company name and compelling slogan
- Service highlights with animated icons
- Call-to-action buttons
- Smooth scroll indicator

### 📖 About Us Section
- Company overview and mission
- Key statistics and achievements
- Professional team imagery
- Trust indicators

### 🛠️ Services Section
- Six comprehensive service offerings
- Icon cards with hover animations
- Detailed feature lists
- Professional service descriptions

### 📊 Case Studies Section
- Client success stories
- Before/after results
- Professional testimonials
- Star ratings and client photos

### 📞 Contact Section
- Professional contact form
- Contact information display
- Map integration placeholder
- Business hours and location details

### 🎯 Additional Features
- **Responsive Design**: Mobile-first approach
- **Scroll Animations**: Smooth reveal animations on scroll
- **Hover Effects**: Interactive card and button animations
- **Professional Imagery**: High-quality Unsplash images
- **Accessibility**: Proper semantic HTML and ARIA labels
- **Performance**: Optimized for fast loading

## 🚀 Technology Stack

- **Frontend Framework**: Vue 3 with Composition API
- **Language**: TypeScript
- **Styling**: Tailwind CSS
- **Build Tool**: Vite
- **UI Components**: Element Plus
- **State Management**: Pinia
- **Router**: Vue Router 4
- **Icons**: Custom SVG icons

## 📦 Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd corporate-services-website
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Start development server**
   ```bash
   npm run dev
   ```

4. **Build for production**
   ```bash
   npm run build
   ```

5. **Preview production build**
   ```bash
   npm run preview
   ```

## 🏗️ Project Structure

```
src/
├── components/
│   ├── layout/
│   │   ├── Navigation.vue
│   │   └── Footer.vue
│   └── sections/
│       ├── AboutSection.vue
│       ├── ServicesSection.vue
│       ├── CaseStudiesSection.vue
│       └── ContactSection.vue
├── views/
│   └── HomeView.vue
├── router/
│   └── index.ts
├── style.css
├── main.ts
└── App.vue
```

## 🎨 Customization

### Colors
The color scheme can be customized in `tailwind.config.js`:
```javascript
colors: {
  primary: {
    800: '#1E3A8A', // Main blue
    // ... other shades
  },
  secondary: {
    400: '#FACC15', // Main yellow
    // ... other shades
  }
}
```

### Content
- Update company information in respective section components
- Replace images with your own professional photos
- Modify service offerings and case studies
- Update contact information

### Animations
Custom animations are defined in `tailwind.config.js` and can be adjusted for timing and effects.

## 📱 Responsive Design

The website is fully responsive with breakpoints:
- **Mobile**: < 768px
- **Tablet**: 768px - 1024px
- **Desktop**: > 1024px

## 🔧 Development

### Code Style
- TypeScript for type safety
- Vue 3 Composition API with `<script setup>`
- Tailwind CSS for styling
- Component-based architecture
- Semantic HTML structure

### Performance Optimizations
- Lazy loading for images
- Optimized bundle splitting
- Efficient CSS with Tailwind
- Minimal JavaScript footprint

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📞 Support

For questions or support, please contact:
- Email: info@corporatepro.com
- Phone: +1 (555) 123-4567

---

Built with ❤️ using Vue 3, TypeScript, and Tailwind CSS
