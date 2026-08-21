# How to add to the course site

Seven of us push to this repo. These are the conventions that keep it from
turning into a merge-conflict machine.

## One-time setup

1. Install [R](https://cran.r-project.org) and
   [RStudio](https://posit.co/download/rstudio-desktop/). RStudio ships with
   Quarto, so there is nothing else to install.
2. Clone the repo and open `AY27-1-MA491.Rproj`.

## The everyday loop

```bash
git pull                 # ALWAYS first
# ...edit...
```

In RStudio, click **Render** (or run `quarto preview` in the Terminal) to see
your changes locally at <http://localhost:4200>.

```bash
git add -A
git commit -m "Lesson 4: add regression example"
git push
```

Pushing to `main` triggers the **Publish site** action. Two to three minutes
later the change is live. Watch it under the repo's *Actions* tab.

## Claiming your own page

Your page is `people/your-name.qmd`. Edit it directly &mdash; nobody else
touches that file, so you can never hit a conflict there. If yours is missing,
copy `people/_template.qmd` to `people/first-last.qmd`; it shows up on the
People page automatically, no nav editing required.

## Adding a lesson

1. Copy `lessons/_template.qmd` to `lessons/NN-short-name.qmd`.
2. Fill in the YAML header. The `lesson:` number controls ordering on the
   Lessons page; `description:` is the blurb students see there.
3. Render locally at least once. This writes a `_freeze/` folder — **commit it**.
   That is what lets the site build on GitHub without re-running your R code.
4. Add a row for the lesson in `schedule.qmd`.

The template itself starts with `_`, so Quarto never publishes it.

## Staying out of each other's way

- **Pull before you edit.** Most conflicts here come from stale copies, not
  from two people editing the same line.
- **Own your files.** Editing only `lessons/07-*.qmd` and your own
  `people/*.qmd` means you can never conflict with anyone else.
- **Shared files are `_quarto.yml`, `schedule.qmd`, `styles.scss`.** These are
  the ones that conflict. Keep edits to them small and push them promptly
  rather than sitting on them for a week.
- **For anything big** (restructuring the nav, changing the theme), work on a
  branch and open a pull request so the other six can see it coming.

## Changing how the site looks

`styles.scss` has three colors at the top. Changing those re-skins the whole
site; you rarely need to touch anything below them. Navigation lives in the
`navbar:` section of `_quarto.yml`.

## When the build fails

Check the *Actions* tab and open the red run. Nearly always it is one of:

- A `.qmd` with broken YAML (a stray colon or an unclosed quote).
- An R chunk that errors, in a file whose `_freeze/` output was not committed.
- A link to a page that does not exist.

Reproduce it locally with `quarto render` — the same error shows up there.
