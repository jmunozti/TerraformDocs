#!/bin/bash
set -e
echo "Begin"
echo "============================================"

#Generate documentation
rm -rf terraform_docs
mkdir terraform_docs

for i in $(ls modules); do
	 echo "Generating the documentation for the module $i"
	 terraform-docs markdown modules/$i > terraform_docs/$i.md
done;
chmod -R 755 terraform_docs

echo "============================================"
echo "End"
