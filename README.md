# learn-cicd-starter (Notely)

![ci-test-workflows-badge](https://github.com/GianniBuoni/learn-cicd-starter/actions/workflows/ci.yml/badge.svg)

This repo contains the starter code for the "Notely" application for the "Learn CICD"
course on [Boot.dev](https://boot.dev).

## Local Development

Make sure you're on Go version 1.22+. Or use the included devenv file to enter a development shell!

Create a `.env` file in the root of the project with the following contents:

```bash
PORT="8080"
```

Run the server:

```bash
just run
```

_This starts the server in non-database mode._ It will serve a simple webpage
at `http://localhost:8080`.

GianniBuoni's version of Boot.dev's Notely app
