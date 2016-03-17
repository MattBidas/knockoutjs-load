KnockoutJS example code to show a CSS spinner before loading
rest of the page, scripts and data. This is done without
flickering (showing part of markup that is meant to be used as
KnockoutJS template).

## How it works

 * Browser loads page up to the spinner
 * Browser displays the spinner
 * Browser loads rest of page, including scripts
 * Part of page used for KnockoutJS template is not shown
 * Scripts load some data
 * KnockoutJS model is bound
 * View is rendered and the spinner is automatically hidden

Spinner is wrapped into conditional KnockoutJS tags. These tags
have no effect until `ko.applyBindings` is called:

```html
<!-- ko if: false -->
    <div class="loader"></div>
<!-- /ko -->
```

Once `ko.applyBindings` is called, the conditional tags become active
and the loader spinner element is removed from the page DOM by
KnockoutJS.

Rest of the page is wrapped into element that has CSS property
`display: none` set by a class `hide`. This hides the content until
the class is removed:

```html
<div data-bind="css: { hide: false }" class="hide">
    Message: <span data-bind="text: message"></span>
</div>
```

The class is automatically removed when bindings are applied by
`ko.applyBindings`. This is achieved through the built-in `css` binding.

## Demo

Visit <http://demos.rlaanemets.com/knockoutjs-load/>.

## License

Public domain.
