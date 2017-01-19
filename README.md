- [Development](#orgca33536)
  - [Preparation](#org5c0b7a3)
    - [Installing the Compiler](#orge55bc72)
    - [Setting up the Development Environment](#org73aa8bf)
    - [Create project](#orgaae051a)
    - [Working in `PSCi`](#org86aff42)
- [References](#org7864684)
  - [Bundle](#orgd9c2f20)
  - [PureScript + X](#org11a87be)



<a id="orgca33536"></a>

# Development


<a id="org5c0b7a3"></a>

## Preparation

1.  nodejs
2.  purescript


<a id="orge55bc72"></a>

### Installing the Compiler

1.Install from package manager

```bash
pacman -S purescript
```

2.To install `purescript` from `npm`, you may need to install `stack` package first

<https://docs.haskellstack.org/en/stable/install_and_upgrade/>

```bash
apt-get install haskell-stack
# or
pacman -S stack
```

then

```bash
npm install -g purescript
```


<a id="org73aa8bf"></a>

### Setting up the Development Environment

```bash
npm install -g pulp bower
```


<a id="orgaae051a"></a>

### Create project

```bash
pulp init
```


<a id="org86aff42"></a>

### Working in `PSCi`

```bash
pulp psci
```


<a id="org7864684"></a>

# References

1.  <http://www.purescript.org/>
2.  [*PureScript by Example*](https://leanpub.com/purescript) by Phil Freeman
    1.  <https://github.com/purescript>
    2.  <https://github.com/purescript-node>
    3.  <https://github.com/purescript-contrib>
3.  <https://github.com/passy/awesome-purescript>


<a id="orgd9c2f20"></a>

## Bundle

1.  <https://github.com/tfausak/purescript-batteries>
2.  <https://github.com/purescript-contrib/purescript-base>


<a id="org11a87be"></a>

## PureScript + X

1.  <https://github.com/alexmingoia/purescript-pux>
    1.  [Michael Trotter - PureScript & Pux &#x2013; a safer, more expressive way to React](https://www.youtube.com/watch?v=MvAiOTJNLNQ)
    2.  Slides: <http://purescript-react-rally.surge.sh/>
2.  <https://github.com/rgrempel/purescript-elm>
    1.  [Elm in Purescript](https://www.youtube.com/watch?v=O_kWwaghZ9U)
