--TP set toggle input: //gs c toggle TP set----1 Standard, 2 Solo, 3 Marches, 4 AccuracyLite, 5 AccuracyMax, 6 DT, 7 DTAccuracy--
--Idle set toggle input: //gs c toggle Idle set----1 Standard, 2 DT--
--Requiescat set toggle input: //gs c toggle Req set----1 Attack, 2 Accuracy--
--Chant du Cygne set toggle input: //gs c toggle CDC set----1 Attack, 2 Accuracy--
Absorb_Spells = S{"Absorb-STR","Absorb-DEX","Absorb-VIT","Absorb-MND","Absorb-INT","Absorb-CHR","Absorb-ACC"}
Drain_Spells = S{"Drain","Drain II","Aspir","Aspir II","Absorb-TP"}

function get_sets()
		
	--Idle Sets--	
	sets.Idle = {}
	
	sets.Idle.index = {'Standard','DT'}
	Idle_ind = 1
	Gear_Debug = 0
	Killer_Mode = 0
	DA_Back ={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}}
	WSD_Back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','Accuracy+10','Weapon skill damage +10%',}}
	STR_Back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','Weapon skill damage +10%',}}
	INT_Back={ name="Ankou's Mantle", augments={'INT+20','Accuracy+20 Attack+20','INT+10','"Dbl.Atk."+10'}}
	
	Acc_Head = { name="Valorous Mask", augments={'Accuracy+24 Attack+24','"Dbl.Atk."+2','Accuracy+15','Attack+5',}}
	WS_Head = { name="Valorous Mask", augments={'Attack+27','"Store TP"+6','STR+11','Accuracy+3',}}
	WSD_Head = {name="Valorous Mask", augments={'Accuracy+17 Attack+17','Weapon skill damage +4%','STR+8','Accuracy+9','Attack+2',}}
	TP_Legs={ name="Odyssean Cuisses", augments={'Accuracy+23','"Store TP"+5','AGI+10',}}
	WSD_Legs={ name="Odyssean Cuisses", augments={'Accuracy+24 Attack+24','Weapon skill damage +4%','STR+14',}}
	WSD_Legs={ name="Odyssean Cuisses", augments={'Accuracy+24 Attack+24','Weapon skill damage +4%','STR+14',}}
	
	sets.Idle.Standard = {ammo="Staunch Tathlum",
    head={ name="Valorous Mask", augments={'Attack+25','Weapon skill damage +4%','CHR+10','Accuracy+2',}},
    body="Sulevia's Plate. +2",
    hands="Sulev. Gauntlets +2",
    legs="Sulev. Cuisses +2",
    feet="Sulev. Leggings +2",
    neck="Loricate Torque +1",
    waist="Ioskeha Belt +1",
    left_ear="Genmei Earring",
    right_ear="Etiolation Earring",
    left_ring="Defending Ring",
    right_ring="Vocane Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Damage taken-5%',}},
}
						  
	sets.Idle.DT = {ammo="Staunch Tathlum",
    head={ name="Valorous Mask", augments={'Attack+25','Weapon skill damage +4%','CHR+10','Accuracy+2',}},
    body="Sulevia's Plate. +2",
    hands="Sulev. Gauntlets +2",
    legs="Sulev. Cuisses +2",
    feet="Sulev. Leggings +2",
    neck="Loricate Torque +1",
    waist="Ioskeha Belt +1",
    left_ear="Genmei Earring",
    right_ear="Etiolation Earring",
    left_ring="Defending Ring",
    right_ring="Vocane Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Damage taken-5%',}},
}		
							
							
	
	
	--TP Sets--
	sets.TP = {}

	sets.TP.index = {'Standard', 'DW', 'Anguta', 'AccuracyLite', 'AccuracyFull', 'DT'}
	--1=Standard, 2=DW, 3=Anguta, 4=AccuracyLite, 5=AccuracyFull, 6=DT
	TP_ind = 1
	
	sets.TP.Standard = {ammo="Yetshila",
    head="Flam. Zucchetto +2",
    body={ name="Valorous Mail", augments={'Accuracy+28','"Dbl.Atk."+3','Attack+6',}},
    hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
    legs={ name="Odyssean Cuisses", augments={'Accuracy+9 Attack+9','"Dbl.Atk."+4','Accuracy+1','Attack+7',}},
    feet="Flam. Gambieras +2",
    neck="Abyssal Beads",
    waist="Ioskeha Belt +1",
    left_ear="Brutal Earring",
    right_ear="Cessance Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Petrov Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Damage taken-5%',}},
}
	
	
	sets.TP.DW ={ammo="Yetshila",
    head="Flam. Zucchetto +2",
    body={ name="Valorous Mail", augments={'Accuracy+28','"Dbl.Atk."+3','Attack+6',}},
    hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
    legs={ name="Odyssean Cuisses", augments={'Accuracy+9 Attack+9','"Dbl.Atk."+4','Accuracy+1','Attack+7',}},
    feet="Flam. Gambieras +2",
    neck="Abyssal Beads",
    waist="Ioskeha Belt +1",
    left_ear="Brutal Earring",
    right_ear="Cessance Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Petrov Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Damage taken-5%',}},
}
	
	sets.TP.Anguta = {ammo="Ginsen",
			    head="Flamma zucchetto +2",neck="Ainia collar", ear1="Telos earring", ear2="Cessance earring",
			    body={ name="Valorous Mail", augments={'Accuracy+24','"Dbl.Atk."+5','DEX+10',}},hands="Emicho Gauntlets",ring1="Niqmaddu ring",ring2="Petrov ring",
			    back="Ankou's Mantle",waist="Ioskeha belt",legs=TP_Legs,feet={ name="Valorous Greaves", augments={'Accuracy+24','"Dbl.Atk."+4','Attack+4',}},}
				
