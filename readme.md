



执行命令

emcc -s EXPORTED_FUNCTIONS="['_add']" example.c -s WASM=1 -s SIDE_MODULE=1 -s BINARYEN_ASYNC_COMPILATION=0 -o example.wasm

-O3 
-g4 --source-map-base

执行命令

wasm2wat example.wasm -o example.wast

wat2wasm example.wast -o example.wasm


执行命令

python -m http.server  8080
