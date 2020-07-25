size = { 1024 , 1024 }

----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
planeLat = globalPropertyf("sim/flightmodel/position/latitude")
planeLon = globalPropertyf("sim/flightmodel/position/longitude")
planeElev = globalPropertyf("sim/flightmodel/position/elevation")

timer = createGlobalPropertyf("Krabi4Xplane/misc/timer", 0.0)
time = globalPropertyf("sim/time/total_running_time_sec")

day = globalPropertyf("sim/cockpit2/clock_timer/current_day")
month = globalPropertyf("sim/cockpit2/clock_timer/current_month")
hours = globalPropertyf("sim/cockpit2/clock_timer/local_time_hours")

hosok = sasl.al.loadSample("../sounds/hosok.wav")
citadella = sasl.al.loadSample("../sounds/citadella.wav")
mtemplom = sasl.al.loadSample("../sounds/mtemplom.wav")
parlament = sasl.al.loadSample("../sounds/parlament.wav")
bazilika = sasl.al.loadSample("../sounds/bazilika.wav")
erzsebethid = sasl.al.loadSample("../sounds/erzsebethid.wav")
lanchid = sasl.al.loadSample("../sounds/lanchid.wav")
szabadsaghid = sasl.al.loadSample("../sounds/szabadsaghid.wav")
budacastle = sasl.al.loadSample("../sounds/budacastle.wav")
municipalpark = sasl.al.loadSample("../sounds/municipalpark.wav")
szechenyithermal = sasl.al.loadSample("../sounds/szechenyithermal.wav")
nationalmuseum = sasl.al.loadSample("../sounds/nationalmuseum.wav")
westernstation = sasl.al.loadSample("../sounds/westernstation.wav")
rooseveltsquare = sasl.al.loadSample("../sounds/rooseveltsquare.wav")
margaretisland = sasl.al.loadSample("../sounds/margaretisland.wav")
freedomsquare = sasl.al.loadSample("../sounds/freedomsquare.wav")
houseofterror = sasl.al.loadSample("../sounds/houseofterror.wav")
vasarcsarnok = sasl.al.loadSample("../sounds/vasarcsarnok.wav")

defineProperty("view_is_external", globalPropertyi("sim/graphics/view/view_is_external"))
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

