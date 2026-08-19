# FIGHT CLUB Android APK

Android wrapper for the supplied `Index(4).html` project.

## GitHub APK build

1. Upload this entire project to a GitHub repository.
2. Open **Actions**.
3. Select **Build Fight Club APK**.
4. Click **Run workflow** (or push to `main`/`master`).
5. When the workflow finishes, open the workflow run.
6. Download the `fight-club-apk` artifact.

The APK is generated at:
`app/build/outputs/apk/release/app-release.apk`

## Optional music

The supplied HTML references `fight-club-theme.mp3`. Put that file in:
`app/src/main/assets/`

The app will still build without it, but the background music will not play.
