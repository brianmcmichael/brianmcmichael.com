# brianmcmichael.com

A minimalist single-page personal site — a short intro, a few links, and an
email address. There is no build step, JavaScript, tracking, framework, or
external request: just `index.html` with inline CSS and two local assets.

## Run locally

```sh
make serve      # serves at http://localhost:8000
make open       # open it in your browser
make serve PORT=3000   # use a different port
```

Or without make: `python3 -m http.server 8000`.

## Structure

- `index.html` — the whole site (markup and styles)
- `img/avatar.png` — profile image
- `favicon.svg` — tab icon
- `CNAME` — custom domain for GitHub Pages
- `.nojekyll` — serve files as-is (skip Jekyll)

## Deploy

Hosted on GitHub Pages from the repo root. The `CNAME` file points the apex
domain `brianmcmichael.com` at the site; make sure DNS is configured and
"Enforce HTTPS" is enabled in the repository's Pages settings.

The `brianmcmichael.com/` subdirectory (the old site) is a local content
reference only and is git-ignored — it is not part of the deploy.
