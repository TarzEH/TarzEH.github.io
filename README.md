# TarzEH.github.io

One-page personal site — name, photo, infographic info, GitHub projects, writeups, scripts.

- **Live:** `https://tarzeh.github.io/` (or your GitHub username)
- **Contact:** oriash94@gmail.com · [LinkedIn](https://www.linkedin.com/in/oria/)

## Profile photo

Put a square photo in the **same folder as `index.html`** and name it **`profile.jpg`**.  
The page will show it in the center. If the file is missing, your initials “OA” are shown.

## Customize

- **GitHub username:** In `index.html`, replace `TarzEH` with your GitHub username in the links (`https://github.com/TarzEH`).
- **GitHub project links:** In the “GitHub · Projects” section, add more links like this:

```html
<a href="https://github.com/YOUR_USERNAME/your-repo" target="_blank" rel="noopener" class="link-card">
  <span class="link-icon">↗</span>
  <span>your-repo</span>
</a>
```

- **Writeups / Scripts:** When you have links, add them the same way inside the “Writeups” and “Scripts” sections (use the same `link-card` class).

## Run locally

Open `index.html` in a browser, or:

```bash
npx serve .
```

Then visit `http://localhost:3000`.

## Deploy

Push to the `main` branch. GitHub Pages serves the site from the root.