function update()
       
          ------------------- Distance and Gain calculations ----------------------
          local v = get(view_is_external)
          local Lat1 = math.rad(get(planeLat))
          local Lon1 = math.rad(get(planeLon))

		  
		  --hosok
		  local mainLat2 = math.rad(47.514943) 
          local mainLon2 = math.rad(19.077814)		  
		  local dLat = (mainLat2 - Lat1)
		  local dLon = (mainLon2 - Lon1)
		  local a = math.sin(dLat/2) * math.sin(dLat/2) + math.cos(Lat1 * math.pi / 180) * math.cos(mainLat2 * math.pi / 180) * math.sin(dLon / 2) * math.sin(dLon / 2)
          local c = 2 * math.atan2(math.sqrt(a), math.sqrt(1-a))
		  
		  --citadella
		  local mainLat3 = math.rad(47.486868) 
          local mainLon3 = math.rad(19.04697)
		  local dLat1 = (mainLat3 - Lat1)
		  local dLon1 = (mainLon3 - Lon1)
		  local a1 = math.sin(dLat1/2) * math.sin(dLat1/2) + math.cos(Lat1 * math.pi / 180) * math.cos(mainLat3 * math.pi / 180) * math.sin(dLon1 / 2) * math.sin(dLon1 / 2)
          local c1 = 2 * math.atan2(math.sqrt(a1), math.sqrt(1-a1))
 
  
 		  --mtemplom
		  local mainLat4 = math.rad(47.501994) 
          local mainLon4 = math.rad(19.034253)		  
		  local dLat2 = (mainLat4 - Lat1)
		  local dLon2 = (mainLon4 - Lon1)
		  local a2 = math.sin(dLat2/2) * math.sin(dLat2/2) + math.cos(Lat1 * math.pi / 180) * math.cos(mainLat4 * math.pi / 180) * math.sin(dLon2 / 2) * math.sin(dLon2 / 2)
          local c2 = 2 * math.atan2(math.sqrt(a2), math.sqrt(1-a2))
		  
		  --parlament
		  local mainLat5 = math.rad(47.507111) 
          local mainLon5= math.rad(19.045632)
		  local dLat3 = (mainLat5 - Lat1)
		  local dLon3 = (mainLon5 - Lon1)
		  local a3 = math.sin(dLat3/2) * math.sin(dLat3/2) + math.cos(Lat1 * math.pi / 180) * math.cos(mainLat5 * math.pi / 180) * math.sin(dLon3 / 2) * math.sin(dLon3 / 2)
          local c3 = 2 * math.atan2(math.sqrt(a3), math.sqrt(1-a3))
 
 
 		  --bazilika
		  local mainLat6 = math.rad(47.500754) 
          local mainLon6 = math.rad(19.054031)
		  local dLat4 = (mainLat6 - Lat1)
		  local dLon4 = (mainLon6 - Lon1)
		  local a4 = math.sin(dLat4/2) * math.sin(dLat4/2) + math.cos(Lat1 * math.pi / 180) * math.cos(mainLat6 * math.pi / 180) * math.sin(dLon4 / 2) * math.sin(dLon4 / 2)
          local c4 = 2 * math.atan2(math.sqrt(a4), math.sqrt(1-a4))
 
 		  --erzsebethid
		  local mainLat7 = math.rad(47.490901) 
          local mainLon7 = math.rad(19.049199)		  
		  local dLat5 = (mainLat7 - Lat1)
		  local dLon5 = (mainLon7 - Lon1)
		  local a5 = math.sin(dLat5/2) * math.sin(dLat5/2) + math.cos(Lat1 * math.pi / 180) * math.cos(mainLat7 * math.pi / 180) * math.sin(dLon5 / 2) * math.sin(dLon5 / 2)
          local c5 = 2 * math.atan2(math.sqrt(a5), math.sqrt(1-a5))
		  
		  --lanchid
		  local mainLat8 = math.rad(47.499029) 
          local mainLon8 = math.rad(19.043787)
		  local dLat6 = (mainLat8 - Lat1)
		  local dLon6 = (mainLon8 - Lon1)
		  local a6 = math.sin(dLat6/2) * math.sin(dLat6/2) + math.cos(Lat1 * math.pi / 180) * math.cos(mainLat8 * math.pi / 180) * math.sin(dLon6 / 2) * math.sin(dLon6 / 2)
          local c6 = 2 * math.atan2(math.sqrt(a6), math.sqrt(1-a6))
 
 		  --szabadsaghid
		  local mainLat9 = math.rad(47.485802) 
          local mainLon9 = math.rad(19.055006)
		  local dLat7 = (mainLat9 - Lat1)
		  local dLon7 = (mainLon9 - Lon1)
		  local a7 = math.sin(dLat7/2) * math.sin(dLat7/2) + math.cos(Lat1 * math.pi / 180) * math.cos(mainLat9 * math.pi / 180) * math.sin(dLon7 / 2) * math.sin(dLon7 / 2)
          local c7 = 2 * math.atan2(math.sqrt(a7), math.sqrt(1-a7))
 
 
  		  --budacastle
		  local mainLat10 = math.rad(47.496009) 
          local mainLon10 = math.rad(19.03961)
		  local dLat8 = (mainLat10 - Lat1)
		  local dLon8 = (mainLon10 - Lon1)
		  local a8 = math.sin(dLat8/2) * math.sin(dLat8/2) + math.cos(Lat1 * math.pi / 180) * math.cos(mainLat10 * math.pi / 180) * math.sin(dLon8 / 2) * math.sin(dLon8 / 2)
          local c8 = 2 * math.atan2(math.sqrt(a8), math.sqrt(1-a8))
		  
  		  --municipalpark
		  local mainLat11 = math.rad(47.512685) 
          local mainLon11 = math.rad(19.0853)
		  local dLat9 = (mainLat11 - Lat1)
		  local dLon9 = (mainLon11 - Lon1)
		  local a9 = math.sin(dLat9/2) * math.sin(dLat9/2) + math.cos(Lat1 * math.pi / 180) * math.cos(mainLat11 * math.pi / 180) * math.sin(dLon9 / 2) * math.sin(dLon9 / 2)
          local c9 = 2 * math.atan2(math.sqrt(a9), math.sqrt(1-a9))		


  		  --szechenyithermal
		  local mainLat12 = math.rad(47.518382) 
          local mainLon12 = math.rad(19.082243)
		  local dLat10 = (mainLat12 - Lat1)
		  local dLon10 = (mainLon12 - Lon1)
		  local a10 = math.sin(dLat10/2) * math.sin(dLat10/2) + math.cos(Lat1 * math.pi / 180) * math.cos(mainLat12 * math.pi / 180) * math.sin(dLon10 / 2) * math.sin(dLon10 / 2)
          local c10 = 2 * math.atan2(math.sqrt(a10), math.sqrt(1-a10))			  
		  
  		  --nationalmuseum
		  local mainLat13 = math.rad(47.491227) 
          local mainLon13 = math.rad(19.062755)
		  local dLat11 = (mainLat13 - Lat1)
		  local dLon11 = (mainLon13 - Lon1)
		  local a11 = math.sin(dLat11/2) * math.sin(dLat11/2) + math.cos(Lat1 * math.pi / 180) * math.cos(mainLat13 * math.pi / 180) * math.sin(dLon11 / 2) * math.sin(dLon11 / 2)
          local c11 = 2 * math.atan2(math.sqrt(a11), math.sqrt(1-a11))			  
 
  		  --westernstation
		  local mainLat14 = math.rad(47.510636) 
          local mainLon14 = math.rad(19.057309)
		  local dLat12 = (mainLat14 - Lat1)
		  local dLon12 = (mainLon14 - Lon1)
		  local a12 = math.sin(dLat12/2) * math.sin(dLat12/2) + math.cos(Lat1 * math.pi / 180) * math.cos(mainLat14 * math.pi / 180) * math.sin(dLon12 / 2) * math.sin(dLon12 / 2)
          local c12 = 2 * math.atan2(math.sqrt(a12), math.sqrt(1-a12))		

  		  --rooseveltsquare
		  local mainLat15 = math.rad(47.499629) 
          local mainLon15 = math.rad(19.047235)
		  local dLat13 = (mainLat15 - Lat1)
		  local dLon13 = (mainLon15 - Lon1)
		  local a13 = math.sin(dLat13/2) * math.sin(dLat13/2) + math.cos(Lat1 * math.pi / 180) * math.cos(mainLat15 * math.pi / 180) * math.sin(dLon13 / 2) * math.sin(dLon13 / 2)
          local c13 = 2 * math.atan2(math.sqrt(a13), math.sqrt(1-a13))	

  		  --margaretisland
		  local mainLat16 = math.rad(47.52727) 
          local mainLon16 = math.rad(19.047662)
		  local dLat14 = (mainLat16 - Lat1)
		  local dLon14 = (mainLon16 - Lon1)
		  local a14 = math.sin(dLat14/2) * math.sin(dLat14/2) + math.cos(Lat1 * math.pi / 180) * math.cos(mainLat16 * math.pi / 180) * math.sin(dLon14 / 2) * math.sin(dLon14 / 2)
          local c14 = 2 * math.atan2(math.sqrt(a14), math.sqrt(1-a14))		

  		  --freedomsquare
		  local mainLat17 = math.rad(47.504043) 
          local mainLon17 = math.rad(19.050351)
		  local dLat15 = (mainLat17 - Lat1)
		  local dLon15 = (mainLon17 - Lon1)
		  local a15 = math.sin(dLat15/2) * math.sin(dLat15/2) + math.cos(Lat1 * math.pi / 180) * math.cos(mainLat17 * math.pi / 180) * math.sin(dLon15 / 2) * math.sin(dLon15 / 2)
          local c15 = 2 * math.atan2(math.sqrt(a15), math.sqrt(1-a15))			  

  		  --houseofterror
		  local mainLat18 = math.rad(47.506924) 
          local mainLon18 = math.rad(19.065053)
		  local dLat16 = (mainLat18 - Lat1)
		  local dLon16 = (mainLon18 - Lon1)
		  local a16 = math.sin(dLat16/2) * math.sin(dLat16/2) + math.cos(Lat1 * math.pi / 180) * math.cos(mainLat18 * math.pi / 180) * math.sin(dLon16 / 2) * math.sin(dLon16 / 2)
          local c16 = 2 * math.atan2(math.sqrt(a16), math.sqrt(1-a16))	
		  
		  
		  --vasarcsarnok
		  local mainLat19 = math.rad(47.486733) 
          local mainLon19 = math.rad(19.058795)
		  local dLat17 = (mainLat19 - Lat1)
		  local dLon17 = (mainLon19 - Lon1)
		  local a17 = math.sin(dLat17/2) * math.sin(dLat17/2) + math.cos(Lat1 * math.pi / 180) * math.cos(mainLat19 * math.pi / 180) * math.sin(dLon17 / 2) * math.sin(dLon17 / 2)
          local c17 = 2 * math.atan2(math.sqrt(a17), math.sqrt(1-a17))	
		  
		---------------------------------------------------------------------------
		
		  --elev
          local Elev = get(planeElev) - 150
          local R = 6378.137  
  

		  --hosok       
          local Dist_far = math.sqrt((R * c * 1000)^2 + Elev^2)
		  local Dist_close = math.sqrt((R * c * 20000)^2 + Elev^2)
		  local Gain_talk = 170 - Dist_far / 2
		  
		 if Gain_talk < 0 then 
            Gain_talk = 0 
         else 
            if Gain_talk > 1000 then
              Gain_talk = 1000
            end
          end 
  
	  	  --citadella       
          local Dist_far1 = math.sqrt((R * c1 * 1000)^2 + Elev^2)
		  local Dist_close1 = math.sqrt((R * c1 * 20000)^2 + Elev^2)
          local Gain_talk1 = 170 - Dist_far1 / 2
		  
		 if Gain_talk1 < 0 then 
            Gain_talk1 = 0 
         else 
            if Gain_talk1 > 1000 then
              Gain_talk1 = 1000
            end
          end 		  

		  --mtemplom      
          local Dist_far2 = math.sqrt((R * c2 * 1000)^2 + Elev^2)
		  local Dist_close2 = math.sqrt((R * c2 * 20000)^2 + Elev^2)
		  local Gain_talk2 = 170 - Dist_far2 / 2
		  
		 if Gain_talk2 < 0 then 
            Gain_talk2 = 0 
         else 
            if Gain_talk2 > 1000 then
              Gain_talk2 = 1000
            end
          end 
  
	  	  --parlament       
          local Dist_far3 = math.sqrt((R * c3 * 1000)^2 + Elev^2)
		  local Dist_close3 = math.sqrt((R * c3 * 20000)^2 + Elev^2)
          local Gain_talk3 = 170 - Dist_far3 / 2
		  
		 if Gain_talk3 < 0 then 
            Gain_talk3 = 0 
         else 
            if Gain_talk3 > 1000 then
              Gain_talk3 = 1000
            end
          end 	
		  
		  
		  --bazilika
          local Dist_far4 = math.sqrt((R * c4 * 1000)^2 + Elev^2)
		  local Dist_close4 = math.sqrt((R * c4 * 20000)^2 + Elev^2)
		  local Gain_talk4 = 170 - Dist_far4 / 2
		  
		 if Gain_talk4 < 0 then 
            Gain_talk4 = 0 
         else 
            if Gain_talk4 > 1000 then
              Gain_talk4 = 1000
            end
          end 
  
	  	  --erzsebethid    
          local Dist_far5 = math.sqrt((R * c5 * 1000)^2 + Elev^2)
		  local Dist_close5 = math.sqrt((R * c5 * 20000)^2 + Elev^2)
          local Gain_talk5 = 170 - Dist_far5 / 2
		  
		 if Gain_talk5 < 0 then 
            Gain_talk5 = 0 
         else 
            if Gain_talk5 > 1000 then
              Gain_talk5 = 1000
            end
          end 	
		  
		  
		  --lanchid     
          local Dist_far6 = math.sqrt((R * c6 * 1000)^2 + Elev^2)
		  local Dist_close6 = math.sqrt((R * c6 * 20000)^2 + Elev^2)
		  local Gain_talk6 = 170 - Dist_far6 / 2
		  
		 if Gain_talk6 < 0 then 
            Gain_talk6 = 0 
         else 
            if Gain_talk6 > 1000 then
              Gain_talk6 = 1000
            end
          end 
  
	  	  --szabadsaghid      
          local Dist_far7 = math.sqrt((R * c7 * 1000)^2 + Elev^2)
		  local Dist_close7 = math.sqrt((R * c7 * 20000)^2 + Elev^2)
          local Gain_talk7 = 170 - Dist_far7 / 2
		  
		 if Gain_talk7 < 0 then 
            Gain_talk7 = 0 
         else 
            if Gain_talk7 > 1000 then
              Gain_talk7 = 1000
            end
          end 	
  
  	  	  --budacastle    
          local Dist_far8 = math.sqrt((R * c8 * 1000)^2 + Elev^2)
		  local Dist_close8 = math.sqrt((R * c8 * 20000)^2 + Elev^2)
          local Gain_talk8 = 170 - Dist_far8 / 2
		  
		 if Gain_talk8 < 0 then 
            Gain_talk8 = 0 
         else 
            if Gain_talk8 > 1000 then
              Gain_talk8 = 1000
            end
          end 	

  	  	  --municipalpark    
          local Dist_far9 = math.sqrt((R * c9 * 1000)^2 + Elev^2)
		  local Dist_close9 = math.sqrt((R * c9 * 20000)^2 + Elev^2)
          local Gain_talk9 = 170 - Dist_far9 / 2
		  
		 if Gain_talk9 < 0 then 
            Gain_talk9 = 0 
         else 
            if Gain_talk9 > 1000 then
              Gain_talk9 = 1000
            end
          end 	

  	  	  --szechenyithermal
          local Dist_far10 = math.sqrt((R * c10 * 1000)^2 + Elev^2)
		  local Dist_close10 = math.sqrt((R * c10 * 20000)^2 + Elev^2)
          local Gain_talk10 = 170 - Dist_far10 / 2
		  
		 if Gain_talk10 < 0 then 
            Gain_talk10 = 0 
         else 
            if Gain_talk10 > 1000 then
              Gain_talk10 = 1000
            end
          end 	

  	  	  --nationalmuseum
          local Dist_far11 = math.sqrt((R * c11 * 1000)^2 + Elev^2)
		  local Dist_close11 = math.sqrt((R * c11 * 20000)^2 + Elev^2)
          local Gain_talk11 = 170 - Dist_far11 / 2
		  
		 if Gain_talk11 < 0 then 
            Gain_talk11 = 0 
         else 
            if Gain_talk11 > 1000 then
              Gain_talk11 = 1000
            end
          end 		
		  
		  
  	  	  --westernstation
          local Dist_far12 = math.sqrt((R * c12 * 1000)^2 + Elev^2)
		  local Dist_close12 = math.sqrt((R * c12 * 20000)^2 + Elev^2)
          local Gain_talk12 = 170 - Dist_far12 / 2
		  
		 if Gain_talk12 < 0 then 
            Gain_talk12 = 0 
         else 
            if Gain_talk12 > 1000 then
              Gain_talk12 = 1000
            end
          end 	

  	  	  --rooseveltsquare
          local Dist_far13 = math.sqrt((R * c13 * 1000)^2 + Elev^2)
		  local Dist_close13 = math.sqrt((R * c13 * 20000)^2 + Elev^2)
          local Gain_talk13 = 170 - Dist_far13 / 2
		  
		 if Gain_talk13 < 0 then 
            Gain_talk13 = 0 
         else 
            if Gain_talk13 > 1000 then
              Gain_talk13 = 1000
            end
          end 		  
		  
  	  	  --margaretisland
          local Dist_far14 = math.sqrt((R * c14 * 1000)^2 + Elev^2)
		  local Dist_close14 = math.sqrt((R * c14 * 20000)^2 + Elev^2)
          local Gain_talk14 = 170 - Dist_far14 / 12
		  
		 if Gain_talk14 < 0 then 
            Gain_talk14 = 0 
         else 
            if Gain_talk14 > 1000 then
              Gain_talk14 = 1000
            end
          end 	

  	  	  --freedomsquare
          local Dist_far15 = math.sqrt((R * c15 * 1000)^2 + Elev^2)
		  local Dist_close15 = math.sqrt((R * c15 * 20000)^2 + Elev^2)
          local Gain_talk15 = 170 - Dist_far15 / 4
		  
		 if Gain_talk15 < 0 then 
            Gain_talk15 = 0 
         else 
            if Gain_talk15 > 1000 then
              Gain_talk15 = 1000
            end
          end 

  	  	  --houseofterror
          local Dist_far16 = math.sqrt((R * c16 * 1000)^2 + Elev^2)
		  local Dist_close16 = math.sqrt((R * c16 * 20000)^2 + Elev^2)
          local Gain_talk16 = 170 - Dist_far16 / 2
		  
		 if Gain_talk16 < 0 then 
            Gain_talk16 = 0 
         else 
            if Gain_talk16 > 1000 then
              Gain_talk16 = 1000
            end
          end 
		  
		  
  	  	  --vasarcsarnok
          local Dist_far17 = math.sqrt((R * c17 * 1000)^2 + Elev^2)
		  local Dist_close17 = math.sqrt((R * c17 * 20000)^2 + Elev^2)
          local Gain_talk17 = 170 - Dist_far17 / 2
		  
		 if Gain_talk17 < 0 then 
            Gain_talk17 = 0 
         else 
            if Gain_talk17 > 1000 then
              Gain_talk17 = 1000
            end
          end 		  
		  
          --------------------- End ------------------------------------------------          
		
		--hosok  			
		if v == 0 then 
			Gain_talk = Gain_talk * 3
		else
			Gain_talk = Gain_talk * 4
		end	
		
	    --citadella 		
		if v == 0 then 
			Gain_talk1 = Gain_talk1 * 3
		else
			Gain_talk1 = Gain_talk1 * 4
		end	    
				
		--mtemplom 			
		if v == 0 then 
			Gain_talk2 = Gain_talk2 * 3
		else
			Gain_talk2 = Gain_talk2 * 4
		end	
		
	    --parlament		
		if v == 0 then 
			Gain_talk3 = Gain_talk3 * 3
		else
			Gain_talk3 = Gain_talk3 * 4
		end	    
				
		--bazilika  			
		if v == 0 then 
			Gain_talk4 = Gain_talk4 * 3
		else
			Gain_talk4 = Gain_talk4 * 4
		end	
		
	    --erzsebethid		
		if v == 0 then 
			Gain_talk5 = Gain_talk5 * 3
		else
			Gain_talk5 = Gain_talk5 * 4
		end	    		
		
		
		--lanchid			
		if v == 0 then 
			Gain_talk6 = Gain_talk6 * 3
		else
			Gain_talk6 = Gain_talk6 * 4
		end	
		
	    --szabadsaghid	
		if v == 0 then 
			Gain_talk7 = Gain_talk7 * 3
		else
			Gain_talk7 = Gain_talk7 * 4
		end	    	


	    --budacastle	
		if v == 0 then 
			Gain_talk8 = Gain_talk8 * 3
		else
			Gain_talk8 = Gain_talk8 * 4
		end	  	

	    --municipalpark	
		if v == 0 then 
			Gain_talk9 = Gain_talk9 * 3
		else
			Gain_talk9 = Gain_talk9 * 4
		end	  
		
	    --szechenyithermal
		if v == 0 then 
			Gain_talk10 = Gain_talk10 * 3
		else
			Gain_talk10 = Gain_talk10 * 4
		end	

	    --nationalmuseum
		if v == 0 then 
			Gain_talk11 = Gain_talk11 * 3
		else
			Gain_talk11 = Gain_talk11 * 4
		end	  	
		
	    --westernstation
		if v == 0 then 
			Gain_talk12 = Gain_talk12 * 3
		else
			Gain_talk12 = Gain_talk12 * 4
		end	 		
	
	    --rooseveltsquare
		if v == 0 then 
			Gain_talk13 = Gain_talk13 * 3
		else
			Gain_talk13 = Gain_talk13 * 4
		end	 	
				
		--margaretisland
		if v == 0 then 
			Gain_talk14 = Gain_talk14 * 3
		else
			Gain_talk14 = Gain_talk14 * 4
		end	 	
		
		--freedomsquare
		if v == 0 then 
			Gain_talk15 = Gain_talk15 * 3
		else
			Gain_talk15 = Gain_talk15 * 4
		end	 		
  		
		--houseofterror
		if v == 0 then 
			Gain_talk16 = Gain_talk16 * 3
		else
			Gain_talk16 = Gain_talk16 * 4
		end	 		
		
		--vasarcsarnok
		if v == 0 then 
			Gain_talk17 = Gain_talk17 * 3
		else
			Gain_talk17 = Gain_talk17 * 4
		end	 		
		
		
		--------------------------------------------------------------------------------------------------------------------------
		
		--hosok
		if Dist_close < 5000 then
