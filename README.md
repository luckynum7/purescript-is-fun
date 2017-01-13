- [References](#org4b4b05f)
- [Development](#org32a136f)
  - [Preparation](#org81bbb31)
    - [Installing the Compiler](#org0965df3)
    - [Setting up the Development Environment](#org766e5a7)
    - [Create project](#org8442196)
    - [Working in `PSCi`](#orge690082)



<a id="org4b4b05f"></a>

# References

1.  <http://www.purescript.org/>


<a id="org32a136f"></a>

# Development


<a id="org81bbb31"></a>

## Preparation

1.  nodejs
2.  purescript


<a id="org0965df3"></a>

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


<a id="org766e5a7"></a>

### Setting up the Development Environment

```bash
npm install -g pulp bower
```


<a id="org8442196"></a>

### Create project

```bash
pulp init
```


<a id="orge690082"></a>

### Working in `PSCi`

```bash
pulp psci
```
