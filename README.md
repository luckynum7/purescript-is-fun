- [Development](#org0c845ac)
  - [Preparation](#orgc0f8b7b)
    - [Installing the Compiler](#org2174165)
    - [Setting up the Development Environment](#orgc102a67)
    - [Create project](#orgd08eeb4)
    - [Working in `PSCi`](#org945e22c)
  - [Troubleshooting](#org10e8e39)
    - [Missing `libtinfo.so.5`](#org72fa89c)
- [References](#orgee22b22)
  - [Bundle (Preludes)](#org0185bb1)
  - [UI Libraries](#org6ff0621)
  - [PureScript + X](#org54366b4)
  - [Interesting](#org608e849)



<a id="org0c845ac"></a>

# Development


<a id="orgc0f8b7b"></a>

## Preparation

1.  nodejs
2.  purescript


<a id="org2174165"></a>

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


<a id="orgc102a67"></a>

### Setting up the Development Environment

```bash
npm install -g pulp bower
```


<a id="orgd08eeb4"></a>

### Create project

```bash
pulp init
```


<a id="org945e22c"></a>

### Working in `PSCi`

```bash
pulp psci
```


<a id="org10e8e39"></a>

## Troubleshooting


<a id="org72fa89c"></a>

### Missing `libtinfo.so.5`

Install `ncurses5-compat-libs` from [AUR](https://aur.archlinux.org/packages/ncurses5-compat-libs/)


<a id="orgee22b22"></a>

# References

1.  <http://www.purescript.org/>
2.  [*PureScript by Example*](https://leanpub.com/purescript) by Phil Freeman
    1.  <https://github.com/purescript>
    2.  <https://github.com/purescript-node>
    3.  <https://github.com/purescript-contrib>
3.  [awesome-purescript](https://github.com/passy/awesome-purescript)
4.  <https://pursuit.purescript.org/>
5.  <https://github.com/trending/purescript>


<a id="org0185bb1"></a>

## Bundle (Preludes)

1.  [purescript-batteries](https://github.com/tfausak/purescript-batteries): :battery: A PureScript prelude with more features.
2.  <https://github.com/purescript-contrib/purescript-base>


<a id="org6ff0621"></a>

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


<a id="org54366b4"></a>

## PureScript + X

1.  <https://github.com/rgrempel/purescript-elm> (**Elm**)
    1.  [Elm in Purescript](https://www.youtube.com/watch?v=O_kWwaghZ9U)


<a id="org608e849"></a>

## Interesting

1.  [purescript-generics](https://github.com/purescript/purescript-generics): Generic programming.
2.  [wring](https://github.com/osener/wring): Extract content from webpages using CSS Selectors, XPath, and JS expressions. (phantomjs)
