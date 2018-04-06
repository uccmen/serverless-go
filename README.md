## Prerequisites
1. `docker` and `yarn`

## Development
1. Clone this repo
2. run `yarn global add supervisor aws-sam-local`
3. run `make` to download dependencies and build lambdas
4. run `make watch` to start watching for changes during development
    - If this is the first time you execute this command, it will take some time while it downloads the appropriate Docker images that SAM local needs to serve the application in your machine
5. visit http://localhost:3000/hello