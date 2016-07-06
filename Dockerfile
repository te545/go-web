# Start from a Debian image with the latest version of Go installed
# and a workspace (GOPATH) configured at /go.
FROM golang

# Copy the local package files to the container's workspace.
ADD . /go/src/go-web

# Build golang web app 
RUN go install go-web 

# Run the go-web app by default when the container starts
ENTRYPOINT go-web

# Document that the service listens on port 8080.
EXPOSE 8001