# Quickstart

**Tech stack:**

- Frontend: React + Vite + Tailwind CSS + Mantine UI
- Backend: Express.js + Postgres or MongoDB

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

## Database

Scripts to start and stop docker containers for Postgres and Mongo: 

- `make postgres-up` : Start postgres in a container
- `make postgres-down` : Stop postgres container
- `make mongo-up` : Start mongo in a container
- `make mongo-down` : Stop mongo container

## Local mail sending

Mailhog serves a local email registry at port 8025 - If ever there is a use case that needs email sending.

- `make mailhog-up` : Start mailhog in a container
- `make mailhog-down` : Stop mailhog container
