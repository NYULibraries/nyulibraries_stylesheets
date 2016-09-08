# NyulibrariesStylesheets

```
gem 'nyulibraries_stylesheets', git: "https://github.com/NYULibraries/nyulibraries_stylesheets"
```

In a Rails project, the engine automatically includes the SCSS stylesheets in the asset pipeline.

## Upgrading from Nyulibraries::Assets

Stylesheets are now namespaced under `nyulibraries_stylesheets` when included in the client project. For example, you will need to replace

```
@import "nyulibraries";
```

with:

```
@import "nyulibraries_stylesheets/nyulibraries";
```
