var player = global.name
text = [
	//Room 1	
	//crackling sound
    { speaker: "Artemis", message: "You made it through the first layer. Impressive, though I expected nothing less.", portrait: artemis_talking },
	{ speaker: "Artemis", message: "The deeper you go, the more hostile it gets. The People have had centuries to fortify their tunnels. What you just saw? That was just the beginning.", portrait: artemis_talking },
	//faint hum of machinery
	{ speaker: "Artemis", message: "My scans are picking up something unusual ahead. Structured walls. Organized patrol routes. They are not just hiding down here, they are thriving."
, portrait: artemis_thinking},
	{ speaker: "Artemis", message: "Stay sharp. The gold is close, and so are they.", portrait: artemis_talking},
	//transmission ends--------------
	//explosion echoies in the distance
	{ speaker: "Artemis", message: "Turrets. Interesting. They have automated their defenses, which means they anticipated company eventually."
, portrait: artemis_thinking},
	
	{ speaker: "Artemis", message: "Here is what my research tells me: the deeper layers were designed to be impossible for Mud People to navigate. No oxygen masks, no heat resistance, no way of surviving the pressure. And yet, here you are.", portrait: artemis_talking},
	// papers shuffling
	{ speaker: "Artemis", message: "I intercepted a fairy communication signal just now. They know someone is down here. They do not know it is you yet, but Butler, they are scared. And scared people make mistakes."
, portrait: artemis_thinking},
	
	{ speaker: "Artemis", message: "Use that. The gold is one layer away and so is something scarier. Push forward."
, portrait: artemis_talking},
//transmission ends-----------------
//[Long pause before Artemis speaks]

	{ speaker: "Artemis", message: "I will be honest with you. That level was not supposed to be survivable."
, portrait: artemis_thinking},
//His voice is quieter now. Genuine.

	{ speaker: "Artemis", message: "The red light entity, the moving platforms, the laser grid... that is not standard fairy security. They escalated specifically because of you. You are getting to them, Butler."
 ,portrait: artemis_thinking},
 //[A slow breath]

	{ speaker: "Artemis", message: "I have been running the numbers and the fairy you are about to face is not just a guard. They are a commander. One of the People who actually remembers the war, who chose to stay underground rather than ever trust a Mud Person again."
, portrait: artemis_thinking},
	{ speaker: "Artemis", message: "They will not go down easy. But you already knew that.", portrait: artemis_talking},
	//[Pause]
	{ speaker: "Artemis", message: "The gold we came for is real. But whatever information this fairy is carrying... I have a feeling it might be worth even more."
, portrait: artemis_talking},
	{ speaker: "Artemis", message: "One last level. Do not let me down.", portrait: artemis_talking},
	//Transmission ends-------
	//END
	{ speaker: "Fairy", message: "Butler… We’ve been following your journey. Tracking your master. Artemis Fowl the II knows no bounds.", portrait: fairy},
	//(Pause)
	{ speaker: "Fairy", message: "We understand you have come for the gold… and that our civilization is at risk even after you have gotten past all our defenses.", portrait: fairy},
	//[Weakly]
	{ speaker: "Fairy", message: "All we wanted was peace… to coexist with the Mud People. But alas, it seems even as centuries and eons pass, the struggle will continue.", portrait: fairy},
	//*at peace with self*
	{ speaker: "Fairy", message: "We may not share the same blood, but we do live on the same planet. We had though maybe perhaps in some distance future we could coexist… however I have realized now this will not be the case", portrait: fairy},
	//[Long pause]
	{ speaker: "Artemis", message: "...Hm.", portrait: artemis_thinking},
	// [Clears throat]
	{ speaker: "Artemis", message: "Go for the main objective. Disregard any other information, and eliminate any distractions. Secure the gold, Butler. ", portrait: artemis_angry}
	];

text_current = 0;
text_last = 20;
text_width = 900;
text_x = 50
text_y = 400;
char_current = 1;
char_speed = 0.25;

text[text_current].message = string_wrap(text[text_current].message, text_width);