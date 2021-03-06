function lintchanged() {
  git diff --name-only | xargs ./node_modules/.bin/eslint --quiet
}

function npmedit() {
  package=$1
  vim node_modules/$package/package.json -c "NERDTree node_modules/$package"
}

function npmver() {
  package=$1
  jq '.version' node_modules/$package/package.json | awk -F\" '{print $2}'
}


