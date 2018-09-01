

wasm1 : float 数据 相加

wasm2 : int类型 数据 相加，压缩wasm

wasm3 : js读取wasm中的字符串数据

wasm4 : wasm调用js方法


执行命令

emcc -s EXPORTED_FUNCTIONS="['_add']" example.c -s WASM=1 -s SIDE_MODULE=1 -s BINARYEN_ASYNC_COMPILATION=0 -o example.wasm

-O3  优化压缩

执行命令

wasm2wat example.wasm -o example.wast

wat2wasm example.wast -o example.wasm


执行命令

python -m http.server  8080
