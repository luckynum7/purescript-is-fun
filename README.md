- [Development](#org3e45466)
  - [Preparation](#orga4abf79)
    - [Installing the Compiler](#org10679ad)
    - [Setting up the Development Environment](#org139c65f)
    - [Create project](#org91fd7f8)
    - [Working in `PSCi`](#org765fc80)
- [References](#orgedab810)
  - [Bundle](#org5010f81)



<a id="org3e45466"></a>

# Development


<a id="orga4abf79"></a>

## Preparation

1.  nodejs
2.  purescript


<a id="org10679ad"></a>

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


<a id="org139c65f"></a>

### Setting up the Development Environment

```bash
npm install -g pulp bower
```


<a id="org91fd7f8"></a>

### Create project

```bash
pulp init
```


<a id="org765fc80"></a>

### Working in `PSCi`

```bash
pulp psci
```


<a id="orgedab810"></a>

# References

1.  <http://www.purescript.org/>
2.  [*PureScript by Example*](https://leanpub.com/purescript) by Phil Freeman
    1.  <https://github.com/purescript>
    2.  <https://github.com/purescript-node>
    3.  <https://github.com/purescript-contrib>
3.  <https://github.com/passy/awesome-purescript>


<a id="org5010f81"></a>

## Bundle

1.  <https://github.com/tfausak/purescript-batteries>
2.  <https://github.com/purescript-contrib/purescript-base>
