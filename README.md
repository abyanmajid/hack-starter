# Quickstart

This starter uses React + Vite in the frontend, and Express.js in the backend.

**Required Installations:**

- Node.js (v20 or later)
- NPM (v10 or later)
- Docker Engine (may not be needed)

To get started, clone the repository

```
git clone https://github.com/abyanmajid/hack-starter.git
cd hack-starter
```

Initialize environment variables in `.env`

```
cp .env.default .env
```

Have two terminals open to serve the frontend and backend respectively. To start the frontend, execute

```
make serve-frontend
```

To start the backend, execute

```
make serve-backend
```

**UI Library:** We're using [Mantine UI](https://mantine.dev/) as the component library for the frontend. It provides free [prebuilt designs](https://ui.mantine.dev/) for annoying stuff like navigation bars and notifications.

## Database

Should we need a database, there are scripts for starting PostgreSQL and MongoDB as docker containers.

- `make postgres-up` : Start postgres in a container
- `make postgres-down` : Stop postgres container
- `make mongo-up` : Start mongo in a container
- `make mongo-down` : Stop mongo container

## Local mail sending

Should we have a mail-sending feature, there is a script for starting a local email storage using mailhog in a container.

- `make mailhog-up` : Start mailhog in a container
- `make mailhog-down` : Stop mailhog container
