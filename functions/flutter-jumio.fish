function flutter-jumio --description 'Run flutter-run with jumio config'
    flutter run --dart-define=JUMIO_API_TOKEN=$JUMIO_API_TOKEN --dart-define=JUMIO_API_SECRET=$JUMIO_API_TOKEN --dart-define=JUMIO_DATACENTER=EU $argv
end