--	sets.TP.Anguta = {ammo="Hasty pinion +1",
--			    head="Flamma zucchetto +2",neck="Ganesha's mala", ear1="Brutal earring", ear2="Cessance earring",
--			    body="Valorous mail",hands="Sulevia's gauntlets +2",ring1="Niqmaddu ring",ring2="Hetairoi ring",
--			    back="Ankou's Mantle",waist="Ioskeha belt",legs="Ignominy flanchard +3",feet="Flamma gambieras +2"}
	
					
	sets.TP.AccuracyLite = {ammo="Yetshila",
    head="Flam. Zucchetto +2",
    body={ name="Valorous Mail", augments={'Accuracy+28','"Dbl.Atk."+3','Attack+6',}},
    hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
    legs={ name="Odyssean Cuisses", augments={'Accuracy+9 Attack+9','"Dbl.Atk."+4','Accuracy+1','Attack+7',}},
    feet="Flam. Gambieras +2",
    neck="Abyssal Beads",
    waist="Ioskeha Belt +1",
    left_ear="Brutal Earring",
    right_ear="Cessance Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Petrov Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Damage taken-5%',}},
}
	
	sets.TP.AccuracyFull = {ammo="Yetshila",
    head="Flam. Zucchetto +2",
    body={ name="Valorous Mail", augments={'Accuracy+28','"Dbl.Atk."+3','Attack+6',}},
    hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
    legs={ name="Odyssean Cuisses", augments={'Accuracy+9 Attack+9','"Dbl.Atk."+4','Accuracy+1','Attack+7',}},
    feet="Flam. Gambieras +2",
    neck="Abyssal Beads",
    waist="Ioskeha Belt +1",
    left_ear="Brutal Earring",
    right_ear="Cessance Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Petrov Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Damage taken-5%',}},
}
				
	sets.TP.DT = {ammo="Staunch Tathlum",
    head={ name="Valorous Mask", augments={'Attack+25','Weapon skill damage +4%','CHR+10','Accuracy+2',}},
    body="Sulevia's Plate. +2",
    hands="Sulev. Gauntlets +2",
    legs="Sulev. Cuisses +2",
    feet="Sulev. Leggings +2",
    neck="Loricate Torque +1",
    waist="Ioskeha Belt +1",
    left_ear="Genmei Earring",
    right_ear="Etiolation Earring",
    left_ring="Defending Ring",
    right_ring="Vocane Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Damage taken-5%',}},
}

				  
	
	
	--Weaponskill Sets--
	sets.WS = {}			
	  		  
	sets.Resolution = {    ammo="Knobkierrie",
    head="Ratri Sallet",
    body="Ignominy Cuirass +2",
    hands={ name="Valorous Mitts", augments={'Weapon skill damage +3%','STR+5','Attack+6',}},
    legs={ name="Fall. Flanchard +2", augments={'Enhances "Muted Soul" effect',}},
    feet="Sulev. Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Petrov Ring",
    back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+5','Weapon skill damage +10%',}},
}
	
	sets.Scourge = {ammo="Knobkierrie",	
			    head=WSD_Head,neck="Fotia Gorget",ear1="Ishvara earring", ear2="Telos earring",
			 	body="Ignominy cuirass +3",hands="Odyssean gauntlets",ring1="Petrov ring",ring2="Rajas ring",
			   	back=STR_Back,waist="Fotia belt",legs=WSD_Legs,feet={ name="Valorous Greaves", augments={'Accuracy+24','"Dbl.Atk."+4','Attack+4',}},}
				
	sets.Shockwave =  {ammo="Knobkierrie",
			    head=WSD_Head,neck="Fotia Gorget",ear1="Brutal earring",ear2="Moonshade earring",
			 	body={ name="Valorous Mail", augments={'Accuracy+24','"Dbl.Atk."+5','DEX+10',}},hands="Odyssean gauntlets",ring1="Niqmaddu ring",ring2="Regal ring",
				back=STR_Back,waist="Fotia belt",legs=WSD_Legs,feet="Argosy sollerets +1"}
	
	sets.Torcleaver = {ammo="Knobkierrie",
    head={ name="Valorous Mask", augments={'Attack+25','Weapon skill damage +4%','CHR+10','Accuracy+2',}},
    body="Ignominy Cuirass +2",
    hands={ name="Valorous Mitts", augments={'Weapon skill damage +3%','STR+5','Attack+6',}},
    legs={ name="Fall. Flanchard +2", augments={'Enhances "Muted Soul" effect',}},
    feet="Sulev. Leggings +2",
    neck="Unmoving Collar +1",
    waist="Caudata Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Ishvara Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Petrov Ring",
    back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+5','Weapon skill damage +10%',}},
}
				 
	sets.Quietus = {ammo="Knobkierrie",
			    head="Ratri sallet",neck="Fotia gorget", ear1="Ishvara earring",ear2="Moonshade earring",
			    body="Ignominy cuirass +3",hands="Ratri gadlings",ring1="Niqmaddu ring",ring2="Regal ring",
			    back=STR_Back,waist="Fotia belt",legs="Ratri cuisses",feet="Sulevia's leggings +2"}
				
	sets.Insurgency = {ammo="Knobkierrie",
    head="Ratri Sallet",
    body="Ignominy Cuirass +2",
    hands="Ratri Gadlings",
    legs="Ratri Cuisses",
    feet="Sulev. Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Hetairoi Ring",
    back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+5','Weapon skill damage +10%',}},
}
				
	sets.Entropy = {ammo="Pemphredo tathlum",
			    head="Ignominy burgonet +3",neck="Fotia gorget", ear1="Brutal earring",ear2="Moonshade earring",
			    body="Ignominy cuirass +3",hands="Regal captain's gloves",ring1="Niqmaddu ring",ring2="Mujin band",
			    back=INT_Back,waist="Fotia belt",legs="Ignominy flanchard +3",feet="Flamma gambieras +2"}
				
	sets.CR = {ammo="Knobkierrie",
    head="Ratri Sallet",
    body="Ignominy Cuirass +2",
    hands="Ratri Gadlings",
    legs="Ratri Cuisses",
    feet="Sulev. Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Hetairoi Ring",
    back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+5','Weapon skill damage +10%',}},
}
    
	sets.Cata = {ammo="Knobkierrie",
    head="Ratri Sallet",
    body="Ignominy Cuirass +2",
    hands="Ratri Gadlings",
    legs="Ratri Cuisses",
    feet="Sulev. Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Hetairoi Ring",
    back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+5','Weapon skill damage +10%',}},
}
	
	sets.Infernal = {ammo="Knobkierrie",
			    head="Pixie hairpin +1",neck="Deviant necklace",ear1="Friomisi earring",ear2="Crematio earring",
			 	body="Founder's breas	late",hands="Founder's Gauntlets",ring1="Shiva ring +1",ring2="Archon ring",
			   	back=WSD_Back,waist="Eschan stone",legs="Eschite cuisses",feet="Founder's greaves"}
	
	sets.Herculean = {ammo="Knobkierrie",
			    head="Jumalik helm",neck="Deviant necklace",ear1="Friomisi earring",ear2="Crematio earring",
			 	body="Founder's breastplate",hands="Founder's Gauntlets",ring1="Shiva ring +1",ring2="Acumen ring",
			   	back=WSD_Back,waist="Eschan stone",legs="Eschite cuisses",feet="Founder's greaves"}
				
	sets.Savage = {ammo="Knobkierrie",
			    head=WSD_Head,neck="Fotia Gorget",ear1="Ishvara earring",ear2="Moonshade earring",
			 	body="Ignominy cuirass +3",hands="Odyssean gauntlets",ring1="Niqmaddu ring",ring2="Regal ring",
			   	back=STR_Back,waist="Grunfeld rope",legs=WSD_Legs,feet="Sulevia's leggings +2"}
				
	sets.Vorpal = {ammo="Yetshila",
			    head=Acc_Head,neck="Fotia Gorget",ear1="Cessance earring",ear2="Moonshade earring",
			 	body="Argosy hauberk +1",hands="Argosy mufflers +1",ring1="Niqmaddu ring",ring2="Begrudging ring",
			   	back="Ankou's Mantle",waist="Fotia belt",legs="Ignominy flanchard +3",feet={ name="Valorous Greaves", augments={'Accuracy+24','"Dbl.Atk."+4','Attack+4',}},}
	
	sets.Upheaval = {ammo="Knobkierrie",
			     head=WSD_Head,neck="Fotia gorget",ear1="Moonshade earring",ear2="Cessance earring",
			 	 body="Ignominy cuirass +3",hands="Sulevia's gauntlets +2",ring1="Niqmaddu ring",ring2="Regal ring",
			   	 back=WSD_Back,waist="Ioskeha belt",legs="Ignominy flanchard +3",feet="Sulevia's leggings +2"}
				 
	sets.FellCleave = {ammo="Knobkierrie",
			    head=WSD_Head,neck="Fotia gorget",ear1="Ishvara earring",ear2="Moonshade earring",
			 	body="Ignominy cuirass +3",hands="Odyssean gauntlets",ring1="Niqmaddu ring",ring2="Regal ring",
			   	back=STR_Back,waist="Fotia belt",legs="Argosy breeches +1",feet="Sulevia's leggings +2"}
	
	--Job Ability Sets--
	
	sets.JA = {}	
			
			
			
			
	--Precast Sets--
	sets.precast = {ammo="Impatiens",head="Carmine mask",ear1="Loquacious earring",body="Odyssean chestplate",hands="Leyline gloves",ring1="Weatherspoon ring",
				ring2="Kishar ring",waist="Witful belt",legs="Eschite cuisses",feet="Carmine greaves +1"}
					
	sets.precast.dark = {ammo="Impatiens",head="Carmine mask",ear1="Loquacious earring",body="Odyssean chestplate",hands="Leyline gloves",ring1="Weatherspoon ring",
				ring2="Kishar ring",waist="Witful belt",legs="Eschite cuisses",feet="Carmine greaves +1"}
					
	sets.Absorb = {ammo="Pemphredo tathlum",head="Ignominy burgonet +3",neck="Erra Pendant",ear1="Dark earring",ear2="Hirudinea earring",
			 	 body="Carmine scale mail",hands="Pavor Gauntlets",ring1="Evanescence ring",ring2="Kishar ring",
			   	 back="Chuparrosa mantle",waist="Eschan stone",legs="Eschite cuisses",feet="Ratri sollerets"}
	
	sets.Dark = {ammo="Pemphredo tathlum",head="Ignominy burgonet +3",neck="Erra Pendant",ear1="Dark earring",ear2="Hirudinea earring",
			 	 body="Carmine scale mail",hands="Fallen's finger gauntlets +1",ring1="Evanescence ring",ring2="Stikini ring",
			   	 back="Niht mantle",waist="Eschan stone",legs="Eschite cuisses",feet="Ignominy sollerets +1"}
	
	sets.Drain = {ammo="Sapience Orb",
    head="Pixie Hairpin +1",
    body={ name="Found. Breastplate", augments={'Accuracy+15','Mag. Acc.+15','Attack+15','"Mag.Atk.Bns."+15',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+14','Mag. Acc.+13','"Mag.Atk.Bns."+13','"Fast Cast"+2',}},
    legs="Eschite Cuisses",
    feet="Bale Sollerets +2",
    neck="Erra Pendant",
    waist="Eschan Stone",
    left_ear="Loquac. Earring",
    right_ear="Hermetic Earring",
    left_ring="Kishar Ring",
    right_ring="Archon Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Damage taken-5%',}},
}
	
	sets.Drain3 = {ammo="Sapience Orb",
    head="Pixie Hairpin +1",
    body={ name="Found. Breastplate", augments={'Accuracy+15','Mag. Acc.+15','Attack+15','"Mag.Atk.Bns."+15',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+14','Mag. Acc.+13','"Mag.Atk.Bns."+13','"Fast Cast"+2',}},
    legs="Eschite Cuisses",
    feet="Bale Sollerets +2",
    neck="Erra Pendant",
    waist="Eschan Stone",
    left_ear="Loquac. Earring",
    right_ear="Hermetic Earring",
    left_ring="Kishar Ring",
    right_ring="Archon Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Damage taken-5%',}},
}
	
end



function precast(spell)
	if spell.action_type == 'Magic' then
		if spell.skill == 'Dark Magic' then
			equip(sets.precast.dark)
			send_command('@input /echo Dark FC Set')
		else
			equip(sets.precast)
			send_command('@input /echo Precast Set')
		end
	end	
	
	if spell.english == 'Resolution' then
			equip(sets.Resolution)			
			send_command('@input /echo Resolution Set')					
		elseif spell.english == 'Scourge' then		
			equip(sets.Scourge)
			send_command('@input /echo Scourge Set')	
		elseif spell.english == 'Catastrophe' then		
			equip(sets.Cata)
			send_command('@input /echo Catastrophe Set')			
		elseif spell.english == 'Shockwave' then
			equip(sets.Shockwave)
			send_command('@input /echo Shockwave Set')
		elseif spell.english == 'Torcleaver' then
			equip(sets.Torcleaver)
			send_command('@input /echo Torcleaver Set')
		elseif spell.english == 'Quietus' then
			equip(sets.Quietus)
			send_command('@input /echo Quietus Set')
		elseif spell.english == 'Entropy' then
			equip(sets.Entropy)
			send_command('@input /echo Entropy Set')
		elseif spell.english == 'Cross Reaper' then
			equip(sets.CR)
			send_command('@input /echo CR Set')
		elseif spell.english == 'Insurgency' then
			equip(sets.Insurgency)
			send_command('@input /echo Insurgency Set')
		elseif spell.english == 'Infernal Scythe' then
			equip(sets.Infernal)
			send_command('@input /echo Infernal Set')
		elseif spell.english == 'Herculean Slash' then
			equip(sets.Herculean)
			send_command('@input /echo Herculean Set')
		elseif spell.english == 'Fell Cleave' then
			equip(sets.FellCleave)
			send_command('@input /echo Fell Cleave Set')
		elseif spell.english == 'Upheaval' then
			equip(sets.Upheaval)
			send_command('@input /echo Upheaval Set')			
		elseif spell.english == 'Savage Blade' then
			equip(sets.Savage)
			send_command('@input /echo Savage Blade Set')
		elseif spell.english == "Vorpal Blade" then		
			equip(sets.Vorpal)			
		elseif spell.english == 'Last Resort' then
			equip({back=="Ankou's mantle",feet="Fallen's sollerets +1"})
		elseif spell.english == 'Diabolic Eye' then
			equip({hands="Fallen's finger gauntlets +1"})		
		elseif spell.english == "Dark Seal" then
			equip({head="Fallen's burgeonet +1"})
		elseif spell.english == "Arcane Circle" then
			equip({feet="Ignominy sollerets +1"})
		elseif spell.english == "Weapon Bash" then
			equip({hands="Ignominy gauntlets +2"})
		elseif spell.english == "Nether Void" then
			equip({legs="Heathen's flanchard +1"})
		elseif spell.english == "Blood Weapon" then
			equip({body="Fallen's cuirass +1"})
		elseif spell.english == 'Lunge' or spell.english == 'Swipe' then
			equip(sets.Infernal)
			send_command('@input /echo Lunge Set')
	end	
	
end
	
function midcast(spell,act)
	if spell.skill == 'Dark Magic' then
		if Absorb_Spells:contains(spell.name) then
			equip(sets.Absorb)
			send_command('@input /echo Absorb Set')
			if spell.name == "Absorb-TP" then
				equip({hands="Bale gauntlets +2"})
			end
			if buffactive["Dark Seal"] then
				equip({head="Fallen's burgeonet +1"})
				send_command('@input /echo DS Head')
			end
			if buffactive["Nether Void"] then
				equip({legs="Heathen's flanchard +1"})
				send_command('@input /echo NV Legs')
			end
			weathercheck(spell.element)
		elseif Drain_Spells:contains(spell.name) then
			equip(sets.Drain)
			send_command('@input /echo Drain Set')
			if buffactive['Dark Seal'] then
					equip({head="Fallen's burgeonet +1"})
					send_command('@input /echo DS Head')
			end
			if buffactive['Nether Void'] then
				equip({legs="Heathen's flanchard +1"})
				send_command('@input /echo NV Legs')
			end
			weathercheck(spell.element)
		elseif spell.name == "Dread Spikes" then
			equip(sets.Dark)
			equip({body="Bale cuirass +2"})
			send_command('@input /echo Dread Spikes Set')
		elseif spell.name == "Endark II" then
			equip(sets.Dark)
			send_command('@input /echo Endark Set')
		elseif spell.name == "Drain III" then
			equip(sets.Drain3)
			send_command('@input /echo Drain III Set')
		else
			equip(sets.Dark)
			send_command('@input /echo Dark Set')
			weathercheck(spell.element)
		end
	elseif spell.skill == 'Enfeebling Magic' then
	elseif spell.skill == 'Elemental Magic' then
	end
end

function aftercast(spell)
	if player.status == 'Engaged' then
		if player.equipment.main == 'Anguta' then			
			equip(sets.TP[sets.TP.index[TP_ind]])
			send_command('@input /echo Anguta Set')
		else
			equip(sets.TP[sets.TP.index[TP_ind]])
			send_command('@input /echo TP Set')
		end
		if Killer_Mode == 1 and buffactive["Arcane Circle"] then			
			equip({body="Founder's breastplate"})
			send_command('@input /echo Killer TP Set')		
		end
	else
		if Gear_Debug == 0 then
			equip(sets.Idle.Standard)
			send_command('@input /echo Idle Set')
		else
		end
	end
end

function status_change(new,old)
	if new == 'Engaged' then
		equip(sets.TP[sets.TP.index[TP_ind]])
	else
		equip(sets.Idle.Standard)
	end
end

function self_command(command)	
	if command == 'equip TP set' then
		if player.equipment.main == 'Anguta' then
			TP_ind = 3
			equip(sets.TP[sets.TP.index[TP_ind]])
			send_command('@input /echo Anguta Set')
		else
			TP_ind = 1
			equip(sets.TP[sets.TP.index[TP_ind]])
			send_command('@input /echo TP Set')
		end
		
		if Killer_Mode == 1 and buffactive["Arcane Circle"] then			
			equip({body="Founder's breastplate"})
			send_command('@input /echo Killer TP Set')		
		end
		
	elseif command == 'equip Idle set' then		
		equip(sets.Idle.Standard)
		send_command('@input /echo Idle Set')
	elseif command == 'equip DW set' then		
		TP_ind = 2		
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command('@input /echo DW Set')
	elseif command == 'equip DT set' then		
		TP_ind = 6		
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command('@input /echo DT Set')	
	elseif command == 'equip DTAM set' then		
		TP_ind = 7		
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command('@input /echo DTAM Set')		
	elseif command == 'equip Acc_Lite set' then		
		TP_ind = 4		
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command('@input /echo Acc_lite Set')				
	elseif command == 'change Killer mode' then
		if Killer_Mode == 0 then
			Killer_Mode = 1
			send_command('@input /echo Killer Mode Set to 1')
		else
			Killer_Mode = 0
			send_command('@input /echo Killer Mode Set to 0')
		end
	elseif command == 'change debug mode' then
		if Gear_Debug == 1 then
			Gear_Debug = 0
			send_command('@input /echo Debug Mode Set to 0')
		else
			Gear_Debug = 1
			send_command('@input /echo Debug Mode Set to 1')
		end	
	end
end

windower.register_event('zone change', function()
    equip(sets.Idle.Standard)	
end)

function weathercheck(spell_element)
	if spell_element == world.weather_element or spell_element == world.day_element then
		equip({waist="Hachirin-no-Obi"})
		send_command('@input /echo Using Element Obi')
	else		
	end
end