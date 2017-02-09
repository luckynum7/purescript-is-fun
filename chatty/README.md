- [Development](#org59b090a)
  - [How to setup environment](#orgbfba077)
  - [How to develop](#org4b31958)
  - [How to build](#org9920245)
- [<code>[8/11]</code> TODO](#orgf671da0)



<a id="org59b090a"></a>

# Development


<a id="orgbfba077"></a>

## How to setup environment

```bash
npm install
```


<a id="org4b31958"></a>

## How to develop

```bash
npm run dev
```


<a id="org9920245"></a>

## How to build

```bash
npm run build
```

The code will be built as `bundle.js`, runnable by opening the `index.html`


<a id="orgf671da0"></a>

# <code>[8/11]</code> TODO

-   [X] ~~Search for halogen apps~~
-   [X] ~~Halogen multi-component, component, etc~~
-   [X] Hello world w/ halogen
-   [X] Hello world w/ component (in Router.purs)
-   [X] Hello world w/ Routing (in Dashboard.purs)
    -   <https://github.com/slamdata/purescript-halogen/tree/master/examples/components>
    -   <https://github.com/slamdata/purescript-halogen/tree/master/examples/driver-routing> (`hashchange`)
    -   <https://github.com/slamdata/purescript-halogen/tree/master/examples/higher-order-components>
    -   <https://github.com/slamdata/purescript-halogen/tree/master/examples/lifecycle>
    -   <https://github.com/slamdata/purescript-halogen/tree/master/examples/multi-component>
    -   <https://github.com/slamdata/purescript-halogen/tree/master/examples/todo>
    -   [X] component in parentComponent
    -   [X] multi-component in parentComponent
-   [X] ~~*Routing* w/ halogen~~
-   [X] ~~change view in `render` function (`hashChange`)~~
-   [X] purescript-routing
-   [ ] purescript-routing -> view
    -   [ ] renderView <- which page (purescript-routing)
-   [ ] Split routing into modules
    -   [ ] get state from hash (purescript-routing)
-   [ ] persist states (e.g. user, etc)
