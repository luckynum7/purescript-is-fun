- [References](#orge816f7c)
- [Development](#org8018840)
  - [Preparation](#org30c08f3)
    - [Installing the Compiler](#org3b1c294)
    - [Setting up the Development Environment](#org58dbde2)
    - [Create project](#orgdef046c)
    - [Working in `PSCi`](#org270b1c4)



<a id="orge816f7c"></a>

# References

1.  <http://www.purescript.org/>
2.  [*PureScript by Example*](https://leanpub.com/purescript) by Phil Freeman


<a id="org8018840"></a>

# Development


<a id="org30c08f3"></a>

## Preparation

1.  nodejs
2.  purescript


<a id="org3b1c294"></a>

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


<a id="org58dbde2"></a>

### Setting up the Development Environment

```bash
npm install -g pulp bower
```


<a id="orgdef046c"></a>

### Create project

```bash
pulp init
```


<a id="org270b1c4"></a>

### Working in `PSCi`

```bash
pulp psci
```
