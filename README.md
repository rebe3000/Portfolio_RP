# Portfolio_RP

Personal website content for GitHub Pages (Hugo + blogdown compatible).

## Folder structure

```
Portfolio_RP/
├── config.toml              # Site title, menu, theme settings
├── content/
│   ├── _index.md            # Home page
│   ├── about/_index.md      # About page
│   ├── research/
│   │   ├── _index.md        # Research overview
│   │   └── projects/        # One folder per research project
│   └── cv/_index.md         # CV page
├── static/
│   ├── img/                 # Photos, logos, social sharing image
│   └── files/               # CV PDF and other downloads
├── assets/                  # Custom CSS (optional, for later)
└── themes/                  # Hugo theme goes here (added via blogdown)
```

## Pages

| Page     | Edit this file                    | Live URL (once published) |
|----------|-----------------------------------|---------------------------|
| Home     | `content/_index.md`               | `/`                       |
| About    | `content/about/_index.md`         | `/about/`                 |
| Research | `content/research/_index.md`      | `/research/`              |
| CV       | `content/cv/_index.md`            | `/cv/`                    |

## Next steps

1. Fill in your content in the `content/` files
2. Add a profile photo to `static/img/`
3. Add your CV PDF to `static/files/cv.pdf`
4. When ready, initialize Git and push to GitHub
5. Set up blogdown + Hugo Apéro theme to build and publish the site
