#!/bin/bash
mkdir -p app
cd app
wget -L -O monero.tar.bz2 https://downloads.getmonero.org/cli/linux64
tar -xjf monero.tar.bz2
rm monero.tar.bz2
# rename only the freshly-extracted dir (has an arch prefix like x86_64-linux-gnu)
for d in monero-*/; do
  [ -e "$d" ] || continue
  case "$d" in
    monero-*-*-v*)
      d="${d%/}"
      mv "$d" "monero-${d##*-}" ;;
  esac
done
# delete any old or mangled versions, keeping only the newest monero-v* dir
newest=$(ls -d monero-v*/ 2>/dev/null | tail -1)
for d in monero-*/; do
  [ -e "$d" ] || continue
  case "$d" in
    monero-v*)
      [ "$d" = "$newest" ] || rm -rf "${d%/}" ;;
    *)
      rm -rf "${d%/}" ;;
  esac
done
