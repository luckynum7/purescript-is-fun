- [Development](#org0ac769c)
  - [Preparation](#orgafdb365)
    - [Installing the Compiler](#org7863738)
    - [Setting up the Development Environment](#orge05c8e1)
    - [Create project](#org9958133)
    - [Working in `PSCi`](#org0063973)
  - [Troubleshooting](#orgf4ea1ba)
    - [Missing `libtinfo.so.5`](#orgc5062fc)
- [References](#orgc404790)
  - [UI Libraries](#org666937d)
  - [PureScript + X](#org560fe5d)
  - [Interesting](#orgeda8a96)



<a id="org0ac769c"></a>

# Development


<a id="orgafdb365"></a>

## Preparation

1.  nodejs
2.  purescript


<a id="org7863738"></a>

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


<a id="orge05c8e1"></a>

### Setting up the Development Environment

```bash
npm install -g pulp bower
```


<a id="org9958133"></a>

### Create project

```bash
pulp init
```


<a id="org0063973"></a>

### Working in `PSCi`

```bash
pulp psci
```


<a id="orgf4ea1ba"></a>

## Troubleshooting


<a id="orgc5062fc"></a>

### Missing `libtinfo.so.5`

Install `ncurses5-compat-libs` from [AUR](https://aur.archlinux.org/packages/ncurses5-compat-libs/)


<a id="orgc404790"></a>

# References

1.  <http://www.purescript.org/>
2.  [*PureScript by Example*](https://leanpub.com/purescript) by Phil Freeman
    1.  <https://github.com/purescript>
    2.  <https://github.com/purescript-node>
    3.  <https://github.com/purescript-contrib>
3.  [awesome-purescript](https://github.com/passy/awesome-purescript)
4.  <https://pursuit.purescript.org/>
5.  <https://github.com/trending/purescript>


<a id="org666937d"></a>

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


<a id="org560fe5d"></a>

## PureScript + X

1.  <https://github.com/rgrempel/purescript-elm> (**Elm**)
    1.  [Elm in Purescript](https://www.youtube.com/watch?v=O_kWwaghZ9U)


<a id="orgeda8a96"></a>

## Interesting

1.  [purescript-generics](https://github.com/purescript/purescript-generics): Generic programming.
2.  [wring](https://github.com/osener/wring): Extract content from webpages using CSS Selectors, XPath, and JS expressions. (phantomjs)
