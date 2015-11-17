# generated with VANTED V2.6.0 at Mon Nov 16 15:20:18 AEDT 2015
graph [
  sbgn [
    groups "1, 2"
    role "PROCESSDESCRIPTION"
  ]
  directed 1
  node [
    id 1
    zlevel -1

    graphics [
      x 335.0
      y 160.0
      w 108.0
      h 60.0
      fill "#FFFFFF"
      outline "#000000"
      frameThickness 2.0
      gradient -0.3333333333333333
      opacity 1.0
      rounding 15.0
      type "rectangle"
    ]
    label "<html>monomer<sub>i</sub>"
    labelgraphics [
      alignment "center"
      anchor "c"
      color "#000000"
      fontName "Arial"
      fontSize 14
      fontStyle "plain"
      type "text"
    ]
    sbgn [
      role "MACROMOLECULE"
    ]
  ]
  node [
    id 2
    zlevel -1

    graphics [
      x 465.0
      y 160.0
      w 24.0
      h 24.0
      fill "#000000"
      outline "#000000"
      frameThickness 2.0
      gradient 0.0
      opacity 1.0
      rounding 0.0
      type "oval"
    ]
    sbgn [
      role "ASSOCIATION"
    ]
  ]
  node [
    id 3
    zlevel -1

    graphics [
      x 615.0
      y 160.0
      w 108.0
      h 60.0
      fill "#FFFFFF"
      outline "#000000"
      frameThickness 2.0
      gradient 0.0
      offX 10
      offY 10
      opacity 1.0
      rounding 15.0
      type "de.ipk_gatersleben.ag_nw.graffiti.plugins.shapes.MultiRectangleShape"
    ]
    label "<html>k-mer<sub>i</sub>"
    labelgraphics [
      alignment "center"
      anchor "c"
      color "#000000"
      fontName "Arial"
      fontSize 14
      fontStyle "plain"
      type "text"
    ]
    labelgraphics1 [
      alignment "center"
      anchor "btl"
      color "#000000"
      fontName "Arial"
      fontSize 10
      fontStyle "plain,box"
      position [
        localAlign 0.0
        relHor 0.0
        relVert 0.0
      ]
      text "N:k"
      type "text"
    ]
    sbgn [
      role "MULTIMERMACROMOLECULE"
    ]
  ]
  node [
    id 4
    zlevel -1

    graphics [
      x 465.0
      y 640.0
      w 24.0
      h 24.0
      fill "#000000"
      outline "#000000"
      frameThickness 2.0
      gradient 0.0
      opacity 1.0
      rounding 0.0
      type "oval"
    ]
    sbgn [
      role "ASSOCIATION"
    ]
  ]
  node [
    id 5
    zlevel -1

    graphics [
      x 335.0
      y 570.0
      w 108.0
      h 60.0
      fill "#FFFFFF"
      outline "#000000"
      frameThickness 2.0
      gradient -0.3333333333333333
      opacity 1.0
      rounding 15.0
      type "rectangle"
    ]
    label "<html>monomer<sub>i</sub>"
    labelgraphics [
      alignment "center"
      anchor "c"
      color "#000000"
      fontName "Arial"
      fontSize 14
      fontStyle "plain"
      type "text"
    ]
    sbgn [
      role "MACROMOLECULE"
    ]
  ]
  node [
    id 6
    zlevel -1

    graphics [
      x 615.0
      y 640.0
      w 150.0
      h 100.0
      fill "#FFFFFF"
      outline "#000000"
      frameThickness 2.0
      gradient 0.0
      opacity 1.0
      rounding 0.0
      type "complex"
    ]
    label "<html>complex<sub>k</sub>"
    labelgraphics [
      alignment "center"
      anchor "c"
      color "#000000"
      fontName "Arial"
      fontSize 14
      fontStyle "plain"
      type "text"
    ]
    sbgn [
      role "COMPLEX"
    ]
  ]
  node [
    id 7
    zlevel -1

    graphics [
      x 335.0
      y 710.0
      w 108.0
      h 60.0
      fill "#FFFFFF"
      outline "#000000"
      frameThickness 2.0
      gradient 0.0
      opacity 1.0
      rounding 15.0
      type "de.ipk_gatersleben.ag_nw.graffiti.plugins.shapes.NucleicAcidFeatureShape"
    ]
    label "<html>RNA<sub>j</sub>"
    labelgraphics [
      alignment "center"
      anchor "c"
      color "#000000"
      fontName "Arial"
      fontSize 14
      fontStyle "plain"
      type "text"
    ]
    sbgn [
      role "NUCLEICACIDFEATURE"
    ]
  ]
  node [
    id 8
    zlevel -1

    graphics [
      x 335.0
      y 470.0
      w 400.0
      h 40.0
      fill "#FFFFFF"
      outline "#000000"
      frameThickness 2.0
      gradient 0.0
      opacity 1.0
      rounding 10.0
      type "paper"
    ]
    label "Many monomers ARE involved in this reaction."
    labelgraphics [
      alignment "center"
      anchor "c"
      color "#000000"
      fontName "Arial"
      fontSize 14
      fontStyle "plain"
      type "text"
    ]
    sbgn [
      role "ANNOTATION"
    ]
  ]
  node [
    id 9
    zlevel -1

    graphics [
      x 405.0
      y 660.0
      w 710.0
      h 1220.0
      fill "#FFFFFF"
      outline "#000000"
      frameThickness 8.0
      gradient 0.0
      opacity 1.0
      rounding 60.0
      type "rectangle"
    ]
    label "Cytosol"
    labelgraphics [
      alignment "center"
      anchor "t"
      color "#000000"
      fontName "Arial"
      fontSize 14
      fontStyle "plain"
      type "text"
    ]
    sbgn [
      role "COMPARTMENT"
    ]
  ]
  node [
    id 10
    zlevel -1

    graphics [
      x 335.0
      y 810.0
      w 400.0
      h 40.0
      fill "#FFFFFF"
      outline "#000000"
      frameThickness 2.0
      gradient 0.0
      opacity 1.0
      rounding 10.0
      type "paper"
    ]
    label "One or more RNA ARE involved in this reaction."
    labelgraphics [
      alignment "center"
      anchor "c"
      color "#000000"
      fontName "Arial"
      fontSize 14
      fontStyle "plain"
      type "text"
    ]
    sbgn [
      role "ANNOTATION"
    ]
  ]
  node [
    id 11
    zlevel -1

    graphics [
      x 465.0
      y 1060.0
      w 24.0
      h 24.0
      fill "#000000"
      outline "#000000"
      frameThickness 2.0
      gradient 0.0
      opacity 1.0
      rounding 0.0
      type "oval"
    ]
    sbgn [
      role "ASSOCIATION"
    ]
  ]
  node [
    id 12
    zlevel -1

    graphics [
      x 335.0
      y 990.0
      w 108.0
      h 60.0
      fill "#FFFFFF"
      outline "#000000"
      frameThickness 2.0
      gradient -0.33333333333333326
      opacity 1.0
      rounding 15.0
      type "rectangle"
    ]
    label "<html>monomer<sub>i</sub>"
    labelgraphics [
      alignment "center"
      anchor "c"
      color "#000000"
      fontName "Arial"
      fontSize 14
      fontStyle "plain"
      type "text"
    ]
    sbgn [
      role "MACROMOLECULE"
    ]
  ]
  node [
    id 13
    zlevel -1

    graphics [
      x 335.0
      y 1130.0
      w 108.0
      h 60.0
      fill "#FFFFFF"
      outline "#000000"
      frameThickness 2.0
      gradient 0.0
      offX 10
      offY 10
      opacity 1.0
      rounding 15.0
      type "de.ipk_gatersleben.ag_nw.graffiti.plugins.shapes.MultiRectangleShape"
    ]
    label "<html>k-mer<sub>j</sub>"
    labelgraphics [
      alignment "center"
      anchor "c"
      color "#000000"
      fontName "Arial"
      fontSize 14
      fontStyle "plain"
      type "text"
    ]
    labelgraphics1 [
      alignment "center"
      anchor "btl"
      color "#000000"
      fontName "Arial"
      fontSize 10
      fontStyle "box"
      position [
        localAlign 0.0
        relHor 0.0
        relVert 0.0
      ]
      text "N:l"
      type "text"
    ]
    sbgn [
      role "MULTIMERMACROMOLECULE"
    ]
  ]
  node [
    id 14
    zlevel -1

    graphics [
      x 335.0
      y 890.0
      w 400.0
      h 40.0
      fill "#FFFFFF"
      outline "#000000"
      frameThickness 2.0
      gradient 0.0
      opacity 1.0
      rounding 10.0
      type "paper"
    ]
    label "One or many monomers CAN be involved in this reaction."
    labelgraphics [
      alignment "center"
      anchor "c"
      color "#000000"
      fontName "Arial"
      fontSize 14
      fontStyle "plain"
      type "text"
    ]
    sbgn [
      role "ANNOTATION"
    ]
  ]
  node [
    id 15
    zlevel -1

    graphics [
      x 335.0
      y 1230.0
      w 400.0
      h 40.0
      fill "#FFFFFF"
      outline "#000000"
      frameThickness 2.0
      gradient 0.0
      opacity 1.0
      rounding 10.0
      type "paper"
    ]
    label "One or many k-mers CAN be involved in this reaction."
    labelgraphics [
      alignment "center"
      anchor "c"
      color "#000000"
      fontName "Arial"
      fontSize 14
      fontStyle "plain"
      type "text"
    ]
    sbgn [
      role "ANNOTATION"
    ]
  ]
  node [
    id 16
    zlevel -1

    graphics [
      x 625.0
      y 1060.0
      w 150.0
      h 100.0
      fill "#FFFFFF"
      outline "#000000"
      frameThickness 2.0
      gradient 0.0
      opacity 1.0
      rounding 0.0
      type "complex"
    ]
    label "<html>complex<sub>m</sub>"
    labelgraphics [
      alignment "center"
      anchor "c"
      color "#000000"
      fontName "Arial"
      fontSize 14
      fontStyle "plain"
      type "text"
    ]
    sbgn [
      role "COMPLEX"
    ]
  ]
  node [
    id 17
    zlevel -1

    graphics [
      x 465.0
      y 360.0
      w 24.0
      h 24.0
      fill "#000000"
      outline "#000000"
      frameThickness 2.0
      gradient 0.0
      opacity 1.0
      rounding 0.0
      type "oval"
    ]
    sbgn [
      role "ASSOCIATION"
    ]
  ]
  node [
    id 18
    zlevel -1

    graphics [
      x 335.0
      y 360.0
      w 108.0
      h 60.0
      fill "#FFFFFF"
      outline "#000000"
      frameThickness 2.0
      gradient -0.3333333333333333
      opacity 1.0
      rounding 15.0
      type "rectangle"
    ]
    label "<html>monomer<sub>i</sub>"
    labelgraphics [
      alignment "center"
      anchor "c"
      color "#000000"
      fontName "Arial"
      fontSize 14
      fontStyle "plain"
      type "text"
    ]
    sbgn [
      role "MACROMOLECULE"
    ]
  ]
  node [
    id 19
    zlevel -1

    graphics [
      x 615.0
      y 360.0
      w 150.0
      h 100.0
      fill "#FFFFFF"
      outline "#000000"
      frameThickness 2.0
      gradient 0.0
      offX 10
      offY 10
      opacity 1.0
      rounding 0.0
      type "complex"
    ]
    label "<html>complex<sub>j</sub>"
    labelgraphics [
      alignment "center"
      anchor "c"
      color "#000000"
      fontName "Arial"
      fontSize 14
      fontStyle "plain"
      type "text"
    ]
    sbgn [
      role "COMPLEX"
    ]
  ]
  node [
    id 20
    zlevel -1

    graphics [
      x 335.0
      y 260.0
      w 400.0
      h 40.0
      fill "#FFFFFF"
      outline "#000000"
      frameThickness 2.0
      gradient 0.0
      opacity 1.0
      rounding 10.0
      type "paper"
    ]
    label "Two or more monomers ARE involved in this reaction."
    labelgraphics [
      alignment "center"
      anchor "c"
      color "#000000"
      fontName "Arial"
      fontSize 14
      fontStyle "plain"
      type "text"
    ]
    sbgn [
      role "ANNOTATION"
    ]
  ]
  edge [
    id 1
    source 2
    target 3
    SBGN [
      BendOut "489.0;160.0"
    ]
    graphics [
      fill "#000000"
      outline "#000000"
      Line [
        point [ x 0.0 y 0.0 ]
        point [ x 489.0 y 160.0 ]
        point [ x 0.0 y 0.0 ]
      ]
      arrow "last"
      frameThickness 1.5
      gradient 0.0
      opacity 1.0
      rounding 5.0
      type "org.graffiti.plugins.views.defaults.PolyLineEdgeShape"
      thickness 15.0
    ]
    sbgn [
      role "PRODUCTION"
    ]
  ]
  edge [
    id 2
    source 1
    target 2
    SBGN [
      BendIn "441.0;160.0"
    ]
    graphics [
      fill "#000000"
      outline "#000000"
      Line [
        point [ x 0.0 y 0.0 ]
        point [ x 441.0 y 160.0 ]
        point [ x 0.0 y 0.0 ]
      ]
      arrow "none"
      frameThickness 1.5
      gradient 0.0
      opacity 1.0
      rounding 5.0
      type "org.graffiti.plugins.views.defaults.PolyLineEdgeShape"
      thickness 15.0
    ]
    label ""
    labelgraphics [
      alignment "center"
      anchor "c"
      color "#000000"
      fontName "Arial"
      fontSize 12
      fontStyle "plain"
      position [
        absHor 0.0
        absVert 0.0
        alignSegment 0
        relAlign 0.5
      ]
      type "text"
    ]
    sbgn [
      role "CONSUMPTION"
    ]
    srcLabel [
      alignment "center"
      anchor "c"
      color "#000000"
      fontName "Arial"
      fontSize 12
      fontStyle "box"
      position [
        absHor 0.0
        absVert -8.0
        alignSegment 0
        relAlign 0.333
      ]
      text "k"
      type "text"
    ]
  ]
  edge [
    id 3
    source 4
    target 6
    SBGN [
      BendOut "489.0;640.0"
    ]
    graphics [
      fill "#000000"
      outline "#000000"
      Line [
        point [ x 0.0 y 0.0 ]
        point [ x 489.0 y 640.0 ]
        point [ x 0.0 y 0.0 ]
      ]
      arrow "last"
      frameThickness 1.5
      gradient 0.0
      opacity 1.0
      rounding 5.0
      type "org.graffiti.plugins.views.defaults.PolyLineEdgeShape"
      thickness 15.0
    ]
    sbgn [
      role "PRODUCTION"
    ]
  ]
  edge [
    id 4
    source 5
    target 4
    SBGN [
      BendIn "441.0;640.0"
    ]
    graphics [
      fill "#000000"
      outline "#000000"
      Line [
        point [ x 0.0 y 0.0 ]
        point [ x 441.0 y 640.0 ]
        point [ x 0.0 y 0.0 ]
      ]
      arrow "none"
      frameThickness 1.5
      gradient 0.0
      opacity 1.0
      rounding 5.0
      type "org.graffiti.plugins.views.defaults.PolyLineEdgeShape"
      thickness 15.0
    ]
    sbgn [
      role "CONSUMPTION"
    ]
  ]
  edge [
    id 5
    source 7
    target 4
    SBGN [
      BendIn "441.0;640.0"
    ]
    graphics [
      fill "#000000"
      outline "#000000"
      Line [
        point [ x 0.0 y 0.0 ]
        point [ x 441.0 y 640.0 ]
        point [ x 0.0 y 0.0 ]
      ]
      arrow "none"
      frameThickness 1.5
      gradient 0.0
      opacity 1.0
      rounding 5.0
      type "org.graffiti.plugins.views.defaults.PolyLineEdgeShape"
      thickness 15.0
    ]
    sbgn [
      role "CONSUMPTION"
    ]
  ]
  edge [
    id 6
    source 8
    target 5
    graphics [
      fill "#000000"
      outline "#000000"
      arrow "none"
      frameThickness 1.5
      gradient 0.0
      linemode "5.0 5.0 0.0"
      opacity 1.0
      rounding 5.0
      thickness 15.0
    ]
    sbgn [
      role "ANNOTATIONARC"
    ]
  ]
  edge [
    id 7
    source 10
    target 7
    graphics [
      fill "#000000"
      outline "#000000"
      arrow "none"
      frameThickness 1.5
      gradient 0.0
      linemode "5.0 5.0 0.0"
      opacity 1.0
      rounding 5.0
      thickness 15.0
    ]
    sbgn [
      role "ANNOTATIONARC"
    ]
  ]
  edge [
    id 8
    source 11
    target 16
    SBGN [
      BendOut "489.0;1060.0"
    ]
    graphics [
      fill "#000000"
      outline "#000000"
      Line [
        point [ x 0.0 y 0.0 ]
        point [ x 489.0 y 1060.0 ]
        point [ x 0.0 y 0.0 ]
      ]
      arrow "last"
      frameThickness 1.5
      gradient 0.0
      opacity 1.0
      rounding 5.0
      type "org.graffiti.plugins.views.defaults.PolyLineEdgeShape"
      thickness 15.0
    ]
    sbgn [
      role "PRODUCTION"
    ]
  ]
  edge [
    id 9
    source 12
    target 11
    SBGN [
      BendIn "441.0;1060.0"
    ]
    graphics [
      fill "#000000"
      outline "#000000"
      Line [
        point [ x 0.0 y 0.0 ]
        point [ x 441.0 y 1060.0 ]
        point [ x 0.0 y 0.0 ]
      ]
      arrow "none"
      frameThickness 1.5
      gradient 0.0
      opacity 1.0
      rounding 5.0
      type "org.graffiti.plugins.views.defaults.PolyLineEdgeShape"
      thickness 15.0
    ]
    sbgn [
      role "CONSUMPTION"
    ]
    srcLabel [
      alignment "center"
      anchor "c"
      color "#000000"
      fontName "Arial"
      fontSize 12
      fontStyle "box"
      position [
        absHor 0.0
        absVert -8.0
        alignSegment 0
        relAlign 0.333
      ]
      text "k"
      type "text"
    ]
  ]
  edge [
    id 10
    source 13
    target 11
    SBGN [
      BendIn "441.0;1060.0"
    ]
    graphics [
      fill "#000000"
      outline "#000000"
      Line [
        point [ x 0.0 y 0.0 ]
        point [ x 441.0 y 1060.0 ]
        point [ x 0.0 y 0.0 ]
      ]
      arrow "none"
      frameThickness 1.5
      gradient 0.0
      opacity 1.0
      rounding 5.0
      type "org.graffiti.plugins.views.defaults.PolyLineEdgeShape"
      thickness 15.0
    ]
    sbgn [
      role "CONSUMPTION"
    ]
  ]
  edge [
    id 11
    source 14
    target 12
    graphics [
      fill "#000000"
      outline "#000000"
      arrow "none"
      frameThickness 1.5
      gradient 0.0
      linemode "5.0 5.0 0.0"
      opacity 1.0
      rounding 5.0
      thickness 15.0
    ]
    sbgn [
      role "ANNOTATIONARC"
    ]
  ]
  edge [
    id 12
    source 15
    target 13
    graphics [
      fill "#000000"
      outline "#000000"
      arrow "none"
      frameThickness 1.5
      gradient 0.0
      linemode "5.0 5.0 0.0"
      opacity 1.0
      rounding 5.0
      thickness 15.0
    ]
    sbgn [
      role "ANNOTATIONARC"
    ]
  ]
  edge [
    id 13
    source 17
    target 19
    SBGN [
      BendOut "489.0;360.0"
    ]
    graphics [
      fill "#000000"
      outline "#000000"
      Line [
        point [ x 0.0 y 0.0 ]
        point [ x 489.0 y 360.0 ]
        point [ x 0.0 y 0.0 ]
      ]
      arrow "last"
      frameThickness 1.5
      gradient 0.0
      opacity 1.0
      rounding 5.0
      type "org.graffiti.plugins.views.defaults.PolyLineEdgeShape"
      thickness 15.0
    ]
    sbgn [
      role "PRODUCTION"
    ]
  ]
  edge [
    id 14
    source 18
    target 17
    SBGN [
      BendIn "441.0;360.0"
    ]
    graphics [
      fill "#000000"
      outline "#000000"
      Line [
        point [ x 0.0 y 0.0 ]
        point [ x 441.0 y 360.0 ]
        point [ x 0.0 y 0.0 ]
      ]
      arrow "none"
      frameThickness 1.5
      gradient 0.0
      opacity 1.0
      rounding 5.0
      type "org.graffiti.plugins.views.defaults.PolyLineEdgeShape"
      thickness 15.0
    ]
    label ""
    labelgraphics [
      alignment "center"
      anchor "c"
      color "#000000"
      fontName "Arial"
      fontSize 12
      fontStyle "plain"
      type "text"
    ]
    sbgn [
      role "CONSUMPTION"
    ]
    srcLabel [
      alignment "center"
      anchor "c"
      color "#000000"
      fontName "Arial"
      fontSize 12
      fontStyle "box"
      position [
        absHor 0.0
        absVert -8.0
        alignSegment 0
        relAlign 0.333
      ]
      text "k"
      type "text"
    ]
  ]
  edge [
    id 15
    source 20
    target 18
    graphics [
      fill "#000000"
      outline "#000000"
      arrow "none"
      frameThickness 1.5
      gradient 0.0
      linemode "5.0 5.0 0.0"
      opacity 1.0
      rounding 5.0
      thickness 15.0
    ]
    sbgn [
      role "ANNOTATIONARC"
    ]
  ]
]
