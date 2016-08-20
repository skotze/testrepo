docker run -i --rm --volumes-from cache --env GIT_URL="https://github.com/skotze/" --env GIT_REPO="testrepo" --name build build 

