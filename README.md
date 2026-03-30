<div align="center">

![copier-shared](https://socialify.git.ci/liblaf/copier-shared/image?description=1&forks=1&issues=1&logo=https%3A%2F%2Fraw.githubusercontent.com%2Fcopier-org%2Fcopier%2Frefs%2Fheads%2Fmaster%2Fimg%2Flogo.svg&name=1&owner=1&pattern=Transparent&pulls=1&stargazers=1&theme=Auto)

[![Made with Copier](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/copier-org/copier/master/img/badge/badge-black.json)](https://github.com/copier-org/copier)
[![Shared / Copier Update](https://github.com/liblaf/copier-shared/actions/workflows/shared-copier-update.yaml/badge.svg)](https://github.com/liblaf/copier-shared/actions/workflows/shared-copier-update.yaml)
[![Shared / MegaLinter](https://github.com/liblaf/copier-shared/actions/workflows/shared-mega-linter.yaml/badge.svg)](https://github.com/liblaf/copier-shared/actions/workflows/shared-mega-linter.yaml)
[![pre-commit.ci status](https://results.pre-commit.ci/badge/github/liblaf/copier-shared/main.svg)](https://results.pre-commit.ci/latest/github/liblaf/copier-shared/main)

[Changelog](https://github.com/liblaf/copier-shared/blob/main/CHANGELOG.md) · [Issues](https://github.com/liblaf/copier-shared/issues) · [Pull Requests](https://github.com/liblaf/copier-shared/pulls) · [Copier Docs](https://copier.readthedocs.io/)

![Rule](https://cdn.jsdelivr.net/gh/andreasbm/readme/assets/lines/rainbow.png)

</div>

## 👋 About

`copier-shared` is the maintenance layer for a repository. It is a
[Copier](https://github.com/copier-org/copier) template that adds the boring
but valuable parts of project hygiene for you: shared pre-commit hooks,
automation workflows, and a committed answers file so the template can be
re-applied later without guesswork.

## ✨ What You Get

- 🪝 A generated `.pre-commit-config.yaml` with Ruff, Biome,
  `dotenv-linter`, `shellcheck`, `rumdl`, and the standard pre-commit safety
  hooks.
- 🤖 Three GitHub Actions workflows for weekly Copier refresh PRs,
  MegaLinter autofix PRs, and scheduled review runs.
- 🧾 A generated answers file at `.config/copier/.copier-answers.shared.yaml`
  so updates stay reproducible.
- 🧹 Cleanup tasks that remove older shared files like `.envrc`, legacy
  Renovate config, and retired workflow names when the template is refreshed.
- 🧩 A small prompt surface: project name, slug, author, email, license,
  GitHub owner, and repository name.

## 🚀 Use It

```bash
copier copy --trust gh:liblaf/copier-shared .
```

Copier will ask for the project metadata it needs, then generate the shared
files in your repository.

## 📦 Generated Files

| Path | Why it exists |
| ---- | ------------- |
| `.config/copier/.copier-answers.shared.yaml` | Saves the answers used to apply the template. |
| `.config/rumdl.toml` | Keeps Markdown linting rules aligned across repos. |
| `.pre-commit-config.yaml` | Installs the shared formatting, linting, and safety hooks. |
| `.github/workflows/shared-copier-update.yaml` | Opens a weekly PR with the latest template changes. |
| `.github/workflows/shared-mega-linter.yaml` | Runs MegaLinter and opens an autofix PR when possible. |
| `.github/workflows/shared-review.yaml` | Runs scheduled review jobs for automation PRs. |

## 🔄 Update An Existing Repo

The answers file is committed on purpose. To re-apply the template locally, run:

```bash
copier recopy --trust --answers-file .config/copier/.copier-answers.shared.yaml
```

The bundled `Shared / Copier Update` workflow follows the same approach on a weekly schedule and turns the result into a pull request.

## 🛠️ Work On The Template

```bash
git clone https://github.com/liblaf/copier-shared.git
cd copier-shared
```

- 🧱 Edit `template/` when you want to change the files generated in downstream
  repositories.
- ⚙️ Edit `copier.yaml` when you want to change prompts, defaults, or cleanup
  tasks.
- 🧪 Re-run Copier against a scratch repository to verify the generated output
  before publishing a new tag.

## 🤝 Contributing

Issues and pull requests are welcome. If you want to improve the shared
defaults, tighten automation, or simplify the update story, this repo is the
right place to do it.

---

#### 📝 License

Copyright © 2024 [liblaf](https://github.com/liblaf). <br />
This project is licensed under the [MIT License](./LICENSE).
