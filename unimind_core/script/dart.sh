cd ../lib/src/models/grpc \

protoc --dart_out=grpc:./dart_gen --plugin=protoc-gen-dart=$HOME/.pub-cache/bin/protoc-gen-dart --proto_path=./proto ./proto/server.proto \
    ./proto/server.proto \
    ./proto/user.proto \
    ./proto/meeting.proto \
    ./proto/calendar.proto \
    ./proto/payment_info.proto \
    ./proto/device_info.proto \
    ./proto/web_socket.proto \