# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class Speck(Component):
    """A Speck component.
The Speck component is a WebGL-based 3D molecule renderer.
Read more about the component here:
https://github.com/wwwtyro/speck

Keyword arguments:

- id (string; optional):
    The ID used to identify this component in Dash callbacks.

- data (list of dicts; optional):
    The xyz file data; a list of atoms such that each atom has a
    dictionary defining the x, y, and z coordinates along with the
    atom's symbol.

    `data` is a list of dicts with keys:

    - symbol (string; optional)

    - x (number; optional)

    - y (number; optional)

    - z (number; optional)

- loading_state (dict; optional):
    Object that holds the loading state object coming from
    dash-renderer.

    `loading_state` is a dict with keys:

    - component_name (string; optional):
        Holds the name of the component that is loading.

    - is_loading (boolean; optional):
        Determines if the component is loading or not.

    - prop_name (string; optional):
        Holds which property is loading.

- presetView (a value equal to: 'default', 'stickball', 'toon', 'licorice'; optional):
    One of several pre-loaded views: default, stick-ball, toon, and
    licorice.

- scrollZoom (boolean; optional):
    The option of whether or not to allow scrolling to control the
    zoom.

- showLegend (boolean; default False):
    The option of whether to show color legend.

- style (dict; default {    height: '600px',    width: '600px',    position: 'relative',}):
    Generic style overrides on the plot div.

- view (dict; default speckView.new()):
    An object that determines and controls various parameters related
    to how the molecule is displayed.

    `view` is a dict with keys:

    - ao (number; optional)

    - aoRes (number; optional)

    - aspect (number; optional)

    - atomScale (number; optional)

    - atomShade (number; optional)

    - bondScale (number; optional)

    - bondShade (number; optional)

    - bondThreshold (number; optional)

    - bonds (boolean; optional)

    - brightness (number; optional)

    - dofPosition (number; optional)

    - dofStrength (number; optional)

    - fxaa (number; optional)

    - outline (number; optional)

    - relativeAtomScale (number; optional)

    - resolution (number; optional)

    - rotation (dict; optional)

        `rotation` is a dict with keys:


    - spf (number; optional)

    - translation (dict; optional)

        `translation` is a dict with keys:

        - x (number; optional)

        - y (number; optional)

    - zoom (number; optional)"""
    _children_props = []
    _base_nodes = ['children']
    _namespace = 'dash_bio'
    _type = 'Speck'
    @_explicitize_args
    def __init__(self, id=Component.UNDEFINED, data=Component.UNDEFINED, scrollZoom=Component.UNDEFINED, view=Component.UNDEFINED, presetView=Component.UNDEFINED, style=Component.UNDEFINED, loading_state=Component.UNDEFINED, showLegend=Component.UNDEFINED, **kwargs):
        self._prop_names = ['id', 'data', 'loading_state', 'presetView', 'scrollZoom', 'showLegend', 'style', 'view']
        self._valid_wildcard_attributes =            []
        self.available_properties = ['id', 'data', 'loading_state', 'presetView', 'scrollZoom', 'showLegend', 'style', 'view']
        self.available_wildcard_properties =            []
        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs and excess named props
        args = {k: _locals[k] for k in _explicit_args}

        super(Speck, self).__init__(**args)
