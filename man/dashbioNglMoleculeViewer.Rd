% Auto-generated: do not edit by hand
\name{dashbioNglMoleculeViewer}

\alias{dashbioNglMoleculeViewer}

\title{NglMoleculeViewer component}

\description{
The NglMoleculeViewer is used to render schematic diagrams of biomolecules in ribbon-structure representations. Read more about the component here: https://github.com/IvoLeist/dash_ngl Read more about the used WebGL protein viewer here: https://github.com/arose/ngl
}

\usage{
dashbioNglMoleculeViewer(id=NULL, data=NULL, downloadImage=NULL, height=NULL,
imageParameters=NULL, loading_state=NULL, molStyles=NULL,
pdbString=NULL, stageParameters=NULL, width=NULL)
}

\arguments{
\item{id}{Character. The ID of this component, used to identify dash components in callbacks.
The ID needs to be unique across all of the components in an app.}

\item{data}{List of lists containing elements 'filename', 'ext', 'selectedvalue', 'chain', 'aarange', 'color', 'chosen', 'config', 'uploaded', 'resetview'.
those elements have the following types:
  - filename (character; required)
  - ext (character; optional)
  - selectedvalue (character; required)
  - chain (character; required)
  - aarange (character; required)
  - color (character; required)
  - chosen (optional): . chosen has the following type: lists containing elements 'residues', 'atoms'.
those elements have the following types:
  - residues (character; required)
  - atoms (character; required)
  - config (optional): . config has the following type: lists containing elements 'input', 'type'.
those elements have the following types:
  - input (character; required)
  - type (character; required)
  - uploaded (logical; required)
  - resetview (logical; required)s. The data (in JSON format) that will be used to display the molecule
filename: name of the used pdb/cif file
ext: file extensions (pdb or cif)
selectedValue: pdbString
chain: ALL if the whole molecule shoud be displayed, e.g. A for showing only chain A
aaRange: ALL if the whole molecule should be displayed, e.g. 1:50 for showing only 50 atoms
color: chain color
chosen.atoms: string of the chosen Atoms, e.g. 50,100,150
              --> chosen eatoms changed to colored 'ball'
chosen.residues: string of the chosen residues, e.g. 50,100,150
                 --> C alpha of chosen residue changed to colored 'ball'
config.input: content of the pdb file
config.type: format of config.input
uploaded: bool if file from local storage (false) or uploaded by user (true)
resetView: bool if the selection did not change but the view should be resettet (true)}

\item{downloadImage}{Logical. flag if download image was selected}

\item{height}{Character | numeric. The height (in px or as a number) of the container
in which the molecules will be displayed.}

\item{imageParameters}{Lists containing elements 'antialias', 'transparent', 'trim', 'defaultfilename'.
those elements have the following types:
  - antialias (logical; optional)
  - transparent (logical; optional)
  - trim (logical; optional)
  - defaultfilename (character; optional). Parameters (in JSON format) for exporting the image}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}

\item{molStyles}{Lists containing elements 'representations', 'chosenatomscolor', 'chosenatomsradius', 'molspacingxaxis', 'sidebyside'.
those elements have the following types:
  - representations (list of characters; optional)
  - chosenatomscolor (character; required)
  - chosenatomsradius (numeric; required)
  - molspacingxaxis (numeric; required)
  - sidebyside (logical; required). The data (in JSON format) that will be used to style the displayed molecule
representations: one or multiple selected molecule representation
 - Possible molecule styles:
   'backbone,'ball+stick','cartoon', 'hyperball','licorice','line',
   'ribbon',''rope','spacefill','surface','trace','tube'
 - Possible additional representations:
   'axes','axes+box','helixorient','unitcell'
chosenAtomsColor: color of the 'ball+stick' representation of the chosen atoms
chosenAtomsRadius: radius of the 'ball+stick' representation of the chosen atoms
molSpacingXaxis: distance on the xAxis between each molecule}

\item{pdbString}{Character. Variable which defines how many molecules should be shown and/or which chain
The following format needs to be used:
pdbID1.chain:start-end@atom1,atom2_pdbID2.chain:start-end
. indicates that only one chain should be shown
: indicates that a specific amino acids range should be shown (e.g. 1-50)
@ indicates that chosen atoms should be highlighted (e.g. @50,100,150)
 _ indicates that more than one protein should be shown}

\item{stageParameters}{Lists containing elements 'quality', 'backgroundcolor', 'cameratype'.
those elements have the following types:
  - quality (character; optional)
  - backgroundcolor (character; optional)
  - cameratype (character; optional). Parameters (in JSON format) for the stage object of ngl.
Currently implemented are render quality, background color and camera type
quality: auto, low, medium, high (default: auto)
backgroundColor: white / black (default: white)
cameraType: perspective / orthographic (default: perspective)}

\item{width}{Character | numeric. The width (in px or as a number) of the container
in which the molecules will be displayed.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

