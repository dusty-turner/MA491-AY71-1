# MA491 &middot; AY27-1

Source for the MA491 course website, built with [Quarto](https://quarto.org)
and published to GitHub Pages automatically on every push to `main`.

**Live site:** https://dusty-turner.github.io/MA491-AY71-1/

## Adding content

See **[CONTRIBUTING.md](CONTRIBUTING.md)**. The short version: copy
`lessons/_template.qmd`, edit it, render locally, commit (including the
`_freeze/` folder), push.

## Layout

```
_quarto.yml                  site config: title, navbar, theme
styles.scss                  colors and CSS (three variables at the top)
index.qmd                    home page
syllabus.qmd
schedule.qmd
lessons/
  index.qmd                  auto-generated listing of every lesson
  _template.qmd              copy this to start a new lesson
  01-intro.qmd
.github/workflows/publish.yml  renders and deploys the site
_extras/                     scratch files, not published
```

## Local preview

```bash
quarto preview
```

Or hit **Render** in RStudio.
