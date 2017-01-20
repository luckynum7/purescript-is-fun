- [Development](#org4a0e3a2)
  - [Preparation](#orgf1cac27)
    - [Installing the Compiler](#orgdd31434)
    - [Setting up the Development Environment](#orge5c3c27)
    - [Create project](#orga877af9)
    - [Working in `PSCi`](#org6d16997)
  - [Troubleshooting](#org70063f0)
    - [Missing `libtinfo.so.5`](#org3dd2764)
- [References](#orgc5b9c63)
  - [Bundle (Preludes)](#orgfefa69d)
  - [UI Libraries](#org53c1c07)
  - [PureScript + X](#org10da64a)



<a id="org4a0e3a2"></a>

# Development


<a id="orgf1cac27"></a>

## Preparation

1.  nodejs
2.  purescript


<a id="orgdd31434"></a>

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


<a id="orge5c3c27"></a>

### Setting up the Development Environment

```bash
npm install -g pulp bower
```


<a id="orga877af9"></a>

### Create project

```bash
pulp init
```


<a id="org6d16997"></a>

### Working in `PSCi`

```bash
pulp psci
```


<a id="org70063f0"></a>

## Troubleshooting


<a id="org3dd2764"></a>

### Missing `libtinfo.so.5`

Install `ncurses5-compat-libs` from [AUR](https://aur.archlinux.org/packages/ncurses5-compat-libs/)


<a id="orgc5b9c63"></a>

# References

1.  <http://www.purescript.org/>
2.  [*PureScript by Example*](https://leanpub.com/purescript) by Phil Freeman
    1.  <https://github.com/purescript>
    2.  <https://github.com/purescript-node>
    3.  <https://github.com/purescript-contrib>
3.  [awesome-purescript](https://github.com/passy/awesome-purescript)
4.  <https://github.com/trending/purescript>


<a id="orgfefa69d"></a>

## Bundle (Preludes)

1.  [purescript-batteries](https://github.com/tfausak/purescript-batteries): :battery: A PureScript prelude with more features.
2.  <https://github.com/purescript-contrib/purescript-base>


<a id="org53c1c07"></a>

## UI Libraries

1.  [purescript-pux](https://github.com/alexmingoia/purescript-pux): A PureScript interface to React. <https://www.purescript-pux.org/>
    1.  [Michael Trotter - PureScript & Pux &#x2013; a safer, more expressive way to React](https://www.youtube.com/watch?v=MvAiOTJNLNQ)
        -   Slides: <http://purescript-react-rally.surge.sh/>
        -   Source: <https://github.com/spicydonuts/purescript-spectacle-presentation>


<a id="org10da64a"></a>

## PureScript + X

1.  <https://github.com/rgrempel/purescript-elm> (Elm)
    1.  [Elm in Purescript](https://www.youtube.com/watch?v=O_kWwaghZ9U)
