# overture

This is Helium's custom Haskell Prelude. It is backwards-compatible with the existing Haskell 98 Prelude, but depends on a few packages so as to provide the easiest and lowest-friction approach for including commonly-used packages.

It exports the following identifiers:
* strict `Text` and `ByteString` types, from their respective packages
* lifted `try`, `catch`, and `throw`, from [lifted-base](https://hackage.haskell.org/package/lifted-base)
* `Control.Monad.Trans`, from [mtl](https://hackage.haskell.org/package/mtl)
* `NFData`, from the [deepseq](https://hackage.haskell.org/package/deepseq) package
* generalized `(.)` and `id` from [Control.Category](https://hackage.haskell.org/package/base-4.9.0.0/docs/Control-Category.html)

All other operators from the Prelude are exported from the most generalized module possible.

Please see [this](https://medium.com/@pthomson/overture-a-haskell-prelude-bc94a948febf#.qtexlki76) blog post for more information on why Overture exists and the reasoning behind its structure.

It is released under the no-rights-reserved Unlicense, so you can do whatever you want with it.
