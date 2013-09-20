#!/bin/sh
find . -name "*~" | xargs rm -r

out=$(find . -name "*.ly")

for i in $out
do
    if test "$i" != "./template.ly"
    then lilypond $i
    fi
done

out=$(find . -name "*.pdf")

for i in $out
do mv $i pdf/.
done

out=$(find . -name "*.ps")

for i in $out
do mv $i ps/.
done
