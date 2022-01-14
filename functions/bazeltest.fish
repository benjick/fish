function bazeltest -d 'Run all tests or one' -a module
    if test -n "$module"
        ./node_modules/.bin/bazelisk test //modules/$module:test \
            --test_env GOOGLE_APPLICATION_CREDENTIALS=$GOOGLE_APPLICATION_CREDENTIALS \
            --test_env CLOUD_SQL_PATH_PREFIX=$CLOUD_SQL_PATH_PREFIX \
            --test_env LOCAL_POSTGRES="true" \
            --test_env GOOGLE_CLOUD_PROJECT=$GOOGLE_CLOUD_PROJECT
    else
        npm run test-with-env -- \
            --test_env LOCAL_POSTGRES="true" \
            --test_env GOOGLE_CLOUD_PROJECT=$GOOGLE_CLOUD_PROJECT
    end
end
