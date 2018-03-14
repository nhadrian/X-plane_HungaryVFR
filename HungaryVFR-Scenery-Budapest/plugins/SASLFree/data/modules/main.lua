size = { 1024 , 1024 }

----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

fireworks = createGlobalPropertyf("hungaryvfr/Budapest/Fireworks-ON", 0.00000)
fireworks1 = createGlobalPropertyf("hungaryvfr/Budapest/Fireworks1", 0.00000)
fireworks2 = createGlobalPropertyf("hungaryvfr/Budapest/Fireworks2", 0.00000)
fireworks3 = createGlobalPropertyf("hungaryvfr/Budapest/Fireworks3", 0.00000)
fireworks4 = createGlobalPropertyf("hungaryvfr/Budapest/Fireworks4", 0.00000)
fireworks5 = createGlobalPropertyf("hungaryvfr/Budapest/Fireworks5", 0.00000)
fireworks6 = createGlobalPropertyf("hungaryvfr/Budapest/Fireworks6", 0.00000)

dist = createGlobalPropertyf("hungaryvfr/Budapest/dist", 0.00000)

planeLat = globalPropertyf("sim/flightmodel/position/latitude")
planeLon = globalPropertyf("sim/flightmodel/position/longitude")
planeElev = globalPropertyf("sim/flightmodel/position/elevation")

fws1 = sasl.al.loadSample("../sounds/fws1.wav")
fws2 = sasl.al.loadSample("../sounds/fws2.wav")
fws3 = sasl.al.loadSample("../sounds/fws3.wav")
fws4 = sasl.al.loadSample("../sounds/fws4.wav")
fws5 = sasl.al.loadSample("../sounds/fws2.wav")
fws6 = sasl.al.loadSample("../sounds/fws4.wav")

timer = createGlobalPropertyf("hungaryvfr/misc/timer", 0.0)
time = globalPropertyf("sim/time/total_running_time_sec")

day = globalPropertyf("sim/cockpit2/clock_timer/current_day")
month = globalPropertyf("sim/cockpit2/clock_timer/current_month")
hours = globalPropertyf("sim/cockpit2/clock_timer/local_time_hours")

defineProperty("period1", 10)
defineProperty("prevTime1", 10)

defineProperty("period2", 10)
defineProperty("prevTime2", 10)

defineProperty("period3", 10)
defineProperty("prevTime3", 10)

defineProperty("period4", 10)
defineProperty("prevTime4", 10)

defineProperty("period5", 10)
defineProperty("prevTime5", 10)

defineProperty("period6", 10)
defineProperty("prevTime6", 10)

----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