--			if sasl.al.isSamplePlaying(hosok) == false then hosok = sasl.al.loadSample("../sounds/hosok.wav") end		
			sasl.al.setSampleGain(hosok, Gain_talk)
			sasl.al.setSampleRelative(hosok, 1)
			if sasl.al.isSamplePlaying(hosok) == false then sasl.al.playSample(hosok, 1) end  		
		else
			sasl.al.pauseSample(hosok)
--			sasl.al.unloadSample(hosok)
		end	
		
	    --citadella 
		if Dist_close1 < 5000 then	
--		if sasl.al.isSamplePlaying(citadella) == false then citadella = sasl.al.loadSample("../sounds/citadella.wav") end		
			sasl.al.setSampleGain(citadella, Gain_talk1)
			sasl.al.setSampleRelative(citadella, 1)
			if sasl.al.isSamplePlaying(citadella) == false then sasl.al.playSample(citadella, 1) end  
		else
			sasl.al.pauseSample(citadella)
--			sasl.al.unloadSample(citadella)
		end		
		
		
		--mtemplom
		if Dist_close2 < 5000 then
--			if sasl.al.isSamplePlaying(mtemplom) == false then mtemplom = sasl.al.loadSample("../sounds/mtemplom.wav") end		
			sasl.al.setSampleGain(mtemplom, Gain_talk2)
			sasl.al.setSampleRelative(mtemplom, 1)
			if sasl.al.isSamplePlaying(mtemplom) == false then sasl.al.playSample(mtemplom, 1) end  		
		else
			sasl.al.pauseSample(mtemplom)
