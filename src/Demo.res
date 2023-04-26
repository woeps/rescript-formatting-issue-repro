module type T = {
  let f: string => string
}

let g = (x: string) => {
  module M: T = {
    let f = s => s ++ s
  }
  x->M.f
}

// The above will be (auto-) formatted
//  to the following (which is not valid syntax):
// let g = (x: string) => {
//   module M = {
//     let f = s => s ++ s
//   }: T
//   x->M.f
// }
