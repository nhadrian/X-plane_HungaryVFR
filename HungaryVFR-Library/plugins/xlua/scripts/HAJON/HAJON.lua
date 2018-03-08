hajon = create_dataref("hungaryvfr/misc/hajon","number")
tailnum = find_dataref("sim/aircraft/view/acf_tailnum")

function after_physics()
  if tailnum == "HAJON" then
    hajon = 1
  else
    hajon = 0
  end
end
