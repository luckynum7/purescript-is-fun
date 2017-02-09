- [References](#orgf0fe313)
  - [UI Libraries](#orge59cb1d)
  - [Routing](#orgfe496ca)
  - [PureScript + X](#orgca0f8d7)
  - [Interesting](#org05c4b61)
- [Development](#orgb86eca4)
  - [Preparation](#orgc1d3e5d)
    - [Prerequisites](#org18d9f0c)
    - [Installing the Compiler](#orgcadb0f8)
    - [Setting up the Development Environment](#org44c5ad2)
    - [Create project](#orgd94dc6d)
    - [Working in `PSCi`](#orgab4eeee)
  - [Troubleshooting](#org77bac5c)
    - [Missing `libtinfo.so.5`](#orgf873747)



<a id="orgf0fe313"></a>

# References

1.  <http://www.purescript.org/>
2.  [*PureScript by Example*](https://leanpub.com/purescript) by Phil Freeman
    1.  <https://github.com/purescript>
    2.  <https://github.com/purescript-node>
    3.  <https://github.com/purescript-contrib>
3.  [*24 Days of PureScript, 2016*](https://github.com/paf31/24-days-of-purescript-2016)
4.  [Awesome PureScript](https://github.com/passy/awesome-purescript)
5.  [PureScript ecosystem](https://github.com/xgrommx/purescript-ecosystem)
6.  [Pursuit](https://pursuit.purescript.org) is the home of PureScript documentation
7.  [GitHub Trending](https://github.com/trending/purescript)


<a id="orge59cb1d"></a>

## UI Libraries

1.  [purescript-halogen](https://github.com/slamdata/purescript-halogen): A declarative, type-safe UI library for PureScript.
    1.  <https://github.com/slamdata/purescript-halogen-template>
    2.  <https://github.com/slamdata/purescript-halogen/blob/master/examples>
        -   [examples/higher-order-components](https://github.com/slamdata/purescript-halogen/blob/master/examples/higher-order-components)
2.  [purescript-pux](https://github.com/alexmingoia/purescript-pux): A PureScript interface to **React**. <https://www.purescript-pux.org/>
    1.  [Michael Trotter - PureScript & Pux &#x2013; a safer, more expressive way to React](https://www.youtube.com/watch?v=MvAiOTJNLNQ)
        -   Slides: <http://purescript-react-rally.surge.sh/>
        -   Source: <https://github.com/spicydonuts/purescript-spectacle-presentation>
3.  [purescript-thermite](https://github.com/paf31/purescript-thermite): A simple PureScript wrapper for **React**.
4.  [purescript-flare](https://github.com/sharkdp/purescript-flare): A special-purpose UI library for Purescript.
5.  [purescript-optic-ui](https://github.com/zrho/purescript-optic-ui): PureScript UI framework based on lenses.
6.  [purescript-css](https://github.com/slamdata/purescript-css): A type-safe library for describing, manipulating, and rendering CSS.


<a id="orgfe496ca"></a>

## Routing

1.  [purescript-routing](https://github.com/slamdata/purescript-routing): A clean, type-safe routing library for PureScript. (`hash`)
    1.  [A Guide to purescript-routing](https://github.com/slamdata/purescript-routing/blob/master/GUIDE.md)
    2.  [Using purescript-routing with purescript-halogen](http://www.parsonsmatt.org/2015/10/22/purescript_router.html)
        -   [purescript-routing-example](https://github.com/parsonsmatt/purescript-routing-example)
    3.  <https://github.com/slamdata/slamdata> (example)
        -   [Workspace/Routing.purs](https://github.com/slamdata/slamdata/blob/master/src/SlamData/Workspace/Routing.purs)
        -   [Workspace.purs](https://github.com/slamdata/slamdata/blob/master/src/SlamData/Workspace.purs)


<a id="orgca0f8d7"></a>

## PureScript + X

1.  <https://github.com/rgrempel/purescript-elm> (**Elm**)
    1.  [Elm in Purescript](https://www.youtube.com/watch?v=O_kWwaghZ9U)
2.  <https://github.com/ruicc/purescript-vue> (**Vue.js**)
3.  <https://github.com/justinwoo/purescript-cycle-run> (**Cycle.js**, xstream)
4.  <https://github.com/justinwoo/purescript-xstream> (**xstream**)
5.  <https://github.com/TylorS/purescript-cycle> (Cycle.js)
6.  <https://github.com/zudov/purescript-cycle> (Cycle.js)


<a id="org05c4b61"></a>

## Interesting

1.  [purescript-generics](https://github.com/purescript/purescript-generics): Generic programming.
2.  [wring](https://github.com/osener/wring): Extract content from webpages using CSS Selectors, XPath, and JS expressions. (phantomjs)


<a id="orgb86eca4"></a>

# Development


<a id="orgc1d3e5d"></a>

## Preparation


<a id="org18d9f0c"></a>

### Prerequisites

1.  nodejs
2.  purescript


<a id="orgcadb0f8"></a>

### Installing the Compiler

1.Install from package manager

```bash
# pacman -S purescript
```

2.Install use `Purescript Version Manager` [psvm](https://github.com/ThomasCrevoisier/psvm-js)

```bash
$ npm install -g psvm
$ psvm install-latest
$ psvm use <installed-version>
```

3.To install `purescript` from `npm`, you *may* need to install `haskell-stack` package first

<https://docs.haskellstack.org/en/stable/install_and_upgrade/>

```bash
# pacman -S haskell-stack
```

then

```bash
$ npm install -g purescript
```


<a id="org44c5ad2"></a>

### Setting up the Development Environment

```bash
$ npm install -g pulp bower
```


<a id="orgd94dc6d"></a>

### Create project

```bash
$ pulp init
```


<a id="orgab4eeee"></a>

### Working in `PSCi`

```bash
$ pulp psci
```


<a id="org77bac5c"></a>

## Troubleshooting


<a id="orgf873747"></a>

### Missing `libtinfo.so.5`

Install `ncurses5-compat-libs` from [AUR](https://aur.archlinux.org/packages/ncurses5-compat-libs/)
