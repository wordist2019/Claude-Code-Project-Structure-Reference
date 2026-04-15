# /deploy — Deploy to Staging

Build the project and push to the staging environment.

## Instructions

1. Run pre-deploy checks:
   - Lint: `npm run lint`
   - Tests: `npm run test`
   - Build: `npm run build`

2. If all checks pass:
   - Tag the build with current timestamp
   - Push to staging via `scripts/deploy.sh staging`
   - Notify the team via Notification hook

3. If any check fails:
   - Stop immediately
   - Report the failure with full error output
   - Do NOT proceed to deploy

## Usage

```
/deploy
/deploy staging
/deploy production   # Requires explicit confirmation
```
