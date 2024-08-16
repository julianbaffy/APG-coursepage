# syntax = docker/dockerfile:1

# Adjust NODE_VERSION as desired
ARG NODE_VERSION=20.16.0
FROM node:${NODE_VERSION}-slim as base

LABEL fly_launch_runtime="SvelteKit"

# SvelteKit app lives here
WORKDIR /app

# Set production environment
ENV NODE_ENV="production"

# Throw-away build stage to reduce size of final image
FROM base as build

# Install packages needed to build node modules
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y build-essential node-gyp pkg-config python-is-python3

# Install node modules
COPY --link .npmrc package-lock.json package.json ./
RUN npm ci --include=dev

# Copy application code
COPY --link . .

# Build application
RUN npm run build

# Remove development dependencies
RUN npm prune --omit=dev

# Final stage for app image
FROM base

# Copy built application
COPY --from=build /app/.sveltekit/output/client /app/client
COPY --from=build /app/.sveltekit/output/server /app/server
COPY --from=build /app/.sveltekit/output/prerendered /app/prerendered
COPY --from=build /app/node_modules /app/node_modules
COPY --from=build /app/package.json /app

# Expose port 3000
EXPOSE 3000

# Start the server
CMD ["node", "./server/index.js"]
