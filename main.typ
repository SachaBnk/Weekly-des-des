#import "player_infos.typ" : player_infos
#import "src/characters_index.typ" : characters_index
#import "@preview/one-liner:0.3.0": fit-to-width, shrink-to-width

#set page(flipped: true, margin:0em)
#set page(background: image("assets/bg_color.png", height: 100%), fill:black)

// #let nb_rows = 2
// #let nb_cols = 5
#let font_color = white
#let logo = image("assets/logo_blanc.png")
#let color_opacity = 50%



#let cell_list = ()
#for (attendee) in player_infos{

  let cell_content = ()

  // saut de ligne au début
  cell_content.push[]

  // nom du joueur
  cell_content.push(align(center)[
      #block(
        width:70%,
        text(font: "Impact", font_color, 2em)[#shrink-to-width(attendee.name)]
      )
  ])


  // personnages
  for (i) in range(attendee.characters.len()){
    let icon = ""
    if attendee.characters.at(i) in characters_index{
      icon = image("assets/character_icons/"+attendee.characters.at(i)+".png", height:100%)
    }
    else{
      icon = image("assets/character_icons/placeholder.png", height:100%)
    }
    cell_content.push(align(center)[#table(rows:1, columns: 2, stroke: none,
      image("assets/dice/d"+str(i+1)+".png", height: 100%),
      icon
    )])
  }

  // si il manque des personnages on rajoute les lignes manquantes
  for (i) in range(6-attendee.characters.len()){
    cell_content.push[]
  }

  // logo a la fin 
  cell_content.push[#align(center)[#block(
    inset: 8pt,
    logo
  )]]



  cell_list.push(table(
    stroke:none, 
    inset:0pt, 
    rows:(1fr), 
    columns: (1fr),
    ..cell_content))

}
// #text(10em, str(cell_list.len()))
#for (i) in range(calc.rem-euclid(10 - calc.rem-euclid(cell_list.len(), 10), 10)){
  cell_list.push(block(fill: white, width:100%, height:100%))



}


#grid(
  rows: (50%,50%),
  columns: (20%, 20%, 20%, 20%, 20%),
  stroke: 0.5pt,
  ..cell_list
  )