--			sasl.al.unloadSample(mtemplom)
		end	
		
	    --parlament
		if Dist_close3 < 5000 then	
--			if sasl.al.isSamplePlaying(parlament) == false then parlament = sasl.al.loadSample("../sounds/parlament.wav") end		
			sasl.al.setSampleGain(parlament, Gain_talk3)
			sasl.al.setSampleRelative(parlament, 1)
			if sasl.al.isSamplePlaying(parlament) == false then sasl.al.playSample(parlament, 1) end  
		else
			sasl.al.pauseSample(parlament)
--			sasl.al.unloadSample(parlament)
		end	
		
		
		--bazilika
		if Dist_close4 < 5000 then
--			if sasl.al.isSamplePlaying(bazilika) == false then bazilika = sasl.al.loadSample("../sounds/bazilika.wav") end		
			sasl.al.setSampleGain(bazilika, Gain_talk4)
			sasl.al.setSampleRelative(bazilika, 1)
			if sasl.al.isSamplePlaying(bazilika) == false then sasl.al.playSample(bazilika, 1) end  		
		else
			sasl.al.pauseSample(bazilika)			
--			sasl.al.unloadSample(bazilika)
		end	
		
	    --erzsebethid 
		if Dist_close5 < 5000 then	
--			if sasl.al.isSamplePlaying(erzsebethid) == false then erzsebethid = sasl.al.loadSample("../sounds/erzsebethid.wav") end		
			sasl.al.setSampleGain(erzsebethid, Gain_talk5)
			sasl.al.setSampleRelative(erzsebethid, 1)
			if sasl.al.isSamplePlaying(erzsebethid) == false then sasl.al.playSample(erzsebethid, 1) end  
		else
			sasl.al.pauseSample(erzsebethid)
