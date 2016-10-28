# NyulibrariesStylesheets

## Installation

```
gem 'nyulibraries_stylesheets', git: "https://github.com/NYULibraries/nyulibraries_stylesheets"
```

In a Rails project, the engine automatically includes the SCSS stylesheets in the asset pipeline.

## Usage

Import `"nyulibraries_stylesheets/nyulibraries"` in your SCSS file of choice to get all NYU Libraries and Bootstrap styles, mixins and variables:

```
@import "nyulibraries_stylesheets/nyulibraries";
```

### Icons and Sprites

Any included images can be used:

```
image_tag "nyulibraries_stylesheets/nyu.png"
```

NYU Libraries stylesheets have sprites built in using Compass. When you import `"nyulibraries_stylesheets/nyulibraries"`, all png files in the `app/assets/images/nyulibraries_stylesheets/icons` directory are compiled into sprites. For example, you can use `famfamfam-accept.png` like so:

```
<i class="icons-famfamfam-accept"></i>
```

To include your own icons as sprites, use the following syntax in your SCSS file:

```
@import "compass";
@import "path/to/your/sprites/*.png";
@include all-icons-sprites;
```

## Upgrading from Nyulibraries::Assets

Font Awesome and JQuery UI stylesheets are no longer included by default.

Stylesheets are now namespaced under `nyulibraries_stylesheets` when included in the client project. For example, you will need to replace

```
@import "nyulibraries";
```

with:

```
@import "nyulibraries_stylesheets/nyulibraries";
```

Compass generates an icon file on load that you may want to add to you `.gitignore`, e.g. in a Rails project:

```
app/assets/images/nyulibraries_stylesheets/icons-*.png
```
