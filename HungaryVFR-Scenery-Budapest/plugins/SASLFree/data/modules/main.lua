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

  if Time > (Timer + 0.05) then
    set(timer, Time)

    if get(month) == 8 then
      if get(day) == 20 then
        if get(hours) > 20 then
       
          ------------------- Distance and Gain calculations ----------------------
          local Lat2 = math.rad(47.5060890) 
          local Lon2 = math.rad(19.0423500)
          local Lat1 = math.rad(get(planeLat))
          local Lon1 = math.rad(get(planeLon))
 
          local Elev = get(planeElev) - 150
          local R = 6378.137

	  local dLat = (Lat2 - Lat1)
	  local dLon = (Lon2 - Lon1)

          local a = math.sin(dLat/2) * math.sin(dLat/2) + math.cos(Lat1 * math.pi / 180) * math.cos(Lat2 * math.pi / 180) * math.sin(dLon / 2) * math.sin(dLon / 2)
          local c = 2 * math.atan2(math.sqrt(a), math.sqrt(1-a))
         
          local Dist = math.sqrt((R * c * 1000)^2 + Elev^2)
          local Gain = 1250 - Dist / 3

          if Gain < 0 then 
            Gain = 0 
          else 
            if Gain > 1000 then
              Gain = 1000
            end
          end
          --------------------- End ------------------------------------------------          

          sasl.al.setMasterGain(Gain)

          local Fireworks1 = get(fireworks1)  
          local Fireworks2 = get(fireworks2)		  
          local Fireworks3 = get(fireworks3)		  
          local Fireworks4 = get(fireworks4)          
     	  local Fireworks5 = get(fireworks5)		  
          local Fireworks6 = get(fireworks6)
	  
          set(fireworks, 1)
	  
          if Fireworks1 > 0.05 then
            set(fireworks1, (Fireworks1 - 0.025))
          else
            set(fireworks1, 0)
          end

          if Fireworks2 > 0.05 then
            set(fireworks2, (Fireworks2 - 0.025))
          else
            set(fireworks2, 0)
          end

          if Fireworks3 > 0.05 then
            set(fireworks3, (Fireworks3 - 0.025))
          else
            set(fireworks3, 0)
          end

          if Fireworks4 > 0.05 then
            set(fireworks4, (Fireworks4 - 0.025))
          else
            set(fireworks4, 0)
          end

          if Fireworks5 > 0.05 then  
            set(fireworks5, (Fireworks5 - 0.025))
          else
            set(fireworks5, 0)
          end

          if Fireworks6 > 0.05 then  
            set(fireworks6, (Fireworks6 - 0.025))
          else
            set(fireworks6, 0)
          end

          if Time > (get(period1) + get(prevTime1)) then
            if Fireworks1 == 0 then            
              sasl.al.setSampleRelative(fws1, 1)
              sasl.al.playSample(fws1)
              set(fireworks1, 1)
              set(period1, Time)
              set(prevTime1, math.random(1,10))			
            end			
          end

          if Time > (get(period2) + get(prevTime2)) then
            if Fireworks2 == 0 then            
              sasl.al.setSampleRelative(fws2, 1)
              sasl.al.playSample(fws2)
              set(fireworks2, 1)
              set(period2, Time)
              set(prevTime2, math.random(1,8))			
            end			
          end

          if Time > (get(period3) + get(prevTime3)) then
            if Fireworks3 == 0 then            
              sasl.al.setSampleRelative(fws3, 1)
              sasl.al.playSample(fws3)
              set(fireworks3, 1)
              set(period3, Time)
              set(prevTime3, math.random(1,10))			
            end			
          end

          if Time > (get(period4) + get(prevTime4)) then
            if Fireworks4 == 0 then
              sasl.al.setSampleRelative(fws4, 1)
              sasl.al.playSample(fws4)
              set(fireworks4, 1)
              set(period4, Time)
              set(prevTime4, math.random(1,8))			
            end			
          end

          if Time > (get(period5) + get(prevTime5)) then
            if Fireworks5 == 0 then     
              sasl.al.setSampleRelative(fws5, 1)
              sasl.al.playSample(fws5)
              set(fireworks5, 1)
              set(period5, Time)
              set(prevTime5, math.random(1,10))			
            end			
          end

          if Time > (get(period6) + get(prevTime6)) then
            if Fireworks6 == 0 then            
              sasl.al.setSampleRelative(fws6, 1)
              sasl.al.playSample(fws6)
              set(fireworks6, 1)
              set(period6, Time)
              set(prevTime6, math.random(1,8))			
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
