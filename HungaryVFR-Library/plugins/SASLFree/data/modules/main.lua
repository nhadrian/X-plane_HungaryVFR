size = { 1024 , 1024 }

----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

hajon = createGlobalPropertyi("hungaryvfr/library/HAJON", 0.0)
hajaj = createGlobalPropertyi("hungaryvfr/library/HAJAJ", 0.0)
haves = createGlobalPropertyi("hungaryvfr/library/HAVES", 0.0)
tailnum = globalPropertys("sim/aircraft/view/acf_tailnum")

----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

function update()
  if get(tailnum) == "HAJON" then
    set(hajon, 1)
  else
    set(hajon, 0)
  end

  if get(tailnum) == "HA-JAJ" then
    set(hajaj, 1)
  else
    set(hajaj, 0)
  end

  if get(tailnum) == "HAVES" then
    set(haves, 1)
  else
    set(haves, 0)
  end
  
  updateAll(components)
end

----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

components = {
}

----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