function update()
  local Time = get(time)
  local Timer = get(timer)

  if Time > (Timer + 0.1) then
    set(timer, Time)

    if get(month) == 8 then
      if get(day) == 20 then
        if get(hours) > 20 then

          set(fireworks, 1)

        local Lat1 = 47.5060890
        local Lon1 = 19.0423500
        local Lat2 = get(planeLat)
        local Lon2 = get(planeLon)
        local Elev = get(planeElev) - 150
        local R = 6378.137
	local dLat = (Lat1 * math.pi / 180 - Lat2 * math.pi / 180)
	local dLon = (Lon1 * math.pi / 180 - Lon2 * math.pi / 180)
        local a = math.sin(dLat/2) * math.sin(dLat/2) + math.cos(Lat1 * math.pi / 180) * math.cos(Lat2 * math.pi / 180) * math.sin(dLon / 2) * math.sin(dLon / 2)
        local c = 2 * math.atan2(math.sqrt(a), math.sqrt(1-a))
        set(dist, (R * c * 1000))	

       local Dist = math.sqrt( get(dist)^2 + Elev^2) / 300

          local Fireworks1 = get(fireworks1)  
          local Fireworks2 = get(fireworks2)		  
          local Fireworks3 = get(fireworks3)		  
          local Fireworks4 = get(fireworks4)          
     	  local Fireworks5 = get(fireworks5)		  
          local Fireworks6 = get(fireworks6)
		  
	  
          if Fireworks1 > 0.05 then
            set(fireworks1, (Fireworks1 - 0.05))
          else
            set(fireworks1, 0)
          end

          if Fireworks2 > 0.05 then
            set(fireworks2, (Fireworks2 - 0.05))
          else
            set(fireworks2, 0)
          end

          if Fireworks3 > 0.05 then
            set(fireworks3, (Fireworks3 - 0.05))
          else
            set(fireworks3, 0)
          end

          if Fireworks4 > 0.05 then
            set(fireworks4, (Fireworks4 - 0.05))
          else
            set(fireworks4, 0)
          end

          if Fireworks5 > 0.05 then  
            set(fireworks5, (Fireworks5 - 0.05))
          else
            set(fireworks5, 0)
          end

          if Fireworks6 > 0.05 then  
            set(fireworks6, (Fireworks6 - 0.05))
          else
            set(fireworks6, 0)
          end

          if Time > (get(period1) + get(prevTime1)) then
            if Fireworks1 == 0 then            
              sasl.al.setSampleRelative(fws1, 0)
              sasl.al.setSamplePosition(fws1, 0, 0, 0)
              sasl.al.setSampleMaxDistance(fws1, Dist)
              sasl.al.playSample(fws1)
              set(fireworks1, 1)
              set(period1, Time)
              set(prevTime1, math.random(1,10))			
            end			
          end

          if Time > (get(period2) + get(prevTime2)) then
            if Fireworks2 == 0 then            
              sasl.al.setSampleRelative(fws2, 0)
              sasl.al.setSamplePosition(fws2, 0, 0, 0)
              sasl.al.setSampleMaxDistance(fws2, Dist)
              sasl.al.playSample(fws2)
              set(fireworks2, 1)
              set(period2, Time)
              set(prevTime2, math.random(1,10))			
            end			
          end

          if Time > (get(period3) + get(prevTime3)) then
            if Fireworks3 == 0 then            
              sasl.al.setSampleRelative(fws3, 0)
              sasl.al.setSamplePosition(fws3, 0, 0, 0)
              sasl.al.setSampleMaxDistance(fws3, Dist)
              sasl.al.playSample(fws3)
              set(fireworks3, 1)
              set(period3, Time)
              set(prevTime3, math.random(1,10))			
            end			
          end

          if Time > (get(period4) + get(prevTime4)) then
            if Fireworks4 == 0 then
              sasl.al.setSampleRelative(fws4, 0)
              sasl.al.setSamplePosition(fws4, 0, 0, 0)
              sasl.al.setSampleMaxDistance(fws4, Dist)
              sasl.al.playSample(fws4)
              set(fireworks4, 1)
              set(period4, Time)
              set(prevTime4, math.random(1,10))			
            end			
          end

          if Time > (get(period5) + get(prevTime5)) then
            if Fireworks5 == 0 then     
              sasl.al.setSampleRelative(fws5, 0)
              sasl.al.setSamplePosition(fws5, 0, 0, 0)
              sasl.al.setSampleMaxDistance(fws5, Dist)
              sasl.al.playSample(fws5)
              set(fireworks5, 1)
              set(period5, Time)
              set(prevTime5, math.random(1,10))			
            end			
          end

          if Time > (get(period6) + get(prevTime6)) then
            if Fireworks6 == 0 then            
              sasl.al.setSampleRelative(fws6, 0)
             sasl.al.setSamplePosition(fws6, 0, 0, 0)
              sasl.al.setSampleMaxDistance(fws6, Dist)
              sasl.al.playSample(fws6)
              set(fireworks6, 1)
              set(period6, Time)
              set(prevTime6, math.random(1,10))			
            end			
          end

        else
          if get(fireworks) > 0 then
            set(fireworks, 0)
            set(fireworks1, 0)
            set(fireworks2, 0)
            set(fireworks3, 0)
            set(fireworks4, 0)
            set(fireworks5, 0)
            set(fireworks6, 0)
          end
          return 0
        end

      else
        if get(fireworks) > 0 then
          set(fireworks, 0)
          set(fireworks1, 0)
          set(fireworks2, 0)
          set(fireworks3, 0)
          set(fireworks4, 0)
          set(fireworks5, 0)
          set(fireworks6, 0)
        end
        return 0
      end

    else
      if get(fireworks) > 0 then
        set(fireworks, 0)
        set(fireworks1, 0)
        set(fireworks2, 0)
        set(fireworks3, 0)
        set(fireworks4, 0)
        set(fireworks5, 0)
        set(fireworks6, 0)
      end
      return 0
    end

  else
    return 0
  end

end

----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

components = {

}

----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