--			sasl.al.unloadSample(erzsebethid)
		end			
		
		--lanchid
		if Dist_close6 < 5000 then
--			if sasl.al.isSamplePlaying(lanchid) == false then lanchid = sasl.al.loadSample("../sounds/lanchid.wav") end		
			sasl.al.setSampleGain(lanchid, Gain_talk6)
			sasl.al.setSampleRelative(lanchid, 1)
			if sasl.al.isSamplePlaying(lanchid) == false then sasl.al.playSample(lanchid, 1) end  		
		else
			sasl.al.pauseSample(lanchid)
--			sasl.al.unloadSample(lanchid)
		end	
		
	    --szabadsaghid
		if Dist_close7 < 5000 then	
--			if sasl.al.isSamplePlaying(szabadsaghid) == false then szabadsaghid = sasl.al.loadSample("../sounds/szabadsaghid.wav") end		
			sasl.al.setSampleGain(szabadsaghid, Gain_talk7)
			sasl.al.setSampleRelative(szabadsaghid, 1)
			if sasl.al.isSamplePlaying(szabadsaghid) == false then sasl.al.playSample(szabadsaghid, 1) end  
		else
			sasl.al.pauseSample(szabadsaghid)
--			sasl.al.unloadSample(szabadsaghid)
		end		


	    --budacastle
		if Dist_close8 < 5000 then	
