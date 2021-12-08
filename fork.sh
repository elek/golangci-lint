#!/usr/bin/env bash

set -ex

srcdirs=(test scripts internal pkg cmd )
for dir in "${srcdirs[@]}"; do
   find $dir -name "*.go" | xargs -n1 sed -i 's/github.com\/golangci\/golangci-lint\/test\//github.com\/elek\/golangci-lint\/test\//g'
   find $dir -name "*.go" | xargs -n1 sed -i 's/github.com\/golangci\/golangci-lint\/pkg\//github.com\/elek\/golangci-lint\/pkg\//g'
   find $dir -name "*.go" | xargs -n1 sed -i 's/github.com\/golangci\/golangci-lint\/internal\//github.com\/elek\/golangci-lint\/internal\//g'
done

git add .
git commit -m "[GENERATED] automatic package rename (revert it before merge)"

