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


  
  // personnages
  
  if (attendee.characters.len() <= 2) {
  // 2 personnages

  cell_content.push[#align(center)[#block(
    inset: 20pt,
    logo
    )]]

  for (i) in range(attendee.characters.len()){
      let icon = ""
      if attendee.characters.at(i) in characters_index{
        icon = image("assets/character_icons/"+attendee.characters.at(i)+".png", height:100%)
      }
      else{
        icon = image("assets/character_icons/placeholder.png", height:100%)
      }
      cell_content.push(align(horizon+center)[#table(rows:1, columns: 2, stroke: none, inset: 10pt,
        image("assets/coinflip/"+str(calc.min(i+1, 6))+".png", height: 160%),
        icon
      )])
    }

    // si il manque des personnages on rajoute les lignes manquantes
    for (i) in range(2-attendee.characters.len()){
      cell_content.push[]
    } 
  



  } else {if (attendee.characters.len() <= 4){
  // 4 personnages
  
  cell_content.push[#align(center)[#block(
    inset: 11pt,
    logo
    )]]

  for (i) in range(attendee.characters.len()){
      let icon = ""
      if attendee.characters.at(i) in characters_index{
        icon = image("assets/character_icons/"+attendee.characters.at(i)+".png", height:100%)
      }
      else{
        icon = image("assets/character_icons/placeholder.png", height:100%)
      }
      cell_content.push(align(horizon+center)[#table(rows:1, columns: 2, stroke: none, inset: 4pt,
        image("assets/d4/"+str(calc.min(i+1, 6))+".png", height: 160%),
        icon
      )])
    }

    // si il manque des personnages on rajoute les lignes manquantes
    for (i) in range(4-attendee.characters.len()){
      cell_content.push[]
    } 
  


  } else {if (attendee.characters.len() <= 6){
    // 6 personnages

    cell_content.push[#align(horizon+center)[#block(
    inset: 8pt,
    logo
    )]]


    for (i) in range(attendee.characters.len()){
      let icon = ""
      if attendee.characters.at(i) in characters_index{
        icon = image("assets/character_icons/"+attendee.characters.at(i)+".png", height:100%)
      }
      else{
        icon = image("assets/character_icons/placeholder.png", height:100%)
      }
      cell_content.push(align(horizon+center)[#table(rows:1, columns: 2, stroke: none, inset: 4pt,
        image("assets/d6/"+str(calc.min(i+1, 6))+".png", height: 160%),
        icon
      )])
    }

    // si il manque des personnages on rajoute les lignes manquantes
    for (i) in range(6-attendee.characters.len()){
      cell_content.push[]
    } 
  

  } else {if (attendee.characters.len()<=8) {
    // si on veut afficher 8 personnages

    cell_content.push[#align(horizon+center)[#block(
    inset: 12pt,
    logo
    )]]

    for (i) in range(calc.div-euclid(attendee.characters.len(), 2)){
      // perso colonne droite
      let icon2 = ""
      if attendee.characters.at(2*i) in characters_index{
        icon2 = image("assets/character_icons/"+attendee.characters.at(2*i)+".png", height:90%)
      }
      else{
        icon2 = image("assets/character_icons/placeholder.png", height:90%)
      }
      // perso colonne gauche
      let icon1 = ""
      if attendee.characters.at(2*i+1) in characters_index{
        icon1 = image("assets/character_icons/"+attendee.characters.at(2*i+1)+".png", height:90%)
      }
      else{
        icon1 = image("assets/character_icons/placeholder.png", height:90%)
      }
      // on ajoute le tableau avec les icones de dé et les icones de perso
      cell_content.push(align(horizon+center)[#table(columns: 7, stroke: none, inset:3pt)[][#image("assets/d8/"+str(2*i+2)+".png", height: 90%)][
        #icon1][   ][#image("assets/d8/"+str(2*i+1)+".png", height: 90%)][#icon2]
      ])
    }

  // on rajoute le dernier perso si besoin
    if (calc.rem-euclid(attendee.characters.len(), 2)==1){
      let i = attendee.characters.len()-1
      cell_content.push(align(horizon+center)[#table(columns: 2, stroke: none, inset:3pt)[#image("assets/d8/"+str(i+1)+".png", height: 90%)][
        #if(attendee.characters.at(i) in characters_index){image("assets/character_icons/"+attendee.characters.at(i)+".png", height:90%)}else{image("assets/character_icons/placeholder.png", height:90%)}]
      ])
    }

    



  } else {if (attendee.characters.len()<=10){
    // si on veut afficher 10 personnages

    cell_content.push[#align(horizon+center)[#block(
    inset: 10pt,
    logo
    )]]

    for (i) in range(calc.div-euclid(attendee.characters.len(), 2)){
      // perso colonne droite
      let icon2 = ""
      if attendee.characters.at(2*i) in characters_index{
        icon2 = image("assets/character_icons/"+attendee.characters.at(2*i)+".png", height:100%)
      }
      else{
        icon2 = image("assets/character_icons/placeholder.png", height:100%)
      }
      // perso colonne gauche
      let icon1 = ""
      if attendee.characters.at(2*i+1) in characters_index{
        icon1 = image("assets/character_icons/"+attendee.characters.at(2*i+1)+".png", height:100%)
      }
      else{
        icon1 = image("assets/character_icons/placeholder.png", height:100%)
      }
      // on ajoute le tableau avec les icones de dé et les icones de perso
      cell_content.push(align(horizon+center)[#table(columns: 7, stroke: none, inset:3pt)[][#image("assets/d10/"+str(2*i+2)+".png", height: 120%)][
        #icon1][   ][#image("assets/d10/"+str(2*i+1)+".png", height: 120%)][#icon2]
      ])
    }


    // on rajoute le dernier perso si besoin
    if (calc.rem-euclid(attendee.characters.len(), 2)==1){
      let i = attendee.characters.len()-1
      cell_content.push(align(horizon+center)[#table(columns: 2, stroke: none, inset:3pt)[#image("assets/d10/"+str(i+1)+".png", height: 120%)][
        #if(attendee.characters.at(i) in characters_index){image("assets/character_icons/"+attendee.characters.at(i)+".png", height: 100%)}else{image("assets/character_icons/placeholder.png", height: 100%)}]
      ])
    }

    


  } else { if (attendee.characters.len() > 6 and attendee.characters.len() <= 12){
    // si on veut afficher 12 personnages

    cell_content.push[#align(horizon+center)[#block(
    inset: 7pt,
    logo
  )]]

    for (i) in range(calc.div-euclid(attendee.characters.len(), 2)){
      // perso colonne droite
      let icon2 = ""
      if attendee.characters.at(2*i) in characters_index{
        icon2 = image("assets/character_icons/"+attendee.characters.at(2*i)+".png", height:100%)
      }
      else{
        icon2 = image("assets/character_icons/placeholder.png", height:100%)
      }
      // perso colonne gauche
      let icon1 = ""
      if attendee.characters.at(2*i+1) in characters_index{
        icon1 = image("assets/character_icons/"+attendee.characters.at(2*i+1)+".png", height:100%)
      }
      else{
        icon1 = image("assets/character_icons/placeholder.png", height:100%)
      }
      // on ajoute le tableau avec les icones de dé et les icones de perso
      cell_content.push(align(horizon+center)[#table(columns: 7, stroke: none, inset:3pt)[][#image("assets/d12/"+str(2*i+2)+".png", height: 160%)][
        #icon1][   ][#image("assets/d12/"+str(2*i+1)+".png", height: 160%)][#icon2]
      ])
    }

    // on rajoute le dernier perso si besoin
    if (calc.rem-euclid(attendee.characters.len(), 2)==1){
      let i = attendee.characters.len()-1
      cell_content.push(align(horizon+center)[#table(columns: 2, stroke: none, inset:3pt)[#image("assets/d12/"+str(i+1)+".png", height: 160%)][
        #if(attendee.characters.at(i) in characters_index){image("assets/character_icons/"+attendee.characters.at(i)+".png")}else{image("assets/character_icons/placeholder.png", height:100%)}]
      ])
    }

    
    

  } else {
    // si on veut afficher 20 personnages

    // logo a la fin 
  cell_content.push[#align(horizon+center)[#block(
    inset: 3pt,
    logo
  )]]


    for (i) in range(calc.div-euclid(attendee.characters.len(), 2)){
      // perso colonne droite
      let icon2 = ""
      if attendee.characters.at(2*i) in characters_index{
        icon2 = image("assets/character_icons/"+attendee.characters.at(2*i)+".png", height:100%)
      }
      else{
        icon2 = image("assets/character_icons/placeholder.png", height:100%)
      }
      // perso colonne gauche
      let icon1 = ""
      if attendee.characters.at(2*i+1) in characters_index{
        icon1 = image("assets/character_icons/"+attendee.characters.at(2*i+1)+".png", height:100%)
      }
      else{
        icon1 = image("assets/character_icons/placeholder.png", height:100%)
      }
      // on ajoute le tableau avec les icones de dé et les icones de perso
      cell_content.push(align(horizon+center)[#table(columns: 5, stroke: none, inset:2pt)[#image("assets/d20/"+str(2*i+2)+".png", height: 120%)][
        #icon1][   ][#image("assets/d20/"+str(2*i+1)+".png", height: 120%)][#icon2]
      ])
    }

    // on rajoute le dernier perso si besoin
    if (calc.rem-euclid(attendee.characters.len(), 2)==1){
      let i = attendee.characters.len()-1
      cell_content.push(align(horizon+center)[#table(columns: 2, stroke: none, inset:3pt)[#image("assets/d20/"+str(i+1)+".png", height: 120%)][
        #if(attendee.characters.at(i) in characters_index){image("assets/character_icons/"+attendee.characters.at(i)+".png", height:100%)}else{image("assets/character_icons/placeholder.png", height:100%)}]
      ])
    } 

    // si il manque des personnages on rajoute les lignes manquantes
    for (i) in range(10-calc.div-euclid(attendee.characters.len(), 2) - calc.rem-euclid(attendee.characters.len(), 2)){
      cell_content.push[]
    }


  
  }
  }
  }
  }
  }
  }

  // nom du joueur
  cell_content.push(align(center)[
      #block(
        width:70%,
        text(font: "Impact", font_color, 2em)[#shrink-to-width(attendee.name)]
      )
  ])

  // saut de ligne au début
  cell_content.push[]


  cell_content = cell_content.rev()  

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

