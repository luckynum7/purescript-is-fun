- [Development](#orgbde2ef9)
  - [Preparation](#org295b113)
    - [Installing the Compiler](#orgaa07ac3)
    - [Setting up the Development Environment](#org8f102cd)
    - [Create project](#orgf298b95)
    - [Working in `PSCi`](#org33fd065)
  - [Troubleshooting](#orgc76c468)
    - [Missing `libtinfo.so.5`](#org917912c)
- [References](#orgd81cef6)
  - [Bundle (Preludes)](#orgb065184)
  - [UI Libraries](#orgd1f8e66)
  - [PureScript + X](#org97d436a)
  - [Interesting](#org40f4fab)



<a id="orgbde2ef9"></a>

# Development


<a id="org295b113"></a>

## Preparation

1.  nodejs
2.  purescript


<a id="orgaa07ac3"></a>

### Installing the Compiler

1.Install from package manager

```bash
pacman -S purescript
```

2.To install `purescript` from `npm`, you may need to install `haskell-stack` package first

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


<a id="org8f102cd"></a>

### Setting up the Development Environment

```bash
npm install -g pulp bower
```


<a id="orgf298b95"></a>

### Create project

```bash
pulp init
```


<a id="org33fd065"></a>

### Working in `PSCi`

```bash
pulp psci
```


<a id="orgc76c468"></a>

## Troubleshooting


<a id="org917912c"></a>

### Missing `libtinfo.so.5`

Install `ncurses5-compat-libs` from [AUR](https://aur.archlinux.org/packages/ncurses5-compat-libs/)


<a id="orgd81cef6"></a>

# References

1.  <http://www.purescript.org/>
2.  [*PureScript by Example*](https://leanpub.com/purescript) by Phil Freeman
    1.  <https://github.com/purescript>
    2.  <https://github.com/purescript-node>
    3.  <https://github.com/purescript-contrib>
3.  [awesome-purescript](https://github.com/passy/awesome-purescript)
4.  <https://pursuit.purescript.org/>
5.  <https://github.com/trending/purescript>


<a id="orgb065184"></a>

## Bundle (Preludes)

1.  [purescript-batteries](https://github.com/tfausak/purescript-batteries): :battery: A PureScript prelude with more features.
2.  <https://github.com/purescript-contrib/purescript-base>


<a id="orgd1f8e66"></a>

## UI Libraries

1.  [purescript-halogen](https://github.com/slamdata/purescript-halogen): A declarative, type-safe UI library for PureScript.
2.  [purescript-pux](https://github.com/alexmingoia/purescript-pux): A PureScript interface to **React**. <https://www.purescript-pux.org/>
    1.  [Michael Trotter - PureScript & Pux &#x2013; a safer, more expressive way to React](https://www.youtube.com/watch?v=MvAiOTJNLNQ)
        -   Slides: <http://purescript-react-rally.surge.sh/>
        -   Source: <https://github.com/spicydonuts/purescript-spectacle-presentation>
3.  [purescript-thermite](https://github.com/paf31/purescript-thermite): A simple PureScript wrapper for **React**.
4.  [purescript-flare](https://github.com/sharkdp/purescript-flare): A special-purpose UI library for Purescript.
5.  [purescript-optic-ui](https://github.com/zrho/purescript-optic-ui): PureScript UI framework based on lenses.
6.  [purescript-css](https://github.com/slamdata/purescript-css): A type-safe library for describing, manipulating, and rendering CSS.


<a id="org97d436a"></a>

## PureScript + X

1.  <https://github.com/rgrempel/purescript-elm> (**Elm**)
    1.  [Elm in Purescript](https://www.youtube.com/watch?v=O_kWwaghZ9U)


<a id="org40f4fab"></a>

## Interesting

1.  [purescript-generics](https://github.com/purescript/purescript-generics): Generic programming.