--			if sasl.al.isSamplePlaying(budacastle) == false then budacastle = sasl.al.loadSample("../sounds/budacastle.wav") end		
			sasl.al.setSampleGain(budacastle, Gain_talk8)
			sasl.al.setSampleRelative(budacastle, 1)
			if sasl.al.isSamplePlaying(budacastle) == false then sasl.al.playSample(budacastle, 1) end  
		else
			sasl.al.pauseSample(budacastle)
--			sasl.al.unloadSample(budacastle)
		end			

	    --municipalpark
		if Dist_close9 < 10000 then	
--			if sasl.al.isSamplePlaying(municipalpark) == false then municipalpark = sasl.al.loadSample("../sounds/municipalpark.wav") end		
			sasl.al.setSampleGain(municipalpark, Gain_talk9)
			sasl.al.setSampleRelative(municipalpark, 1)
			if sasl.al.isSamplePlaying(municipalpark) == false then sasl.al.playSample(municipalpark, 1) end  
		else
			sasl.al.pauseSample(municipalpark)
--			sasl.al.unloadSample(budacastle)
		end		

	    --szechenyithermal
		if Dist_close10 < 7000 then	
--			if sasl.al.isSamplePlaying(szechenyithermal) == false then szechenyithermal = sasl.al.loadSample("../sounds/szechenyithermal.wav") end		
			sasl.al.setSampleGain(szechenyithermal, Gain_talk10)
			sasl.al.setSampleRelative(szechenyithermal, 1)
			if sasl.al.isSamplePlaying(szechenyithermal) == false then sasl.al.playSample(szechenyithermal, 1) end  
		else
			sasl.al.pauseSample(szechenyithermal)
