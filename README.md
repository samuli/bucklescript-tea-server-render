Experimenting with initializing a bucklescript-tea application to a pre-rendered DOM outputted by [react-snap](https://github.com/stereobooster/react-snap/).

Uses a [patched version](https://github.com/samuli/bucklescript-tea/tree/hydrate) of bucklescript-tea.

# Install

```
npm install
```

# Testing

Copy release/index.html.tpl > release/index.html

```
npm run build
npm run snap
npm run watch
```

# How does it work

Initial model data for the application is specified in index.html.

react-snap renders index.html and inserts the HTML outputted by bucklescript-tea to the body-tag:

bucklescript-tea app is inited with a hydrate-flag that specifies whether the application should be inited from scratch (for react-snap) or to a pre-renderd DOM (browser).

Note: remove release/200.html and copy release/index.html.tpl > release/index.html if you need to re-run react-snap.
