- [Development](#orge3dd945)
  - [Preparation](#orgeb43dc6)
    - [Installing the Compiler](#org5a1f421)
    - [Setting up the Development Environment](#org3ddf4e1)
    - [Create project](#orgef5e9c5)
    - [Working in `PSCi`](#org80a222b)
  - [Troubleshooting](#orgb594042)
    - [Missing `libtinfo.so.5`](#org54b817d)
- [References](#org233c78f)
  - [UI Libraries](#org3768320)
  - [Routing](#org73b651f)
  - [PureScript + X](#org4d66916)
  - [Interesting](#orgb52e94e)



<a id="orge3dd945"></a>

# Development


<a id="orgeb43dc6"></a>

## Preparation

1.  nodejs
2.  purescript


<a id="org5a1f421"></a>

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


<a id="org3ddf4e1"></a>

### Setting up the Development Environment

```bash
npm install -g pulp bower
```


<a id="orgef5e9c5"></a>

### Create project

```bash
pulp init
```


<a id="org80a222b"></a>

### Working in `PSCi`

```bash
pulp psci
```


<a id="orgb594042"></a>

## Troubleshooting


<a id="org54b817d"></a>

### Missing `libtinfo.so.5`

Install `ncurses5-compat-libs` from [AUR](https://aur.archlinux.org/packages/ncurses5-compat-libs/)


<a id="org233c78f"></a>

# References

1.  <http://www.purescript.org/>
2.  [*PureScript by Example*](https://leanpub.com/purescript) by Phil Freeman
    1.  <https://github.com/purescript>
    2.  <https://github.com/purescript-node>
    3.  <https://github.com/purescript-contrib>
3.  [awesome-purescript](https://github.com/passy/awesome-purescript)
4.  <https://pursuit.purescript.org/>
5.  <https://github.com/trending/purescript>


<a id="org3768320"></a>

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


<a id="org73b651f"></a>

## Routing

1.  [purescript-routing](https://github.com/slamdata/purescript-routing): A clean, type-safe routing library for PureScript.
    1.  [A Guide to purescript-routing](https://github.com/slamdata/purescript-routing/blob/master/GUIDE.md)
    2.  [Using purescript-routing with purescript-halogen](http://www.parsonsmatt.org/2015/10/22/purescript_router.html)
        -   [purescript-routing-example](https://github.com/parsonsmatt/purescript-routing-example)


<a id="org4d66916"></a>

## PureScript + X

1.  <https://github.com/rgrempel/purescript-elm> (**Elm**)
    1.  [Elm in Purescript](https://www.youtube.com/watch?v=O_kWwaghZ9U)


<a id="orgb52e94e"></a>

## Interesting

1.  [purescript-generics](https://github.com/purescript/purescript-generics): Generic programming.
2.  [wring](https://github.com/osener/wring): Extract content from webpages using CSS Selectors, XPath, and JS expressions. (phantomjs)