--			sasl.al.unloadSample(szechenyithermal)
		end			

	    --nationalmuseum
		if Dist_close11 < 7000 then	
--			if sasl.al.isSamplePlaying(nationalmuseum) == false then nationalmuseum = sasl.al.loadSample("../sounds/nationalmuseum.wav") end		
			sasl.al.setSampleGain(nationalmuseum, Gain_talk11)
			sasl.al.setSampleRelative(nationalmuseum, 1)
			if sasl.al.isSamplePlaying(nationalmuseum) == false then sasl.al.playSample(nationalmuseum, 1) end  
		else
			sasl.al.pauseSample(nationalmuseum)
--			sasl.al.unloadSample(nationalmuseum)
		end		

	    --westernstation
		if Dist_close12 < 7000 then	
			sasl.al.setSampleGain(westernstation, Gain_talk12)
			sasl.al.setSampleRelative(westernstation, 1)
			if sasl.al.isSamplePlaying(westernstation) == false then sasl.al.playSample(westernstation, 1) end  
		else
			sasl.al.pauseSample(westernstation)
		end			

	    --rooseveltsquare
		if Dist_close13 < 3000 then	
			sasl.al.setSampleGain(rooseveltsquare, Gain_talk13)
			sasl.al.setSampleRelative(rooseveltsquare, 1)
			if sasl.al.isSamplePlaying(rooseveltsquare) == false then sasl.al.playSample(rooseveltsquare, 1) end  
		else
			sasl.al.pauseSample(rooseveltsquare)
		end			
		
	    --margaretisland
		if Dist_close14 < 15000 then	
			sasl.al.setSampleGain(margaretisland, Gain_talk14)
			sasl.al.setSampleRelative(margaretisland, 1)
			if sasl.al.isSamplePlaying(margaretisland) == false then sasl.al.playSample(margaretisland, 1) end  
		else
			sasl.al.pauseSample(margaretisland)
		end			

	    --freedomsquare
		if Dist_close15 < 5000 then	
			sasl.al.setSampleGain(freedomsquare, Gain_talk15)
			sasl.al.setSampleRelative(freedomsquare, 1)
			if sasl.al.isSamplePlaying(freedomsquare) == false then sasl.al.playSample(freedomsquare, 1) end  
		else
			sasl.al.pauseSample(freedomsquare)
		end	
		
	    --houseofterror
		if Dist_close16 < 2000 then	
			sasl.al.setSampleGain(houseofterror, Gain_talk16)
			sasl.al.setSampleRelative(houseofterror, 1)
			if sasl.al.isSamplePlaying(houseofterror) == false then sasl.al.playSample(houseofterror, 1) end  
		else
			sasl.al.pauseSample(houseofterror)
		end			

		--vasarcsarnok
		if Dist_close17 < 3000 then	
			sasl.al.setSampleGain(vasarcsarnok, Gain_talk17)
			sasl.al.setSampleRelative(vasarcsarnok, 1)
			if sasl.al.isSamplePlaying(vasarcsarnok) == false then sasl.al.playSample(vasarcsarnok, 1) end  
		else
			sasl.al.pauseSample(vasarcsarnok)
		end		
		
		
end

components = {
}

----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
