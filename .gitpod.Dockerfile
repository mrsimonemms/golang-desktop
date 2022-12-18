FROM gitpod/workspace-full-vnc

# Gitpod Package Manager
RUN curl -sfL gpm.simonemms.com | bash \
  && gpm install pre-commit

# Golang dependencies
RUN go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest \
  && go install github.com/kisielk/errcheck@latest \
  && go install mvdan.cc/gofumpt@latest \
  && go install honnef.co/go/tools/cmd/staticcheck@latest \
  && go install golang.org/x/tools/cmd/goimports@latest
