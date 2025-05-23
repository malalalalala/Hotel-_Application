# Parchear en Antioquia

Frontend App

> This project was bootstrapped with [npm create vite@latest](https://github.com/vitejs/vite.git).

---

## Table of Contents

- [Tools version :gear:](#tools-versions)
- [Available Scripts :spiral_notepad:](#available-scripts)
- [Folder structure :card_index_dividers:](#folder-structure)
- [Config Visual Studio Code :gear:](#config-visual-studio-code)
- [Libraries :green_book:](#third-party-core-libraries)

---

## Tools versions

- Node:  v16.17.0
- NPM: version 8.15.0

## Available Scripts

In the project directory, you can run:

### `npm run dev`

Runs the app in the development mode.<br>
Open [http://localhost:3006](http://localhost:3006) to view it in the browser.

The page will reload if you make edits.<br>
You will also see any lint errors in the console.

### `npm test`

Launches the test runner in the interactive watch mode.<br>

For runing test in isolation
Example: npm run test -- Facturacion.test

### `npm run build`

Builds the app for production to the `build` folder.<br>
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.<br>
Your app is ready to be deployed!

## Learn More

---

## Folder structure

    /api: Connections made with endpoints
    /assets: resources (images, icons)
    /components: presentational components shared across features
    /scripts:
    /shared-components:
    /styles: themes, fonts
    
---

### Features

A feature is based off the `develop` branch and merged back into the `develop` branch.
It will eventually get into `main` when we make a release.

### Working Locally

```
# checkout develop, fetch the latest changes and pull them from remote into local
git checkout develop
git fetch
git pull origin develop

# create a feature branch that is based off develop
git checkout -b feature/XXX-sprint-X

# do your work
git add something
git commit -m "first commit"
git add another
git commit -m "second commit"

# rebase against develop to pull in any changes that have been made
# since you started your feature branch.
git fetch
git rebase origin/develop

... (30 líneas restantes)