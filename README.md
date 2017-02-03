- [Development](#org48d69ac)
  - [Preparation](#orgafb7c86)
    - [Installing the Compiler](#org9fd8d9d)
    - [Setting up the Development Environment](#org7648900)
    - [Create project](#org5697f80)
    - [Working in `PSCi`](#org243b192)
  - [Troubleshooting](#orgbb8be30)
    - [Missing `libtinfo.so.5`](#orgc0aae61)
- [References](#org1d6f833)
  - [UI Libraries](#org57a0dd4)
  - [Routing](#orgaab8e76)
  - [PureScript + X](#orgf5402a9)
  - [Interesting](#orga3b5f17)



<a id="org48d69ac"></a>

# Development


<a id="orgafb7c86"></a>

## Preparation

1.  nodejs
2.  purescript


<a id="org9fd8d9d"></a>

### Installing the Compiler

1.Install from package manager

```bash
pacman -S purescript
```

2.Install use `Purescript Version Manager` [psvm](https://github.com/ThomasCrevoisier/psvm-js)

```bash
npm install -g psvm
psvm install-latest
psvm use <installed-version>
```

3.To install `purescript` from `npm`, you *may* need to install `haskell-stack` package first

<https://docs.haskellstack.org/en/stable/install_and_upgrade/>

```bash
apt-get install haskell-stack
# or
pacman -S haskell-stack
```

then

```bash
npm install -g purescript
```


<a id="org7648900"></a>

### Setting up the Development Environment

```bash
npm install -g pulp bower
```


<a id="org5697f80"></a>

### Create project

```bash
pulp init
```


<a id="org243b192"></a>

### Working in `PSCi`

```bash
pulp psci
```


<a id="orgbb8be30"></a>

## Troubleshooting


<a id="orgc0aae61"></a>

### Missing `libtinfo.so.5`

Install `ncurses5-compat-libs` from [AUR](https://aur.archlinux.org/packages/ncurses5-compat-libs/)


<a id="org1d6f833"></a>

# References

1.  <http://www.purescript.org/>
2.  [*PureScript by Example*](https://leanpub.com/purescript) by Phil Freeman
    1.  <https://github.com/purescript>
    2.  <https://github.com/purescript-node>
    3.  <https://github.com/purescript-contrib>
3.  [*24 Days of PureScript, 2016*](https://github.com/paf31/24-days-of-purescript-2016)
4.  [Awesome Purescript](https://github.com/passy/awesome-purescript)
5.  <https://pursuit.purescript.org/>
6.  <https://github.com/trending/purescript>


<a id="org57a0dd4"></a>

## UI Libraries

1.  [purescript-halogen](https://github.com/slamdata/purescript-halogen): A declarative, type-safe UI library for PureScript.
    1.  <https://github.com/slamdata/purescript-halogen-template>
2.  [purescript-pux](https://github.com/alexmingoia/purescript-pux): A PureScript interface to **React**. <https://www.purescript-pux.org/>
    1.  [Michael Trotter - PureScript & Pux &#x2013; a safer, more expressive way to React](https://www.youtube.com/watch?v=MvAiOTJNLNQ)
        -   Slides: <http://purescript-react-rally.surge.sh/>
        -   Source: <https://github.com/spicydonuts/purescript-spectacle-presentation>
3.  [purescript-thermite](https://github.com/paf31/purescript-thermite): A simple PureScript wrapper for **React**.
4.  [purescript-flare](https://github.com/sharkdp/purescript-flare): A special-purpose UI library for Purescript.
5.  [purescript-optic-ui](https://github.com/zrho/purescript-optic-ui): PureScript UI framework based on lenses.
6.  [purescript-css](https://github.com/slamdata/purescript-css): A type-safe library for describing, manipulating, and rendering CSS.


<a id="orgaab8e76"></a>

## Routing

1.  [purescript-routing](https://github.com/slamdata/purescript-routing): A clean, type-safe routing library for PureScript.
    1.  [A Guide to purescript-routing](https://github.com/slamdata/purescript-routing/blob/master/GUIDE.md)
    2.  [Using purescript-routing with purescript-halogen](http://www.parsonsmatt.org/2015/10/22/purescript_router.html)
        -   [purescript-routing-example](https://github.com/parsonsmatt/purescript-routing-example)


<a id="orgf5402a9"></a>

## PureScript + X

1.  <https://github.com/rgrempel/purescript-elm> (**Elm**)
    1.  [Elm in Purescript](https://www.youtube.com/watch?v=O_kWwaghZ9U)


<a id="orga3b5f17"></a>

## Interesting

1.  [purescript-generics](https://github.com/purescript/purescript-generics): Generic programming.
2.  [wring](https://github.com/osener/wring): Extract content from webpages using CSS Selectors, XPath, and JS expressions. (phantomjs)
