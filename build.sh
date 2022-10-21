#/bin/bash -e
[ -z $GITHUB_TOKEN ] && GITHUB_TOKEN=$(cat .github_token)
if [[ -z $GITHUB_TOKEN ]]; then
    echo 'NO GITHUB_TOKEN SET.'
    echo 'Please set one using \`export GITHUB_TOKEN=\`'
    exit 1
fi

export GITHUB_TOKEN=$GITHUB_TOKEN

yarn;

function outputEmoji() {
if [[ $? -eq 0 ]]; then
    echo "[build-roadmaps]: ✅";
else
    echo "[build-roadmaps]: ❌";
fi
}


#Generate 4 README MD project roadmap breakdowns.
echo "[build-roadmaps]: Building dialogware roadmap"
#node index.js ./project-configs/dialogware.conf.js -gsp > ./output/dialogware/README.md
node index.js input/dialogware.conf.js -gsp > output/ROADMAP.md
outputEmoji
sleep 3

