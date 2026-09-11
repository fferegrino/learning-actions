#!/usr/bin/env bash
set -euo pipefail

case "$LANGUAGE" in
  ES|EN) ;;
  *)
    echo "::error::Unsupported language '$LANGUAGE'. Allowed values: ES, EN"
    exit 1
    ;;
esac

if [ "$LANGUAGE" = "ES" ]; then
  text="¡Hola, $WHO_TO_GREET!"
else
  text="Hello, $WHO_TO_GREET!"
fi

echo "text=$text" >> "$GITHUB_OUTPUT"
echo "$text"
