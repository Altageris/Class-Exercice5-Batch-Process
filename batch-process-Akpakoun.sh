#! /bin/sh 
for f in "$1"/*; do
  if [ -f "$f" ]; then
    SIZE="$(du -sh "${f}" | cut -f1)"
    WORD="$(wc -w "${f}" | cut -f1)"
    echo "Processing $f file..."
    echo "File size $SIZE"
    echo "Number of Words $WORD"
  fi
done

