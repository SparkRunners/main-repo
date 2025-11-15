# Frontend User/Admin Services — Deployment report
This report describes the deployment process for the Frontend User and Admin Services of the SparkRunner project. Both services are built with React and Vite, and are hosted on GitHub Pages. The report explains the steps required to deploy the applications, including automatic deployment via GitHub Actions and manual deployment using the gh-pages package. It also highlights the configuration changes needed to support SPA routing and ensure that the applications work correctly after deployment.

## Table of contents
- [Frontend User/Admin Services — Deployment report](#frontend-useradmin-services--deployment-report)
  - [Table of contents](#table-of-contents)
  - [GitHub Pages](#github-pages)
  - [Changes Needed](#changes-needed)
  - [How to deploy (2 methods)](#how-to-deploy-2-methods)
      - [Automatic deployment method (Github Actions)](#automatic-deployment-method-github-actions)
      - [Manual deployment method (build and deploy locally using gh-pages)](#manual-deployment-method-build-and-deploy-locally-using-gh-pages)
  - [References](#references)

## GitHub Pages
- Hosted at: 
   1.  https://sparkrunners.github.io/frontend-user-service/
   2.  https://sparkrunners.github.io/frontend-admin-service/
- The gh-pages branches contain the production builds.
- SPA fallback works using 404.html copied from index.html on build and deployment phase.

## Changes Needed
- Install React Router to enable routing inside the React app for multiple pages.
    ```bash
    npm install react-router-dom
    ```
- Wrap <App /> in BrowserRouter with basename in main.jsx to ensure React Router works correctly with GitHub Pages URLs and respects the repository path.
    ```bash
    <BrowserRouter basename="/frontend-user-service">
        <App />
    </BrowserRouter>
    ```
- Update package.json:
    1. Add homepage to tell Vite/GitHub Pages where the app will be hosted so asset paths are correct.
        ```bash
        "homepage": "https://sparkrunners.github.io/frontend-user-service/",
        ```
    3. Add build and deploy scripts:
        ```bash
            "build": "vite build && cp dist/index.html dist/404.html",
            "deploy": "gh-pages -d dist",
        ```
- Update vite.config.js to ensure all compiled assets reference the correct base path for GitHub Pages.
    ```bash
        export default defineConfig({
        plugins: [react()],
            base: '/frontend-user-service/'     #a base route from repor name
        })
    ```

- Add SPA fallback so refreshing or directly visiting deep routes doesn’t produce a 404 error on GitHub Pages.
    1. Manually:
    copy index.html to a new file 404.html inside the /public folder and after runing build copy to ./dist.
    2. Automatic:
     The build script command added above in the package.json handles the copying to the ./dist but you still need to create the 404.html file from index.html, manually in /public. 



## How to deploy (2 methods)
#### Automatic deployment method (Github Actions)
   - Triggered on push or PR to main or dev.
   - Workflow builds the app and deploys the dist/ folder to gh-pages.
   - You don’t need to do anything manually.


#### Manual deployment method (build and deploy locally using gh-pages)
If you want to deploy locally: 
1. Install/update gh-pages.
```bash
npm install --save gh-pages
```
2. Build locally
```bash
npm run build
```
3. Test locally
```bash
npm run preview
```
4. Deploy manually
```bash
npm run deploy
```
5. Test the published app on:
    1. https://sparkrunners.github.io/frontend-user-service/ 
    2. https://sparkrunners.github.io/frontend-admin-service/
---

## References
1.  (Deployment steps) https://create-react-app.dev/docs/deployment/#step-1-add-homepage-to-packagejson

2.  (SPA Deployment fix) https://dev.to/lico/handling-404-error-in-spa-deployed-on-github-pages-246p