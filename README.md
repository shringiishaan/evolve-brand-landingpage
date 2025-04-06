# Evolve Digital Marketing Agency Landing Page

A modern, responsive landing page for Evolve Digital Marketing Agency built with Next.js and Tailwind CSS.

## 🚀 Features

- Modern, responsive design
- Dark mode support
- Optimized performance
- SEO-friendly
- Interactive components
- Gradient-based design system

## 🛠️ Tech Stack

- **Framework**: Next.js 14
- **Styling**: Tailwind CSS
- **Fonts**: Geist Sans & Geist Mono
- **Deployment**: Vercel (recommended)

## 📁 Project Structure

```
evolve-brand-landingpage/
├── src/
│   └── app/
│       ├── page.tsx           # Main landing page component
│       ├── layout.tsx         # Root layout with metadata
│       └── globals.css        # Global styles
├── public/                    # Static assets
├── package.json              # Dependencies
└── tailwind.config.js        # Tailwind configuration
```

## 🎨 Components

### 1. Hero Section (`page.tsx`)
- **Purpose**: Main introduction to Evolve's services
- **Features**:
  - Gradient text headline
  - Subheading
  - Two CTA buttons (Get Started, Book Consultation)
- **Responsive**: Adapts to mobile and desktop views

### 2. Why Digital Marketing Section (`page.tsx`)
- **Purpose**: Highlights key benefits of digital marketing
- **Components**:
  - Three benefit cards with icons
  - Each card features:
    - Custom icon
    - Title
    - Description
- **Benefits Highlighted**:
  - Measurable Results
  - Targeted Reach
  - Cost-Effectiveness

### 3. Services Section (`page.tsx`)
- **Purpose**: Showcases Evolve's core services
- **Layout**: 2x2 grid on desktop, single column on mobile
- **Services Included**:
  1. **SEO Services**
     - Keyword Research & Optimization
     - On-Page & Technical SEO
     - Content Strategy
  2. **Social Media Marketing**
     - Content Creation & Management
     - Community Management
     - Paid Social Advertising
  3. **Content Marketing**
     - Blog Writing & Management
     - Email Marketing
     - Video Content Creation
  4. **PPC Advertising**
     - Google Ads Management
     - Display Advertising
     - Remarketing Campaigns

### 4. CTA Section (`page.tsx`)
- **Purpose**: Final conversion section
- **Features**:
  - Gradient background
  - Compelling headline
  - Action button
  - Responsive design

## 🎯 Design System

### Colors
- Primary: Blue (#3B82F6)
- Secondary: Purple (#8B5CF6)
- Background: White to Gray-50 gradient
- Dark Mode: Gray-900 to Gray-800 gradient

### Typography
- Headings: Geist Sans
- Body: Geist Sans
- Monospace: Geist Mono

### Components
- Buttons: Rounded-full with hover effects
- Cards: Rounded-xl with shadow
- Icons: Custom SVG with consistent styling

## 🚀 Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/evolve-brand-landingpage.git
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Run the development server:
   ```bash
   npm run dev
   ```

4. Open [http://localhost:3000](http://localhost:3000) in your browser.

## 📦 Production Build

1. Build the application:
   ```bash
   npm run build
   ```

2. Start the production server:
   ```bash
   npm start
   ```

## 🔧 Configuration

### Environment Variables
Create a `.env.local` file in the root directory:
```env
NEXT_PUBLIC_SITE_URL=http://localhost:3000
```

### Tailwind Configuration
The project uses a custom Tailwind configuration for:
- Custom colors
- Font families
- Responsive breakpoints
- Dark mode support

## 📝 Customization

### Updating Content
1. Modify text content in `src/app/page.tsx`
2. Update metadata in `src/app/layout.tsx`
3. Add new sections as needed

### Styling
1. Update colors in `tailwind.config.js`
2. Modify component styles in respective files
3. Add new utility classes as needed

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📞 Contact

For any queries or support, please contact:
- Email: [your-email@example.com]
- Website: [https://evolve-marketing.com]
