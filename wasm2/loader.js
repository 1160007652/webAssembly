function loadWebAssembly(path, imports = {}) {
  return fetch(path)
    .then(response => response.arrayBuffer())
    .then(buffer => WebAssembly.compile(buffer))
    .then(module => {
      const _imports = Object.assign( {
        env:{
          memoryBase: 0,
          memory: new WebAssembly.Memory({ initial: 256 }),
          tableBase: 0,
          table: new WebAssembly.Table({ initial: 2, element: 'anyfunc' }),
          abort(){}
        }
      } ,imports)
      // 创建 WebAssembly 实例
      return new WebAssembly.Instance(module, _imports)
    })
}
