set -ex   # add set -ex

# delete the temporary file
# ls -d .* | grep -E "^\.[0-9a-fA-F]{32}$" | xargs rm

# determine message
if [ -z "$1" ]
then
    echo "Commit message is required."
    exit 1
else
    message=$1
fi

# add changes to local respoisity
git add .

# push to remote respoisity
git commit --allow-empty -m "$message"
