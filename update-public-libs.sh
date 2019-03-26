#!/usr/bin/env bash
set -e

PUBLIC_LIBS="public.txt"
PUBLIC_DIRECTORY=${1}

if [[ ! -d "PUBLIC_DIRECTORY" ]]; then
  echo "Provide path to public git repository"
  exit
fi

# Copy the libraries over to public
cat ${PUBLIC_LIBS} | xargs -I lib cp lib ${PUBLIC_DIRECTORY}/

