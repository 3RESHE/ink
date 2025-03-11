<style>
  .sun-editor {width:auto; height:auto; box-sizing:border-box; font-family:Helvetica Neue; border:1px solid #dadada; background-color:#FFF; color:#000; user-select:none; -o-user-select:none; -moz-user-select:none; -khtml-user-select:none; -webkit-user-select:none; -ms-user-select:none;}
  .sun-editor * {box-sizing:border-box;  -webkit-user-drag:none; overflow:visible;}
  .sun-editor-common input, .sun-editor-common select, .sun-editor-common textarea, .sun-editor-common button {font-size:14px; line-height:1.5;}
  .sun-editor-common body, .sun-editor-common div, .sun-editor-common dl, .sun-editor-common dt, .sun-editor-common dd, .sun-editor-common ul, .sun-editor-common ol, .sun-editor-common li,
  .sun-editor-common h1, .sun-editor-common h2, .sun-editor-common h3, .sun-editor-common h4, .sun-editor-common h5, .sun-editor-common h6, .sun-editor-common pre, .sun-editor-common code,
  .sun-editor-common form, .sun-editor-common fieldset, .sun-editor-common legend, .sun-editor-common textarea, .sun-editor-common p, .sun-editor-common blockquote, .sun-editor-common th,
  .sun-editor-common td, .sun-editor-common input, .sun-editor-common select, .sun-editor-common textarea, .sun-editor-common button {margin:0; padding:0; border:0;}
  .sun-editor-common dl, .sun-editor-common ul, .sun-editor-common ol, .sun-editor-common menu, .sun-editor-common li {list-style:none !important;}
  .sun-editor-common hr {margin:6px 0 6px 0 !important;}
  .sun-editor textarea {resize:none; border:0; padding:0;}
  .sun-editor button {border:0 none; background-color:transparent; touch-action:manipulation; cursor:pointer; outline:none;}
  .sun-editor input, .sun-editor select, .sun-editor textarea, .sun-editor button {vertical-align:middle;}
  .sun-editor button span {display:block; margin:0; padding:0;}
  .sun-editor button .txt {display:block; margin-top:0; white-space:nowrap; overflow:hidden; text-overflow:ellipsis;}
  .sun-editor button * {
    pointer-events: none;
    backface-visibility: hidden;
    -webkit-backface-visibility: hidden;
    -moz-backface-visibility: hidden;
  }
  .sun-editor svg {
    fill: currentColor;
  }
  .sun-editor button > svg, .sun-editor .se-svg {
    width: 16px;
    height: 16px;
    margin: auto;
    fill: currentColor;
    display: block;
    text-align: center;
    float: none;
  }
  .sun-editor .close > svg, .sun-editor .se-dialog-close > svg {
    width: 10px;
    height: 10px;
  }
  .sun-editor .se-btn-select > svg {
    float: right;
    width: 10px;
    height: 10px;
  }
  .sun-editor .se-btn-list > .se-list-icon {
    display: inline-block;
    width: 16px;
    height: 16px;
    margin: -1px 10px 0 0;
    vertical-align: middle;
  }
  .sun-editor .se-line-breaker > button > svg {
    width: 24px;
    height: 24px;
  }
  .sun-editor button > i::before {
    -moz-osx-font-smoothing:grayscale;
    -webkit-font-smoothing:antialiased;
    display: inline-block;
    font-style: normal;
    font-variant: normal;
    text-rendering:auto;
    font-size: 15px;
    line-height: 2;
  }
  .sun-editor button > [class="se-icon-text"] {
    font-size: 20px;
    line-height: 1;
  }
  .sun-editor .se-arrow, .sun-editor .se-arrow::after {position:absolute; display:block; width:0; height:0; border:11px solid transparent;}
  .sun-editor .se-arrow.se-arrow-up {top:-11px; left:20px; margin-left:-11px; border-top-width:0; border-bottom-color:#dadada;}
  .sun-editor .se-arrow.se-arrow-up::after {top:1px; margin-left:-11px; content:" "; border-top-width:0; border-bottom-color:#fff;}
  .sun-editor .se-toolbar .se-arrow.se-arrow-up::after {border-bottom-color:#fafafa;}
  .sun-editor .se-arrow.se-arrow-down {top:0px; left:0px; margin-left:-11px; border-bottom-width:0; border-top-color:#dadada;}
  .sun-editor .se-arrow.se-arrow-down::after {top:-12px; margin-left:-11px; content:" "; border-bottom-width:0; border-top-color:#fff;}
  .sun-editor .se-toolbar .se-arrow.se-arrow-down::after {border-top-color:#fafafa;}
  .sun-editor .se-container {position:relative; width:auto; height:auto;}
  .sun-editor button {color:#000;}
  .sun-editor .se-btn {float:left; width:34px; height:34px; border:0; border-radius:4px; margin:1px !important; padding:0; font-size:12px; line-height:27px;}
  .sun-editor .se-btn:enabled:hover, .sun-editor .se-btn:enabled:focus {background-color:#e1e1e1; border-color:#d1d1d1; outline:0 none;}
  .sun-editor .se-btn:enabled:active {background-color:#d1d1d1; border-color:#c1c1c1; -webkit-box-shadow:inset 0 3px 5px #c1c1c1; box-shadow:inset 0 3px 5px #c1c1c1;}
  .sun-editor .se-btn-primary {color:#000; background-color:#c7deff; border:1px solid #80bdff; border-radius:4px;}
  .sun-editor .se-btn-primary:hover, .sun-editor .se-btn-primary:focus {color:#000; background-color:#80bdff; border-color:#3f9dff; outline:0 none;}
  .sun-editor .se-btn-primary:active {color:#fff; background-color:#3f9dff; border-color:#4592ff; -webkit-box-shadow:inset 0 3px 5px #4592ff; box-shadow:inset 0 3px 5px #4592ff;}
  .sun-editor input, .sun-editor select, .sun-editor textarea {color:#000; border:1px solid #ccc; border-radius:4px;}
  .sun-editor input:focus, .sun-editor select:focus, .sun-editor textarea:focus {border:1px solid #80bdff; outline:0; -webkit-box-shadow:0 0 0 0.2rem #c7deff; box-shadow:0 0 0 0.2rem #c7deff; transition:border-color .15s ease-in-out,box-shadow .15s ease-in-out;}
  .sun-editor .se-btn:enabled.active {color:#4592ff; outline:0 none;}
  .sun-editor .se-btn:enabled.active:hover, .sun-editor .se-btn:enabled.active:focus {background-color:#e1e1e1; border-color:#d1d1d1; outline:0 none;}
  .sun-editor .se-btn:enabled.active:active {background-color:#d1d1d1; border-color:#c1c1c1; -webkit-box-shadow:inset 0 3px 5px #c1c1c1; box-shadow:inset 0 3px 5px #c1c1c1;}
  .sun-editor .se-btn:enabled.on {background-color:#e1e1e1; border-color:#d1d1d1; outline:0 none;}
  .sun-editor .se-btn:enabled.on:hover, .sun-editor .se-btn:enabled.on:focus {background-color:#d1d1d1; border-color:#c1c1c1; outline:0 none;}
  .sun-editor .se-btn:enabled.on:active {background-color:#c1c1c1; border-color:#b1b1b1; -webkit-box-shadow:inset 0 3px 5px #b1b1b1; box-shadow:inset 0 3px 5px #b1b1b1;}
  .sun-editor .se-btn:disabled, .sun-editor .se-btn-list:disabled, .sun-editor button:disabled {cursor:not-allowed; background-color:inherit; color:#bdbdbd;}
  .sun-editor .se-loading-box {position:absolute; display:none; width:100%; height:100%; top:0; left:0; background-color:#fff; opacity:.7; filter:alpha(opacity=70); z-index:2147483647;}
  .sun-editor .se-loading-box .se-loading-effect {position:absolute; display:block; top:50%; left:50%; height:25px; width:25px; border-top:2px solid #07d; border-right:2px solid transparent; border-radius:50%; animation:spinner .8s linear infinite; margin:-25px 0 0 -25px;}
  .sun-editor .se-line-breaker {position:absolute; display:none; width:100%; height:1px; cursor:text; border-top:1px solid #3288ff; z-index:7;}
  .sun-editor .se-line-breaker > button.se-btn {position:relative; display:inline-block; width:30px; height:30px; top:-15px; float:none; left:-50%; background-color:#fff; border:1px solid #0c2240; opacity:0.6; cursor:pointer;}
  .sun-editor .se-line-breaker > button.se-btn:hover {opacity:0.9; background-color:#fff; border-color:#041b39;}
  .sun-editor .se-line-breaker-component {position:absolute; display:none; width:24px; height:24px; background-color:#fff; border:1px solid #0c2240; opacity:0.6; border-radius:4px; cursor:pointer; z-index:7;}
  .sun-editor .se-line-breaker-component:hover {opacity:0.9;}
  .sun-editor .se-toolbar {display:block; position:relative; height:auto; width:100%; overflow:visible; padding:0; margin:0; background-color:#fafafa; outline:1px solid #dadada; z-index:5;}
  .sun-editor .se-toolbar-shadow {display:block !important; height:0px !important; padding:0 !important; margin:0 !important; background-color:transparent !important;  outline:none !important; border: none !important; z-index:0 !important;}
  .sun-editor .se-toolbar-cover {position:absolute; display:none; font-size:36px; width:100%; height:100%; top:0; left:0; background-color:#fefefe; opacity:.5; filter:alpha(opacity=50); cursor:not-allowed; z-index:4;}
  .sun-editor .se-toolbar-separator-vertical {display:inline-block; height:0px; width:0px; margin:0px; vertical-align:top;}
  .sun-editor .se-toolbar.se-toolbar-inline {display:none; position:absolute; box-shadow:0 3px 9px rgba(0,0,0,.5); -webkit-box-shadow:0 3px 9px rgba(0,0,0,.5);}
  .sun-editor .se-toolbar.se-toolbar-balloon {display:none; position:absolute; z-index:2147483647; width:auto; box-shadow:0 3px 9px rgba(0,0,0,.5); -webkit-box-shadow:0 3px 9px rgba(0,0,0,.5);}
  .sun-editor .se-toolbar.se-toolbar-sticky {position:fixed; top:0px;}
  .sun-editor .se-toolbar-sticky-dummy {display:none; position:static; z-index:-1;}
  .sun-editor .se-btn-module {display:inline-block;}
  .sun-editor .se-btn-module-border {border:1px solid #dadada; border-radius:4px; margin-left:1px; margin-right:1px;}
  .sun-editor .se-btn-module-enter {display:block; width:100%; height:0px; margin:0; padding:0; background-color:transparent;}
  .sun-editor .se-toolbar-more-layer {margin:0 -3px; background-color:#fafafa;}
  .sun-editor .se-toolbar-more-layer .se-more-layer {display:none;  border-top:1px solid #dadada;}
  .sun-editor .se-toolbar-more-layer .se-more-layer .se-more-form {display:inline-block; width:100%; height:auto; padding:4px 3px 0 3px;}
  .sun-editor .se-btn-module .se-btn-more.se-btn-more-text {width:auto; padding:0 4px;}
  .sun-editor .se-btn-module .se-btn-more:hover, .sun-editor .se-btn-module .se-btn-more:focus {color:#000; background-color:#d1d1d1; border-color:#c1c1c1; outline:0 none;}
  .sun-editor .se-btn-module .se-btn-more.on {color:#333; background-color:#d1d1d1; border-color:#c1c1c1; outline:0 none;}
  .sun-editor .se-btn-module .se-btn-more.on:hover {color:#000; background-color:#c1c1c1; border-color:#b1b1b1; outline:0 none;}
  .sun-editor .se-menu-list {float:left; padding:0; margin:0;}
  .sun-editor .se-menu-list li {position:relative; float:left; padding:0; margin:0;}
  .sun-editor .se-btn-select {width:auto; display:flex; padding:4px 6px;}
  .sun-editor .se-btn-select .txt {flex:auto; text-align:left;}
  .sun-editor .se-btn-select.se-btn-tool-font {width:100px;}
  .sun-editor .se-btn-select.se-btn-tool-format {width:82px;}
  .sun-editor .se-btn-select.se-btn-tool-size {width:78px;}
  .sun-editor .se-btn-tray {position:relative; width:100%; height:auto; padding:4px 3px 0 3px; margin:0;}
  .sun-editor .se-menu-tray {position:absolute; top:0px; left:0px; width:100%; height:0px;}
  .sun-editor .se-submenu {overflow-x:hidden; overflow-y:auto;}
  .sun-editor .se-menu-container {overflow-x:unset; overflow-y:unset;}
  .sun-editor .se-list-layer {display:none; position:absolute; top:0px; left:0px; height:auto; z-index:5; border:1px solid #bababa; border-radius:4px; padding:6px 0; background-color:#fff; -webkit-box-shadow:0 3px 9px rgba(0, 0, 0, .5); box-shadow:0 3px 9px rgba(0, 0, 0, .5); outline:0 none;}
  .sun-editor .se-list-layer .se-list-inner {padding:0; margin:0; overflow-x:initial; overflow-y:initial; overflow:visible;}
  .sun-editor .se-list-layer button {margin:0; width:100%;}
  .sun-editor .se-list-inner ul {width:100%; padding:0;}
  .sun-editor .se-list-inner li > button {min-width:100%; width:max-content;}
  .sun-editor .se-list-inner .se-list-basic li {width:100%;}
  .sun-editor .se-list-inner .se-list-basic li button.active {background-color:#80bdff; border:1px solid #3f9dff; border-left:0; border-right:0;}
  .sun-editor .se-list-inner .se-list-basic li button.active:hover {background-color:#3f9dff; border:1px solid #4592ff; border-left:0; border-right:0;}
  .sun-editor .se-list-inner .se-list-basic li button.active:active {background-color:#4592ff; border:1px solid #407dd1; border-left:0; border-right:0; -webkit-box-shadow:inset 0 3px 5px #407dd1; box-shadow:inset 0 3px 5px #407dd1;}
  .sun-editor .se-list-inner .se-list-checked li button > .se-svg {float:left; padding:6px 6px 0 0;}
  .sun-editor .se-list-inner .se-list-checked li button > .se-svg > svg {display:none;}
  .sun-editor .se-list-inner .se-list-checked li button.se-checked {color:#4592ff;}
  .sun-editor .se-list-inner .se-list-checked li button.se-checked > .se-svg > svg {display:block;}
  .sun-editor .se-btn-list {width:100%; height:auto; min-height:32px; padding:0 14px; cursor:pointer; font-size:12px; line-height:normal; text-indent:0; text-decoration:none; text-align:left;}
  .sun-editor .se-btn-list.default_value {background-color:#f3f3f3; border-top:1px dotted #b1b1b1; border-bottom:1px dotted #b1b1b1;}
  .sun-editor .se-btn-list:hover, .sun-editor .se-btn-list:focus {background-color:#e1e1e1; border-color:#d1d1d1; outline:0 none;}
  .sun-editor .se-btn-list:active {background-color:#d1d1d1; border-color:#c1c1c1; -webkit-box-shadow:inset 0 3px 5px #c1c1c1; box-shadow:inset 0 3px 5px #c1c1c1;}
  .sun-editor .se-list-layer.se-list-font-size {min-width:140px; max-height:300px;}
  .sun-editor .se-list-layer.se-list-font-family {min-width:156px;}
  .sun-editor .se-list-layer.se-list-font-family .default {border-bottom:1px solid #CCC;}
  .sun-editor .se-list-layer.se-list-line {width:125px;}
  .sun-editor .se-list-layer.se-list-line hr {border-width: 1px 0 0; height: 1px;}
  .sun-editor .se-list-layer.se-list-align .se-list-inner {left:9px;}
  .sun-editor .se-list-layer.se-list-format {min-width:156px;}
  .sun-editor .se-list-layer.se-list-format li {padding:0; width:100%;}
  .sun-editor .se-list-layer.se-list-format ul .se-btn-list {line-height:100%;}
  .sun-editor .se-list-layer.se-list-format ul .se-btn-list[data-value="h1"] {height:40px;}
  .sun-editor .se-list-layer.se-list-format ul .se-btn-list[data-value="h2"] {height:34px;}
  .sun-editor .se-list-layer.se-list-format ul p {font-size:13px;}
  .sun-editor .se-list-layer.se-list-format ul div {font-size:13px; padding:4px 2px;}
  .sun-editor .se-list-layer.se-list-format ul h1 {font-size:2em; font-weight:bold; color:#333;}
  .sun-editor .se-list-layer.se-list-format ul h2 {font-size:1.5em; font-weight:bold; color:#333;}
  .sun-editor .se-list-layer.se-list-format ul h3 {font-size:1.17em; font-weight:bold; color:#333;}
  .sun-editor .se-list-layer.se-list-format ul h4 {font-size:1em; font-weight:bold; color:#333;}
  .sun-editor .se-list-layer.se-list-format ul h5 {font-size:0.83em; font-weight:bold; color:#333;}
  .sun-editor .se-list-layer.se-list-format ul h6 {font-size:0.67em; font-weight:bold; color:#333;}
  .sun-editor .se-list-layer.se-list-format ul blockquote {font-size:13px; color:#999; height:22px; margin:0; background-color:transparent; line-height:1.5; border-style:solid; border-color:#b1b1b1; padding:0 0 0 7px; border-left-width:5px;}
  .sun-editor .se-list-layer.se-list-format ul pre {font-size:13px; color:#666; padding:4px 11px; margin:0; background-color:#f9f9f9; border:1px solid #e1e1e1; border-radius:4px;}
  .sun-editor .se-selector-table {display:none; position:absolute; top:34px; left:1px; z-index:5; padding:5px 0; float:left; margin:2px 0 0; font-size:14px; text-align:left; list-style:none; background-color:#fff; -webkit-background-clip:padding-box; background-clip:padding-box; border:1px solid #ccc; border-radius:4px; -webkit-box-shadow:0 6px 12px rgba(0, 0, 0, .175); box-shadow:0 6px 12px rgba(0, 0, 0, .175);}
  .sun-editor .se-selector-table .se-table-size {font-size:18px; padding:0 5px;}
  .sun-editor .se-selector-table .se-table-size-picker {position:absolute !important; z-index:3; font-size:18px; width:10em; height:10em; cursor:pointer;}
  .sun-editor .se-selector-table .se-table-size-highlighted {position:absolute !important; z-index:2; font-size:18px; width:1em; height:1em; background:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASCAYAAABWzo5XAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAAZdEVYdFNvZnR3YXJlAEFkb2JlIEltYWdlUmVhZHlxyWU8AAADJmlUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRvYmUgWE1QIENvcmUgNS42LWMxNDIgNzkuMTYwOTI0LCAyMDE3LzA3LzEzLTAxOjA2OjM5ICAgICAgICAiPiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDo4QTZCNzMzN0I3RUYxMUU4ODcwQ0QwMjM1NTgzRTJDNyIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo4QTZCNzMzNkI3RUYxMUU4ODcwQ0QwMjM1NTgzRTJDNyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxOCAoV2luZG93cykiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo0MzYyNEUxRUI3RUUxMUU4ODZGQzgwRjNBODgyNTdFOSIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo0MzYyNEUxRkI3RUUxMUU4ODZGQzgwRjNBODgyNTdFOSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/Pl0yAuwAAABBSURBVDhPY/wPBAxUAGCDGvdBeWSAeicIDTfIXREiQArYeR9hEBOEohyMGkQYjBpEGAxjg6ib+yFMygCVvMbAAABj0hwMTNeKJwAAAABJRU5ErkJggg==') repeat;}
  .sun-editor .se-selector-table .se-table-size-unhighlighted {position:relative !important; z-index:1; font-size:18px; width:10em; height:10em; background:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASAgMAAAAroGbEAAAACVBMVEUAAIj4+Pjp6ekKlAqjAAAAAXRSTlMAQObYZgAAAAFiS0dEAIgFHUgAAAAJcEhZcwAACxMAAAsTAQCanBgAAAAHdElNRQfYAR0BKhmnaJzPAAAAG0lEQVQI12NgAAOtVatWMTCohoaGUY+EmIkEAEruEzK2J7tvAAAAAElFTkSuQmCC') repeat;}
  .sun-editor .se-selector-table .se-table-size-display {padding-left:5px;}
  .sun-editor .se-list-layer.se-table-split {top:36px;}
  .sun-editor .se-list-layer .se-selector-color {display:flex; width:max-content; max-width:270px; height:auto; padding:0; margin:auto;}
  .sun-editor .se-list-layer .se-selector-color .se-color-pallet {width:100%; height:100%; padding:0;}
  .sun-editor .se-list-layer .se-selector-color .se-color-pallet li {display:flex; float:left; position:relative; margin:0;}
  .sun-editor .se-list-layer .se-selector-color .se-color-pallet button {display:block; cursor:default; width:30px; height:30px; text-indent:-9999px;}
  .sun-editor .se-list-layer .se-selector-color .se-color-pallet button.active, 
  .sun-editor .se-list-layer .se-selector-color .se-color-pallet button:hover, 
  .sun-editor .se-list-layer .se-selector-color .se-color-pallet button:focus {border:3px solid #fff;}
  .sun-editor .se-form-group {display:flex; width:100%; min-height:40px; height:auto; padding:4px;}
  .sun-editor .se-form-group input {flex:auto; display:inline-block; width:auto; height:33px; font-size:12px; margin:1px 0 1px 0; padding:0; border-radius:0.25rem; border:1px solid #ccc;}
  .sun-editor .se-form-group button, .sun-editor .se-submenu-form-group button {float:right; width:34px; height:34px; margin:0 2px !important;}
  .sun-editor .se-form-group button.se-btn, .sun-editor .se-form-group button.se-btn {border:1px solid #ccc;}
  .sun-editor .se-form-group > div {position:relative;}
  .sun-editor .se-form-group label {display:inline-block; max-width:100%; margin-bottom:5px; font-weight:bold;}
  .sun-editor .se-form-group-label {width:100%; height:auto; padding:0px 4px;}
  .sun-editor .se-form-group-label label {font-size:13px; font-weight:bold;}
  .sun-editor .se-submenu .se-form-group input {width:auto; height:33px; color:#555;}
  .sun-editor .se-submenu .se-form-group .se-color-input {width:72px; text-transform:uppercase; border:none; border-bottom:2px solid #b1b1b1; outline:none;}
  .sun-editor .se-submenu .se-form-group .se-color-input:focus {border-bottom:3px solid #b1b1b1;}
  .sun-editor .se-wrapper {position:relative !important; width:100%; height:auto; overflow:hidden; z-index:1;}
  .sun-editor .se-wrapper .se-wrapper-inner {width:100%; height:100%; min-height:65px; overflow-y:auto; overflow-x:auto; -webkit-overflow-scrolling:touch; user-select:auto; -o-user-select:auto; -moz-user-select:auto; -khtml-user-select:auto; -webkit-user-select:auto; -ms-user-select:auto;}
  .sun-editor .se-wrapper .se-wrapper-inner:focus {outline:none;}
  .sun-editor .se-wrapper .se-wrapper-code {background-color:#191919; color:#fff; font-size:13px; word-break:break-all; padding:4px; margin:0; resize:none !important;}
  .sun-editor .se-wrapper .se-wrapper-wysiwyg {display:block;}
  .sun-editor .se-wrapper .se-wrapper-code-mirror {font-size:13px;}
  .sun-editor .se-wrapper .se-placeholder {position:absolute; display:none; white-space:nowrap; text-overflow:ellipsis; z-index:1; color:#b1b1b1; font-size:13px; line-height:1.5; top:0; left:0; right:0; overflow:hidden; margin-top:0px; padding-top:16px; padding-left:16px; margin-left:0px; padding-right:16px; margin-right:0px; pointer-events:none; backface-visibility:hidden; -webkit-backface-visibility:hidden; -moz-backface-visibility:hidden;}
  .sun-editor .se-resizing-bar {display:flex; width:auto; height:auto; min-height:16px; border-top:1px solid #dadada; padding:0 4px; background-color:#fafafa; cursor:ns-resize;}
  .sun-editor .se-resizing-bar.se-resizing-none {cursor:default;}
  .sun-editor .se-resizing-back {position:absolute; display:none; cursor:default; top:0; left:0; width:100%; height:100%; z-index:2147483647;}
  .sun-editor .se-resizing-bar .se-navigation {flex:auto; position:relative; width:auto; height:auto; color:#666; margin:0; padding:0; font-size:10px; line-height:1.5; background:transparent;}
  .sun-editor .se-resizing-bar .se-char-counter-wrapper {flex:none; position:relative; display:block; width:auto; height:auto; margin:0; padding:0; color:#999; font-size:13px; background:transparent;}
  .sun-editor .se-resizing-bar .se-char-counter-wrapper.se-blink {color:#b94a48; animation:blinker 0.2s linear infinite;}
  .sun-editor .se-resizing-bar .se-char-counter-wrapper .se-char-label {margin-right:4px;}
  .sun-editor .se-dialog {position:absolute; display:none; top:0; left:0; width:100%; height:100%; z-index:2147483647;}
  .sun-editor .se-dialog label, .sun-editor .se-dialog input, .sun-editor .se-dialog button {font-size:14px; line-height:1.5; color:#111; margin:0;}
  .sun-editor .se-dialog .se-dialog-back {position:absolute; width:100%; height:100%; top:0; left:0; background-color:#222; opacity:0.5;}
  .sun-editor .se-dialog .se-dialog-inner {position:absolute; width:100%; height:100%; top:0; left:0;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-content {position:relative; width:auto; max-width:500px; margin:1.75rem auto; background-color:#fff; -webkit-background-clip:padding-box; background-clip:padding-box; border:1px solid rgba(0, 0, 0, .2); border-radius:4px; outline:0; -webkit-box-shadow:0 3px 9px rgba(0, 0, 0, .5); box-shadow:0 3px 9px rgba(0, 0, 0, .5);}
  @media screen and (max-width:509px) { .sun-editor .se-dialog .se-dialog-inner .se-dialog-content {width:100%;} }
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-content label {display:inline-block; max-width:100%; margin-bottom:5px; font-weight:bold;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-content .se-btn-primary {display:inline-block; padding:6px 12px; margin:0 0 10px 0 !important; font-size:14px; font-weight:normal; line-height:1.42857143; text-align:center; white-space:nowrap; vertical-align:middle; -ms-touch-action:manipulation; touch-action:manipulation; border-radius:4px;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-header {height:50px; padding:6px 15px 6px 15px; border-bottom:1px solid #e5e5e5;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-header .se-dialog-close {float:right; font-weight:bold; text-shadow:0 1px 0 #fff; -webkit-appearance:none; filter:alpha(opacity=100); opacity:1;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-header .se-modal-title {float:left; font-size:14px; font-weight:bold; margin:0; padding:0; line-height:2.5;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-body {position:relative; padding:15px 15px 5px 15px;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-form {margin-bottom:10px;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-form-footer {margin-top:10px; margin-bottom:0;}
  .sun-editor .se-dialog .se-dialog-inner input:disabled {background-color:#f3f3f3;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-size-text {width:100%;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-size-text .size-w {width:70px; text-align:center;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-size-text .size-h {width:70px; text-align:center;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-size-x {margin:0 8px 0 8px; width:25px; text-align:center;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-footer {height:auto; min-height:55px; padding:10px 15px 0px 15px; text-align:right; border-top:1px solid #e5e5e5;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-footer > div {float:left;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-footer > div > label {margin:0 5px 0 0;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-btn-radio {margin-left:12px; margin-right:6px;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-btn-check {margin-left:12px; margin-right:4px;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-form-footer .se-dialog-btn-check {margin-left:0; margin-right:4px;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-form-footer label:first-child {margin-right:16px; margin-left:0px;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-form .se-dialog-form-files {position:relative; display:flex; align-items:center;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-form .se-dialog-form-files > input {flex:auto;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-form .se-dialog-form-files .se-dialog-files-edge-button {flex:auto; opacity:0.8; border:1px solid #ccc;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-form .se-dialog-form-files .se-dialog-files-edge-button.se-file-remove > svg {width:8px; height:8px;} /* custom."remove icon" */
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-form .se-dialog-form-files .se-dialog-files-edge-button:hover {background-color:#f0f0f0; outline:0 none;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-form .se-dialog-form-files .se-dialog-files-edge-button:active {background-color:#e9e9e9; -webkit-box-shadow:inset 0 3px 5px #d6d6d6; box-shadow:inset 0 3px 5px #d6d6d6;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-form .se-input-select {display:inline-block; width:auto; height:34px; font-size:14px; text-align:center; line-height:1.42857143;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-form .se-input-control {display:inline-block; width:70px; height:34px; font-size:14px; text-align:center; line-height:1.42857143;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-form .se-input-form {display:block; width:100%; height:34px; font-size:14px; line-height:1.42857143; padding:0 4px;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-form .se-input-form.se-input-url {direction:ltr;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-form .se-input-form.se-input-url:disabled {text-decoration:line-through; color:#999;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-form .se-video-ratio {width:70px; margin-left:4px;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-form a {color:#004cff;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-btn-revert {border:1px solid #ccc;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-btn-revert:hover {background-color:#e1e1e1; border-color:#d1d1d1; outline:0 none;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-btn-revert:active {background-color:#d1d1d1; border-color:#c1c1c1; -webkit-box-shadow:inset 0 3px 5px #c1c1c1; box-shadow:inset 0 3px 5px #c1c1c1;}
  .sun-editor .se-dialog-tabs {width:100%; height:25px; border-bottom:1px solid #e5e5e5;}
  .sun-editor .se-dialog-tabs button {background-color:#e5e5e5; border-right:1px solid #e5e5e5; float:left; outline:none; padding:2px 13px; transition:0.3s;}
  .sun-editor .se-dialog-tabs button:hover {background-color:#fff;}
  .sun-editor .se-dialog-tabs button.active {background-color:#fff;border-bottom:0;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-form .se-input-form.se-math-exp {resize:vertical; height:14em; border:1px solid #ccc; font-size:13px; padding:4px; direction:ltr;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-form .se-input-select.se-math-size {width:6em; height:28px; margin-left:1em;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-form .se-math-preview {font-size:13px;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-form .se-math-preview > span {display:inline-block; -webkit-box-shadow:0 0 0 0.1rem #c7deff; box-shadow:0 0 0 0.1rem #c7deff;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-form .se-math-preview > span * {direction:ltr;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-form .se-math-preview > .se-math-katex-error {color:#b94a48; -webkit-box-shadow:0 0 0 0.1rem #f2dede; box-shadow:0 0 0 0.1rem #f2dede;}
  .sun-editor .se-dialog .se-dialog-inner .se-dialog-form .se-math-preview > .se-math-katex-error svg {width:auto; height:30px; color:#b94a48;}
  .sun-editor .se-dialog .se-dialog-inner .se-link-preview {display:block; height:auto; max-height:18px; font-size:13px; font-weight:normal; font-family:inherit; color:#666; background-color:transparent; overflow:hidden; text-overflow:ellipsis; word-break:break-all; white-space:pre;}
  .sun-editor .se-dialog .se-dialog-inner .se-anchor-preview-form {width:100%; display:flex; margin-top:4px;}
  .sun-editor .se-dialog .se-dialog-inner .se-anchor-preview-form .se-svg.se-anchor-preview-icon {flex:unset; display:none; line-height:1.5; color:#4592ff;}
  .sun-editor .se-dialog .se-dialog-inner .se-anchor-preview-form .se-link-preview {flex:auto; margin:0; }
  .sun-editor .se-dialog .se-dialog-inner .se-anchor-rel {height:34px;}
  .sun-editor .se-dialog .se-dialog-inner .se-anchor-rel-btn {width:46px; color:#3f9dff;}
  .sun-editor .se-dialog .se-dialog-inner .se-anchor-rel-wrapper {display:flex; line-height:1.5; padding-top:6px;}
  .sun-editor .se-dialog .se-dialog-inner .se-anchor-rel-preview {text-align:left;}
  .sun-editor .se-controller .se-arrow.se-arrow-up {border-bottom-color:rgba(0, 0, 0, .25);}
  .sun-editor .se-controller {position:absolute; display:none; overflow:visible; z-index:6; border:1px solid rgba(0, 0, 0, .25); border-radius:4px; text-align:start; text-decoration:none; text-shadow:none; text-transform:none; letter-spacing:normal; word-break:normal; word-spacing:normal; word-wrap:normal; white-space:normal; background-color:#fff; -webkit-background-clip:padding-box; background-clip:padding-box; -webkit-box-shadow:0 5px 10px rgba(0, 0, 0, .2); box-shadow:0 5px 10px rgba(0, 0, 0, .2); line-break:auto;}
  .sun-editor .se-controller .se-btn-group {position:relative; display:flex; vertical-align:middle; padding:2px; top:0; left:0;}
  .sun-editor .se-controller .se-btn-group .se-btn-group-sub {left:50%; min-width:auto; width:max-content; display:none;/* display: inline-table; */}
  .sun-editor .se-controller .se-btn-group .se-btn-group-sub button {margin:0; min-width:72px;}
  .sun-editor .se-controller .se-btn-group button {position:relative; min-height:34px; height:auto; border:none; border-radius:4px; margin:1px; padding:5px 10px; font-size:12px; line-height:1.5; display:inline-block; font-weight:normal; text-align:center; white-space:nowrap; vertical-align:middle; -ms-touch-action:manipulation; touch-action:manipulation;}
  .sun-editor .se-controller .se-btn-group button:hover:enabled, .sun-editor .se-controller .se-btn-group button:focus:enabled {background-color:#e1e1e1; border-color:#d1d1d1; outline:0 none;}
  .sun-editor .se-controller .se-btn-group button:active:enabled {background-color:#d1d1d1; border-color:#c1c1c1; -webkit-box-shadow:inset 0 3px 5px #c1c1c1; box-shadow:inset 0 3px 5px #c1c1c1;}
  .sun-editor .se-controller .se-btn-group button span {display:block; padding:0; margin:0;}
  .sun-editor .se-controller .se-btn-group button:enabled.active {color:#4592ff; outline:0 none;}
  .sun-editor .se-controller .se-btn-group button:enabled.active:hover, .sun-editor .se-controller .se-btn-group button:enabled.active:focus {background-color:#e1e1e1; border-color:#d1d1d1; outline:0 none;}
  .sun-editor .se-controller .se-btn-group button:enabled.active:active {background-color:#d1d1d1; border-color:#c1c1c1; -webkit-box-shadow:inset 0 3px 5px #c1c1c1; box-shadow:inset 0 3px 5px #c1c1c1;}
  .sun-editor .se-controller .se-btn-group button:enabled.on {background-color:#e1e1e1; border-color:#d1d1d1; outline:0 none;}
  .sun-editor .se-controller .se-btn-group button:enabled.on:hover, .sun-editor .se-controller .se-btn-group button:enabled.on:focus {background-color:#d1d1d1; border-color:#c1c1c1; outline:0 none;}
  .sun-editor .se-controller .se-btn-group button:enabled.on:active {background-color:#c1c1c1; border-color:#b1b1b1; -webkit-box-shadow:inset 0 3px 5px #b1b1b1; box-shadow:inset 0 3px 5px #b1b1b1;}
  .sun-editor .se-controller .se-form-group input {min-width:120px;}
  .sun-editor .se-controller-resizing {margin-top:-50px !important; padding:0; font-size:14px; font-style:normal; font-weight:normal; line-height:1.42857143;}
  .sun-editor .se-controller-resizing .se-btn-group .se-btn-group-sub.se-resizing-align-list {width:74px;}
  .sun-editor .se-resizing-container {position:absolute; display:none; outline:1px solid #3f9dff; background-color:transparent;}
  .sun-editor .se-resizing-container .se-modal-resize {position:absolute; display:inline-block; background-color:#3f9dff; opacity:0.3;}
  .sun-editor .se-resizing-container .se-resize-dot {position:absolute; top:0px; left:0px; width:100%; height:100%}
  .sun-editor .se-resizing-container .se-resize-dot > span {position:absolute; width:7px; height:7px; background-color:#3f9dff; border:1px solid #4592ff;}
  .sun-editor .se-resizing-container .se-resize-dot > span.tl {top:-5px; left:-5px; cursor:nw-resize;}
  .sun-editor .se-resizing-container .se-resize-dot > span.tr {top:-5px; right:-5px; cursor:ne-resize;}
  .sun-editor .se-resizing-container .se-resize-dot > span.bl {bottom:-5px; left:-5px; cursor:sw-resize;}
  .sun-editor .se-resizing-container .se-resize-dot > span.br {right:-5px; bottom:-5px; cursor:se-resize;}
  .sun-editor .se-resizing-container .se-resize-dot > span.lw {left:-7px; bottom:50%; cursor:w-resize;}
  .sun-editor .se-resizing-container .se-resize-dot > span.th {left:50%; top:-7px; cursor:n-resize;}
  .sun-editor .se-resizing-container .se-resize-dot > span.rw {right:-7px; bottom:50%; cursor:e-resize;}
  .sun-editor .se-resizing-container .se-resize-dot > span.bh {right:50%; bottom:-7px; cursor:s-resize;}
  .sun-editor .se-resizing-container .se-resize-display {position:absolute; right:0; bottom:0; padding:5px; margin:5px; font-size:12px; color:#fff; background-color:#333; border-radius:4px;}
  .sun-editor .se-controller-table {width:auto; padding:0; font-size:14px; font-style:normal; font-weight:normal; line-height:1.42857143;}
  .sun-editor .se-controller-table-cell {width:auto; padding:0; font-size:14px; font-style:normal; font-weight:normal; line-height:1.42857143;}
  .sun-editor .se-controller-link {padding:0; font-size:14px; font-style:normal; font-weight:normal; line-height:1.42857143;}
  .sun-editor .se-controller-link::before, .sun-editor .se-controller-link::after {-webkit-box-sizing:border-box; -moz-box-sizing:border-box; box-sizing:border-box;}
  .sun-editor .se-controller-link .link-content {padding:0; margin:0;}
  .sun-editor .se-controller-link .link-content a {display:inline-block; color:#4592ff; max-width:200px; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; vertical-align:middle; margin-left:5px;}
  .sun-editor .se-select-list {position:absolute; top:0px; left:0px; display:none; width:auto; max-width:100%; background-color:#fff; padding:0; margin:0; border:1px solid #bababa; -webkit-box-shadow:0 3px 9px rgba(0, 0, 0, .5); box-shadow:0 3px 9px rgba(0, 0, 0, .5); outline:0 none;}
  .sun-editor .se-select-list .se-select-item {line-height:28px; min-height:28px; font-size:13px; padding:0 5px; margin:2px 0; cursor:pointer;}
  .sun-editor .se-select-list.__se_select-menu-mouse-move .se-select-item:hover, .sun-editor .se-select-list:not(.__se_select-menu-mouse-move) .se-select-item.active {background-color:#e1e1e1;}
  .sun-editor .se-dialog-form-files .se-select-list {width:100%;}
  .sun-editor .se-file-browser {position:absolute; display:none; top:0; left:0; width:100%; height:100%; z-index:2147483647;}
  .sun-editor .se-file-browser label, .sun-editor .se-file-browser input, .sun-editor .se-file-browser button {font-size:14px; line-height:1.5; color:#111; margin:0;}
  .sun-editor .se-file-browser .se-file-browser-back {position:absolute; display:block; width:100%; height:100%; top:0; left:0; background-color:#222; opacity:0.5;}
  .sun-editor .se-file-browser .se-file-browser-inner {position:absolute; display:block; width:100%; height:100%; top:0; left:0;}
  .sun-editor .se-file-browser .se-file-browser-inner .se-file-browser-content {position:relative; width:960px; max-width:100%; margin:20px auto; background-color:#fff; -webkit-background-clip:padding-box; background-clip:padding-box; border:1px solid rgba(0, 0, 0, .2); border-radius:4px; outline:0; -webkit-box-shadow:0 3px 9px rgba(0, 0, 0, .5); box-shadow:0 3px 9px rgba(0, 0, 0, .5);}
  .sun-editor .se-file-browser .se-file-browser-header {height:auto; min-height:50px; padding:6px 15px 6px 15px; border-bottom:1px solid #e5e5e5;}
  .sun-editor .se-file-browser .se-file-browser-header .se-file-browser-close {float:right; font-weight:bold; text-shadow:0 1px 0 #fff; -webkit-appearance:none; filter:alpha(opacity=100); opacity:1;}
  .sun-editor .se-file-browser .se-file-browser-header .se-file-browser-close > svg {width:12px; height:12px;}
  .sun-editor .se-file-browser .se-file-browser-header .se-file-browser-title {font-size:16px; font-weight:bold; margin:0; padding:0; line-height:2.2;}
  .sun-editor .se-file-browser .se-file-browser-tags {display:block; width:100%; padding:0; text-align:left; margin:0 -15px;}
  .sun-editor .se-file-browser .se-file-browser-tags a {display:inline-block; background-color:#f5f5f5; padding:6px 12px; margin:8px 0 8px 8px; color:#333; text-decoration:none; border-radius:32px; -moz-border-radius:32px; -webkit-border-radius:32px; -moz-background-clip:padding; -webkit-background-clip:padding-box; background-clip:padding-box; cursor:pointer;}
  .sun-editor .se-file-browser .se-file-browser-tags a:hover {background-color:#e1e1e1;}
  .sun-editor .se-file-browser .se-file-browser-tags a:active {background-color:#d1d1d1;}
  .sun-editor .se-file-browser .se-file-browser-tags a.on {background-color:#ebf3fe; color:#4592ff;}
  .sun-editor .se-file-browser .se-file-browser-tags a.on:hover {background-color:#d8e8fe;}
  .sun-editor .se-file-browser .se-file-browser-tags a.on:active {background-color:#c7deff;}
  .sun-editor .se-file-browser .se-file-browser-body {position:relative; height:auto; min-height:350px; padding:20px; overflow-y:auto;}
  .sun-editor .se-file-browser .se-file-browser-body .se-file-browser-list {position:relative; width:100%;}
  @media screen and (max-width:992px) { .sun-editor .se-file-browser .se-file-browser-inner .se-file-browser-content {width:748px;} }
  @media screen and (max-width:768px) { .sun-editor .se-file-browser .se-file-browser-inner .se-file-browser-content {width:600px;} }
  .sun-editor .se-file-browser .se-file-browser-list .se-file-item-column {position:relative; display:block; height:auto; float:left;}
  .sun-editor .se-file-browser .se-file-browser-list.se-image-list .se-file-item-column {width:calc(25% - 20px); margin:0 10px;}
  @media screen and (max-width:992px) { .sun-editor .se-file-browser .se-file-browser-list.se-image-list .se-file-item-column {width:calc(33% - 20px);} }
  @media screen and (max-width:768px) { .sun-editor .se-file-browser .se-file-browser-list.se-image-list .se-file-item-column {width:calc(50% - 20px);} }
  .sun-editor .se-file-browser .se-file-browser-list.se-image-list .se-file-item-img {position:relative; display:block; cursor: pointer; width:100%; height:auto; border-radius:4px; outline:0; margin:10px 0;}
  .sun-editor .se-file-browser .se-file-browser-list.se-image-list .se-file-item-img:hover {opacity:0.8; -webkit-box-shadow:0 0 0 0.2rem #3288ff; box-shadow:0 0 0 0.2rem #3288ff;}
  .sun-editor .se-file-browser .se-file-browser-list.se-image-list .se-file-item-img > img {position:relative; display:block; width:100%; border-radius:4px; outline:0; height:auto;}
  .sun-editor .se-file-browser .se-file-browser-list.se-image-list .se-file-item-img > .se-file-img-name {position: absolute; z-index:1; font-size:13px; color:#fff; left:0px; bottom:0; padding:5px 10px; background-color:transparent; width:100%; height:30px; border-bottom-right-radius:4px; border-bottom-left-radius:4px;}
  .sun-editor .se-file-browser .se-file-browser-list.se-image-list .se-file-item-img > .se-file-img-name.se-file-name-back {background-color:#333; opacity:0.6;}
  .sun-editor .se-notice {position:absolute; top:0; display:none; z-index:7; width:100%; height:auto; word-break:break-all; font-size:13px; color:#b94a48; background-color:#f2dede; padding:15px; margin:0; border:1px solid #eed3d7; user-select:auto; -o-user-select:auto; -moz-user-select:auto; -khtml-user-select:auto; -webkit-user-select:auto; -ms-user-select:auto;}
  .sun-editor .se-notice button {float:right; padding:7px;}
  .sun-editor .se-tooltip {position:relative; overflow:visible;}
  .sun-editor .se-tooltip .se-tooltip-inner {visibility:hidden; position:absolute; display:block; width:auto; height:auto; top:120%; left:50%; background:transparent; opacity:0; z-index:1; line-height:1.5; transition:opacity 0.5s; margin:0; padding:0; bottom:auto; float:none; pointer-events:none; backface-visibility:hidden; -webkit-backface-visibility:hidden; -moz-backface-visibility:hidden;}
  .sun-editor .se-tooltip .se-tooltip-inner .se-tooltip-text {position:relative; display:inline-block; width:auto; height:auto; left:-50%; font-size:0.9em; margin:0; padding:4px 6px; border-radius:2px; background-color:#333; color:#fff; text-align:center; line-height:unset; white-space:nowrap; cursor:auto;}
  .sun-editor .se-tooltip .se-tooltip-inner .se-tooltip-text::after {content:""; position:absolute; bottom:100%; left:50%; margin-left:-5px; border-width:5px; border-style:solid; border-color:transparent transparent #333 transparent;}
  .sun-editor .se-tooltip:hover .se-tooltip-inner {visibility:visible; opacity:1;}
  .sun-editor .se-tooltip .se-tooltip-inner .se-tooltip-text .se-shortcut {display:block !important;}
  .sun-editor .se-tooltip .se-tooltip-inner .se-tooltip-text .se-shortcut > .se-shortcut-key {display:inline; font-weight:bold;}
  .sun-editor.se-rtl .se-btn-tray {direction:rtl;}
  .sun-editor.se-rtl .se-btn-select svg {margin:auto 1px;}
  .sun-editor.se-rtl .se-btn-select .txt {flex:auto; text-align:right; direction:rtl;}
  .sun-editor.se-rtl .se-btn-list {text-align:right;}
  .sun-editor.se-rtl .se-btn-list > .se-list-icon {margin:-1px 0 0 10px;}
  .sun-editor.se-rtl .se-menu-list:not(.se-menu-dir-fix) {float:right;}
  .sun-editor.se-rtl .se-menu-list:not(.se-menu-dir-fix) li {float:right;}
  .sun-editor.se-rtl .se-list-layer * {direction:rtl;}
  .sun-editor.se-rtl .se-list-layer.se-list-format ul blockquote {padding:0 7px 0 0; border-right-width:5px; border-left-width:0;}
  .sun-editor.se-rtl .se-list-layer .se-selector-color .se-color-pallet li {float:right;}
  .sun-editor.se-rtl .se-list-inner .se-list-checked li button > .se-svg {float:right; padding:6px 0 0 6px;}
  .sun-editor.se-rtl .se-wrapper .se-placeholder {direction:rtl;}
  .sun-editor.se-rtl .se-tooltip .se-tooltip-inner .se-tooltip-text {direction:rtl;}
  .sun-editor.se-rtl .se-tooltip .se-tooltip-inner .se-tooltip-text .se-shortcut {direction:ltr;}
  .sun-editor.se-rtl .se-dialog * {direction:rtl;}
  .sun-editor.se-rtl .se-dialog .se-dialog-inner .se-dialog-form .se-video-ratio {margin-left:0; margin-right:4px;}
  .sun-editor.se-rtl .se-dialog .se-dialog-inner .se-dialog-header .se-dialog-close {float:left;}
  .sun-editor.se-rtl .se-dialog .se-dialog-inner .se-dialog-header .se-modal-title {float:right;}
  .sun-editor.se-rtl .se-dialog-tabs button {float:right;}
  .sun-editor.se-rtl .se-dialog .se-dialog-inner .se-dialog-size-text {padding-right:34px;}
  .sun-editor.se-rtl .se-dialog .se-dialog-inner .se-dialog-footer .se-btn-primary {float:left}
  .sun-editor.se-rtl .se-dialog .se-dialog-inner .se-dialog-footer > div {float:right;}
  .sun-editor.se-rtl .se-dialog .se-dialog-inner .se-dialog-footer > div > label {margin:0 0 0 5px;}
  .sun-editor.se-rtl .se-dialog .se-dialog-inner .se-dialog-form-footer label:first-child {margin-left:16px; margin-right:0px;}
  .sun-editor.se-rtl .se-dialog .se-dialog-inner .se-anchor-rel-preview {margin-left:4px; text-align:right;}
  .sun-editor.se-rtl .se-dialog .se-dialog-inner .se-anchor-rel-btn {float:right;}
  .sun-editor.se-rtl .se-file-browser * {direction:rtl;}
  .sun-editor.se-rtl .se-file-browser .se-file-browser-tags {text-align:right;}
  .sun-editor.se-rtl .se-file-browser .se-file-browser-tags a {margin: 8px 8px 0 8px;}
  .sun-editor.se-rtl .se-file-browser .se-file-browser-header .se-file-browser-close {float:left;}
  .sun-editor.se-rtl .se-controller .se-btn-group {direction:rtl;}
  .sun-editor.se-rtl .se-resizing-container .se-resize-display {direction:rtl;}
  .sun-editor .se-btn-module-border.module-float-left {float:left;}
  .sun-editor .se-btn-module-border.module-float-right {float:right;}
  .sun-editor .se-error {color:#d9534f;}
  .sun-editor input.se-error:focus, select.se-error:focus, textarea.se-error:focus {
    border: 1px solid #f2dede;
    outline: 0;
    -webkit-box-shadow: 0 0 0 0.2rem #eed3d7;
    box-shadow: 0 0 0 0.2rem #eed3d7;
    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
  }
  .sun-editor hr.__se__solid {
    border-style: solid none none;
  }
  .sun-editor hr.__se__dotted {
    border-style: dotted none none;
  }
  .sun-editor hr.__se__dashed {
    border-style: dashed none none;
  }
  @keyframes blinker { 50% {opacity:0;} }
  @keyframes spinner { to {transform:rotate(361deg);} }

  .sun-editor-editable {
    font-family: Helvetica Neue;
    font-size: 13px;
    color: #333;
    background-color: #fff;
    line-height: 1.5;
    word-break: normal;
    word-wrap: break-word;
    padding: 16px;
    margin: 0;
  }
  .sun-editor-editable * {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    font-family: inherit;
    font-size: inherit;
    color: inherit;
  }
  .sun-editor-editable.se-rtl * {
    direction: rtl;
  }
  .sun-editor-editable .se-component > figure {
    direction: initial;
  }
  .sun-editor-editable td, .sun-editor-editable th, 
  .sun-editor-editable figure, .sun-editor-editable figcaption, .sun-editor-editable img, 
  .sun-editor-editable iframe, .sun-editor-editable video, .sun-editor-editable audio {
    position: relative;
  }
  .sun-editor-editable span {
    display: inline;
    vertical-align: baseline;
    margin: 0;
    padding: 0;
  }
  .sun-editor-editable span.katex {
    display: inline-block;
  }
  .sun-editor-editable span.katex * {
    direction: ltr;
  }
  .sun-editor-editable a {
    color: #004cff;
    text-decoration: none;
  }
  .sun-editor-editable span[style~="color:"] a {
    color: inherit;
  }
  .sun-editor-editable a:hover, .sun-editor-editable a:focus {
    cursor: pointer;
    color: #0093ff;
    text-decoration: underline;
  }
  .sun-editor-editable a.on {
    color: #0093ff;
    background-color: #e8f7ff;
  }
  .sun-editor-editable pre {
    display: block;
    padding: 8px;
    margin: 0 0 10px;
    font-family: monospace;
    color: #666;
    line-height: 1.45;
    background-color: #f9f9f9;
    border: 1px solid #e1e1e1;
    border-radius: 2px;
    white-space: pre-wrap !important;
    word-wrap: break-word;
    overflow: visible;
  }
  .sun-editor-editable ol {
    list-style-position: outside;
    display: block;
    list-style-type: decimal;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
  }
  .sun-editor-editable ul {
    list-style-position: outside;
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
  }
  .sun-editor-editable li {
    display: list-item;
    text-align: -webkit-match-parent;
    margin-bottom: 5px;
  }
  .sun-editor-editable ol ol, .sun-editor-editable ol ul, .sun-editor-editable ul ol, .sun-editor-editable ul ul {
    margin: 0;
  }
  .sun-editor-editable ol ol, .sun-editor-editable ul ol {
    list-style-type: lower-alpha;
  }
  .sun-editor-editable ol ol ol, .sun-editor-editable ul ol ol, .sun-editor-editable ul ul ol {
    list-style-type: upper-roman;
  }
  .sun-editor-editable ul ul, .sun-editor-editable ol ul {
    list-style-type: circle;
  }
  .sun-editor-editable ul ul ul, .sun-editor-editable ol ul ul, .sun-editor-editable ol ol ul {
    list-style-type: square;
  }
  .sun-editor-editable sub, .sun-editor-editable sup {
    font-size: 75%;
    line-height: 0;
  }
  .sun-editor-editable sub {
    vertical-align: sub;
  }
  .sun-editor-editable sup {
    vertical-align: super;
  }
  .sun-editor-editable p {
    display: block;
    margin: 0 0 10px;
  }
  .sun-editor-editable div {
    display: block;
    margin: 0;
    padding: 0;
  }
  .sun-editor-editable blockquote {
    display: block;
    font-family: inherit;
    font-size: inherit;
    color: #999;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0;
    margin-inline-end: 0;
    border-style: solid;
    border-width: 0;
    padding-top: 0;
    padding-bottom: 0;
    border-color: #b1b1b1;
    padding-left: 20px;
    padding-right: 5px;
    border-left-width: 5px;
    border-right-width: 0px;
  }
  .sun-editor-editable blockquote blockquote {
    border-color: #c1c1c1;
  }
  .sun-editor-editable blockquote blockquote blockquote {
    border-color: #d1d1d1;
  }
  .sun-editor-editable blockquote blockquote blockquote blockquote {
    border-color: #e1e1e1;
  }
  .sun-editor-editable.se-rtl blockquote {
    padding-left: 5px;
    padding-right: 20px;
    border-left-width: 0px;
    border-right-width: 5px;
  }
  .sun-editor-editable h1 {
    display: block;
    font-size: 2em;
    margin-block-start: 0.67em;
    margin-block-end: 0.67em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
  }
  .sun-editor-editable h2 {
    display: block;
    font-size: 1.5em;
    margin-block-start: 0.83em;
    margin-block-end: 0.83em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
  }
  .sun-editor-editable h3 {
    display: block;
    font-size: 1.17em;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
  }
  .sun-editor-editable h4 {
    display: block;
    font-size: 1em;
    margin-block-start: 1.33em;
    margin-block-end: 1.33em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
  }
  .sun-editor-editable h5 {
    display: block;
    font-size: 0.83em;
    margin-block-start: 1.67em;
    margin-block-end: 1.67em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
  }
  .sun-editor-editable h6 {
    display: block;
    font-size: 0.67em;
    margin-block-start: 2.33em;
    margin-block-end: 2.33em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
  }
  .sun-editor-editable hr {
    display: flex;
    border-width: 1px 0 0;
    border-color: black;
    border-image: initial;
    height: 1px;
  }
  .sun-editor-editable hr.__se__solid {
    border-style: solid none none;
  }
  .sun-editor-editable hr.__se__dotted {
    border-style: dotted none none;
  }
  .sun-editor-editable hr.__se__dashed {
    border-style: dashed none none;
  }
  .sun-editor-editable hr.on {
    border-color: #4592ff;
    -webkit-box-shadow:0 0 0 0.1rem #c7deff;
    box-shadow:0 0 0 0.1rem #c7deff;
  }
  .sun-editor-editable table {
    display: table;
    table-layout: auto !important;
    border: 1px solid rgb(204, 204, 204);
    width: 100%;
    max-width: 100%;
    margin: 0 0 10px;
    background-color: transparent;
    border-spacing: 0;
    border-collapse: collapse;
  }
  .sun-editor-editable.se-rtl table {
    margin: 0 0 10px auto;
  }
  .sun-editor-editable table thead {
    border-bottom: 2px solid #333;
  }
  .sun-editor-editable table tr {
    border: 1px solid #efefef;
  }
  .sun-editor-editable table th {
    background-color: #f3f3f3;
  }
  .sun-editor-editable table th, .sun-editor-editable table td {
    border: 1px solid #e1e1e1;
    padding:0.4em;
    background-clip: padding-box;
  }
  .sun-editor-editable table.se-table-size-auto {
    width: auto !important;
  }
  .sun-editor-editable table.se-table-size-100 {
    width: 100% !important;
  }
  .sun-editor-editable table.se-table-layout-auto {
    table-layout: auto !important;
  }
  .sun-editor-editable table.se-table-layout-fixed {
    table-layout: fixed !important;
  }
  .sun-editor-editable table td.se-table-selected-cell, .sun-editor-editable table th.se-table-selected-cell {
    outline: 1px double #4592ff;
  }
  .sun-editor-editable.se-disabled * {
    user-select: none;
    -o-user-select: none;
    -moz-user-select: none;
    -khtml-user-select: none;
    -webkit-user-select: none;
    -ms-user-select: none;
  }
  .sun-editor-editable .se-component {
    display: flex;
    padding: 1px;
    margin: 0 0 10px;
  }
  .sun-editor-editable[contenteditable=true] .se-component {
    outline: 1px dashed #e1e1e1;
  }
  .sun-editor-editable[contenteditable=true] .se-component.se-component-copy {
    -webkit-box-shadow:0 0 0 0.2rem #80bdff; box-shadow:0 0 0 0.2rem #3f9dff; transition:border-color .15s ease-in-out,box-shadow .15s ease-in-out;
  }
  .sun-editor-editable .__se__float-left {
    float: left;
    margin-right: 4px;
  }
  .sun-editor-editable .__se__float-right {
    float: right;
    margin-left: 4px;
  }
  .sun-editor-editable .__se__float-center {
    float: center;
  }
  .sun-editor-editable .__se__float-none {
    float: none;
  }
  .sun-editor-editable img, .sun-editor-editable iframe, .sun-editor-editable video, .sun-editor-editable audio {
    display: block;
    margin: 0;
    padding: 0;
    width: auto;
    height: auto;
    max-width: 100%;
  }
  .sun-editor-editable[contenteditable="true"]:not(.se-read-only) figure::after {
    position: absolute;
    content: '';
    z-index: 1;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    cursor: default;
    display: block;
    background: rgba(0,0,0,0);
  }
  .sun-editor-editable[contenteditable="true"] figure a, .sun-editor-editable[contenteditable="true"] figure img, .sun-editor-editable[contenteditable="true"] figure iframe, .sun-editor-editable[contenteditable="true"] figure video {
    z-index: 0;
  }
  .sun-editor-editable[contenteditable="true"] figure figcaption {
    display: block;
    z-index: 2;
  }
  .sun-editor-editable[contenteditable="true"] figure figcaption:focus {
    border-color: #80bdff;
    outline: 0;
    -webkit-box-shadow: 0 0 0 0.2rem #c7deff;
    box-shadow: 0 0 0 0.2rem #c7deff;
  }
  .sun-editor-editable .se-image-container, .sun-editor-editable .se-video-container {
    width: auto;
    height: auto;
    max-width: 100%;
  }
  .sun-editor-editable figure {
    display: block;
    outline: none;
    padding: 0;
    margin: 0;
  }
  .sun-editor-editable .__se__float-left figure,
  .sun-editor-editable .__se__float-right figure,
  .sun-editor-editable .__se__float-center figure {
    margin: auto !important;
  }
  .sun-editor-editable figure figcaption {
    padding: 1em .5em;
    margin: 0;
    background-color: #f9f9f9;
    outline: none;
  }
  .sun-editor-editable figure figcaption p{
    line-height: 2;
    margin: 0;
  }
  .sun-editor-editable .se-image-container a img {
    padding: 1px;
    margin: 1px;
    outline: 1px solid #4592ff;
  }
  .sun-editor-editable .se-video-container iframe, .sun-editor-editable .se-video-container video {
    outline: 1px solid #9e9e9e;
    position: absolute;
    top: 0;
    left: 0;
    border: 0;
    width: 100%;
    height: 100%;
  }
  .sun-editor-editable .se-video-container figure {
    left: 0px;
    width: 100%;
    max-width: 100%;
  }
  .sun-editor-editable audio {
    width: 300px;
    height: 54px;
  }
  .sun-editor-editable audio.active {
    outline: 2px solid #80bdff;
  }
  .sun-editor-editable.se-show-block p, .sun-editor-editable.se-show-block div, 
  .sun-editor-editable.se-show-block h1, .sun-editor-editable.se-show-block h2, .sun-editor-editable.se-show-block h3, 
  .sun-editor-editable.se-show-block h4, .sun-editor-editable.se-show-block h5, .sun-editor-editable.se-show-block h6, .sun-editor-editable.se-show-block li, 
  .sun-editor-editable.se-show-block ol, .sun-editor-editable.se-show-block ul, 
  .sun-editor-editable.se-show-block pre {
    border:1px dashed #3f9dff !important;
    padding:14px 8px 8px 8px !important;
  }
  .sun-editor-editable.se-show-block ol, .sun-editor-editable.se-show-block ul {
    border:1px dashed #d539ff !important;
  }
  .sun-editor-editable.se-show-block pre {
    border:1px dashed #27c022 !important;
  }
  .se-show-block p {background:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA0AAAAPAQMAAAAF7dc0AAAABlBMVEWAgID////n1o2sAAAAAnRSTlP/AOW3MEoAAAAaSURBVAjXY/j/gwGCPvxg+F4BQiAGDP1HQQByxxw0gqOzIwAAAABJRU5ErkJggg==') no-repeat;}
  .se-show-block div {background:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABUAAAAPAQMAAAAxlBYoAAAABlBMVEWAgID////n1o2sAAAAAnRSTlP/AOW3MEoAAAAmSURBVAjXY/j//wcDDH+8XsHwDYi/hwNx1A8w/nYLKH4XoQYJAwCXnSgcl2MOPgAAAABJRU5ErkJggg==') no-repeat;}
  .se-show-block h1 {background:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABEAAAAPAQMAAAA4f7ZSAAAABlBMVEWAgID////n1o2sAAAAAnRSTlP/AOW3MEoAAAAfSURBVAjXY/j/v4EBhr+9B+LzEPrDeygfhI8j1CBhAEhmJGY4Rf6uAAAAAElFTkSuQmCC') no-repeat;}
  .se-show-block h2 {background:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABEAAAAPAQMAAAA4f7ZSAAAABlBMVEWAgID////n1o2sAAAAAnRSTlP/AOW3MEoAAAAmSURBVAjXY/j/v4EBhr+dB+LtQPy9geEDEH97D8T3gbgdoQYJAwA51iPuD2haEAAAAABJRU5ErkJggg==') no-repeat;}
  .se-show-block h3 {background:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABEAAAAPAQMAAAA4f7ZSAAAABlBMVEWAgID////n1o2sAAAAAnRSTlP/AOW3MEoAAAAiSURBVAjXY/j/v4EBhr+dB+LtQPy9geHDeQgN5p9HqEHCADeWI+69VG2MAAAAAElFTkSuQmCC') no-repeat;}
  .se-show-block h4 {background:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAAPAQMAAADTSA1RAAAABlBMVEWAgID////n1o2sAAAAAnRSTlP/AOW3MEoAAAAiSURBVAjXY/j//wADDH97DsTXIfjDdiDdDMTfIRhZHRQDAKJOJ6L+K3y7AAAAAElFTkSuQmCC') no-repeat;}
  .se-show-block h5 {background:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABEAAAAPAQMAAAA4f7ZSAAAABlBMVEWAgID////n1o2sAAAAAnRSTlP/AOW3MEoAAAAlSURBVAjXY/j/v4EBhr+1A/F+IO5vYPiwHUh/B2IQfR6hBgkDABlWIy5uM+9GAAAAAElFTkSuQmCC') no-repeat;}
  .se-show-block h6 {background:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABEAAAAPAQMAAAA4f7ZSAAAABlBMVEWAgID////n1o2sAAAAAnRSTlP/AOW3MEoAAAAiSURBVAjXY/j/v4EBhr+dB+LtQLy/geFDP5S9HSKOrA6KAR9GIza1ptJnAAAAAElFTkSuQmCC') no-repeat;}
  .se-show-block li {background:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAPCAYAAADkmO9VAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAA7SURBVDhPYxgFcNDQ0PAfykQBIHEYhgoRB/BpwCfHBKWpBkaggYxQGgOgBzyQD1aLLA4TGwWDGjAwAACR3RcEU9Ui+wAAAABJRU5ErkJggg==') no-repeat;}
  .se-show-block ol {background:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAMCAYAAABiDJ37AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAABHSURBVDhPYxgFcNDQ0PAfhKFcFIBLHCdA1oBNM0kGEmMAPgOZoDTVANUNxAqQvURMECADRiiNAWCagDSGGhyW4DRrMAEGBgAu0SX6WpGgjAAAAABJRU5ErkJggg==') no-repeat;}
  .se-show-block ul {background:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAMCAYAAABiDJ37AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAA1SURBVDhPYxgFDA0NDf+hTBSALI5LDQgwQWmqgVEDKQcsUBoF4ItFGEBXA+QzQpmDGjAwAAA8DQ4Lni6gdAAAAABJRU5ErkJggg==') no-repeat;}
  .sun-editor-editable .__se__p-bordered, .sun-editor .__se__p-bordered {
    border-top: solid 1px #b1b1b1;
    border-bottom: solid 1px #b1b1b1;
    padding: 4px 0;
  }
  .sun-editor-editable .__se__p-spaced, .sun-editor .__se__p-spaced {
    letter-spacing: 1px;
  }
  .sun-editor-editable .__se__p-neon, .sun-editor .__se__p-neon {
    font-weight: 200;
    font-style: italic;
    background: #000;
    color: #fff;
    padding: 6px 4px;
    border: 2px solid #fff;
    border-radius: 6px;
    text-transform: uppercase;
    animation: neonFlicker 1.5s infinite alternate;     
  }
  @keyframes neonFlicker {
    0%, 19%, 21%, 23%, 25%, 54%, 56%, 100% {
        text-shadow:
          -0.2rem -0.2rem 1rem #fff,
          0.2rem 0.2rem 1rem #fff,
          0 0 2px #f40,
          0 0 4px #f40,
          0 0 6px #f40,
          0 0 8px #f40,
          0 0 10px #f40;
        box-shadow:
          0 0 .5px #fff,
          inset 0 0 .5px #fff,
          0 0 2px #08f,
          inset 0 0 2px #08f,
          0 0 4px #08f,
          inset 0 0 4px #08f;      
    }
    20%, 24%, 55% {      
        text-shadow: none;
        box-shadow: none;
    }    
  }
  .sun-editor-editable .__se__t-shadow, .sun-editor .__se__t-shadow {
    text-shadow:
        -0.2rem -0.2rem 1rem #fff,
        0.2rem 0.2rem 1rem #fff,
        0 0 0.2rem #999,
        0 0 0.4rem #888,
        0 0 0.6rem #777,
        0 0 0.8rem #666,
        0 0 1rem #555;
  }
  .sun-editor-editable .__se__t-code, .sun-editor .__se__t-code {
    font-family: monospace;
    color: #666;
    background-color: rgba(27,31,35,.05);
    border-radius: 6px;
    padding: 0.2em 0.4em;
  }
</style>
<script>
  import suneditor from 'suneditor';
  import plugins from 'suneditor/src/plugins';
  import StyleSet from '@stackpress/ink/dist/style/StyleSet';
  import setDisplay from '../utilities/style/display';
  //extract props
  const { 
    value = '', height = 200,
    //flags
    history,   font,       size,       format, 
    paragraph, blockquote, style,      color, 
    highlight, text,       remove,     indent, 
    align,     rule,       list,       lineheight, 
    table,     link,       image,      video, 
    audio,     fullscreen, showblocks, 
    code,      print,      save,       dir,
    //handlers
    change, update, 
    //for textarea
    ...attributes 
  } = this.props;
  //override default styles
  const styles = new StyleSet();
  const css = this.styles();
  this.styles = () => css + styles.toString();
  //determine display
  setDisplay(this.props, styles, 'block');
  //set handlers
  const handlers = {
    init: () => {
      const textarea = this.shadowRoot.querySelector('.sun-editor-editable');
      if (!textarea) return;
      const buttonList: string[][] = [];
      if (history) buttonList.push(['undo', 'redo']);
      const group2: string[] = [];
      if (font) group2.push('font');
      if (size) group2.push('fontSize');
      if (format) group2.push('formatBlock');
      if (group2.length) buttonList.push(group2);
      const group3: string[] = [];
      if (paragraph) group3.push('paragraphStyle');
      if (blockquote) group3.push('blockquote');
      if (group3.length) buttonList.push(group3);
      if (style) buttonList.push(['bold', 'underline', 'italic', 'strike', 'subscript', 'superscript']);
      const group5: string[] = [];
      if (color) group5.push('fontColor');
      if (highlight) group5.push('hiliteColor');
      if (text) group5.push('textStyle');
      if (group5.length) buttonList.push(group5);
      if (remove) buttonList.push(['removeFormat']);
      buttonList.push('/');
      if (indent) buttonList.push(['outdent', 'indent']);
      const group8: string[] = [];
      if (align) group8.push('align');
      if (rule) group8.push('horizontalRule');
      if (list) group8.push('list');
      if (lineheight) group8.push('lineHeight');
      if (group8.length) buttonList.push(group8);
      const group9: string[] = [];
      if (table) group9.push('table');
      if (link) group9.push('link');
      if (image) group9.push('image');
      if (video) group9.push('video');
      if (audio) group9.push('audio');
      if (group9.length) buttonList.push(group9);
      const group10: string[] = [];
      if (fullscreen) group10.push('fullScreen');
      if (showblocks) group10.push('showBlocks');
      if (code) group10.push('codeView');
      if (group10.length) buttonList.push(group10);
      if (print) buttonList.push(['preview', 'print']);
      if (save) buttonList.push(['save', 'template']);
      if (dir) buttonList.push(['dir', 'dir_ltr', 'dir_rtl']);

      const editor = suneditor.create(textarea, {
        height: Number(height) || undefined,
        plugins: plugins,
        buttonList: buttonList.length > 1 ? buttonList: [],
        value: value
      });
      editor.onChange = handlers.change;
    },
    change: (contents, core) => {
      update && update(contents);
      const textarea = this.querySelector('textarea');
      if (!textarea) return;
      textarea.value = contents;
      textarea.setAttribute('value', contents);
      const event = new Event('change', { bubbles: true, composed: true });
      Object.defineProperty(event, 'target', { writable: false, value: textarea });
      change && change(event);
    },
  };
</script>
<template type="light">
  <textarea {...attributes} {value}>{value}</textarea>
</template>
<template type="shadow">
  <div class="sun-editor-editable" mount={handlers.init}></div>
</template>