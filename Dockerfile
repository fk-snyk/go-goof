# Use a lightweight, official Go image as the base
FROM golang:1.21-alpine AS builder

# Set the working directory inside the image
WORKDIR /app

# Copy the Go source code into the working directory
COPY . .

# Build the Go application
RUN go build -o main .

# Use a smaller, production-ready image for the final image
FROM alpine:latest

# Copy the built binary from the builder stage
COPY --from=builder /app/main /app/main

# Set the working directory
WORKDIR /app

# Expose the port your application listens on (if applicable)
EXPOSE 8083
ENV PORT=8083

# Command to run the application when the container starts
CMD ["./main"]