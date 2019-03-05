#!/bin/sh

AUTOLOAD=vim/autoload/xml
FTDETECT=vim/ftdetect/S1000D.vim

rm -f "$FTDETECT"

echo "au BufRead *.[Xx][Mm][Ll]" >> "$FTDETECT"

first=true

for f in schemas/*/xml_schema_flat/*
do
	issue=$(basename $(dirname $(dirname "$f")))
	basenoext=$(basename "$f" .xsd)

	# Ignore these non-S1000D schemas
	case "$basenoext" in
		dc|rdf|xcf|xlink) continue;;
	esac

	base=$(basename "$f")
	nsprefix=$(echo "$issue" | tr -d '-')
	ns="${nsprefix}_${basenoext}"
	out="${AUTOLOAD}/${ns}.vim"

	echo "Converting ${f} to ${out}..."

	xsltproc -stringparam namespace "$ns" xsd2omni.xsl "$f" > "$out"

	if $first
	then
		echo "\\ if search('noNamespaceSchemaLocation=\"http://www.s1000d.org/${issue}/xml_schema_flat/${base}\"','n') | call xmlcomplete#CreateConnection('${ns}')" >> "$FTDETECT"
		first=false
	else
		echo "\\ | elseif search('noNamespaceSchemaLocation=\"http://www.s1000d.org/${issue}/xml_schema_flat/${base}\"','n') | call xmlcomplete#CreateConnection('${ns}')" >> "$FTDETECT"
	fi
done

echo "\\ | endif" >> "$FTDETECT"
