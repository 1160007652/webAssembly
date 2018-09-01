function utf8ToString(h,p) {
            // let h = ;
            let s = "";
            for (i = p; h[i]; i++) {
                s += String.fromCharCode(h[i]);
            }
            return s;
        }

function loadWebAssembly(path, imports = {}) {
  return fetch(path)
    .then(response => response.arrayBuffer())
    .then(buffer => WebAssembly.compile(buffer))
    .then(module => {
      const _imports = Object.assign({
        env: {
          memoryBase: 0,
          memory: new WebAssembly.Memory({ initial: 256 }),
          tableBase: 0,
          table: new WebAssembly.Table({ initial: 2, element: 'anyfunc' }),
          abort(){},
          _alert(p){
            alert(utf8ToString(new Uint8Array(_imports.env.memory.buffer), p));
          }
        }
      }, imports)
      // 创建 WebAssembly 实例
      return new WebAssembly.Instance(module, _imports)
    })
}