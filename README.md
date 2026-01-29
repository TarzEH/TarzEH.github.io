# TarzEH.github.io

Personal landing page — who I am, projects, writeups, and scripts.

- **Live (after push):** `https://tarzeh.github.io/` (or your GitHub username)
- **Contact:** oriash94@gmail.com  
- **LinkedIn:** [linkedin.com/in/oria](https://www.linkedin.com/in/oria/)

## Customize

- **About:** Edit the text in the `#about` section in `index.html` to match your LinkedIn bio and experience.
- **Projects:** Replace the placeholder in `#projects-grid` with real cards. Example:

```html
<div class="card">
  <h3>Project name</h3>
  <p>Short description.</p>
  <a href="/project-url">View →</a>
</div>
```

- **Writeups:** Same idea in `#writeups-grid` — use the same `.card` structure and link to your writeups.
- **Scripts:** Same in `#scripts-grid` — one `.card` per script with title, description, and link (e.g. to GitHub or a gist).

## Run locally

Open `index.html` in a browser, or use a simple server:

```bash
npx serve .
```

Then visit `http://localhost:3000`.

## Deploy

Push to the `main` branch of the repo. GitHub Pages will serve the site from the root (this `index.html` and `styles.css`).
