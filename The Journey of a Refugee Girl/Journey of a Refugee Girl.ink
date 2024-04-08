<B><center> By Anika Falkenberg, Maria Kutepova, Lotte Telnekes, and Josie Wisowaty</b>  </center>


<center><i>A Project for Software and Data as Culture, University of Groningen, 2024 </i>  </center>


In the quiet town of Eldoria, where everyday life seems peaceful and comfortable, you step into the worn-out sneakers of Aiden, a teenager who feels comfortable in this place and loves it wholeheartedly. The air in the town is filled with the subtle aroma of street vendors' delicacies, and laughter echoes through the cobbled streets.
<i> Are you ready to step into Aiden’s shoes?</i> 

* [WALK HOME] -> House


=== House === 
#IMAGE: images/house.png
<br>
After walking the streets, you arrive home. Once you enter the house, you immediately hear the TV. Dad always kept up with the news, talking about it day and night. But today… something felt off. He was too worried…

<b>Dad:</b> “Turn up the TV, please!” 

<b> Mom:</b> “Do you think something’s up? Darling, could you fix some tea for your dad? He seems quite anxious today…” 

<i> I hope this tea helps Dad unwind. Maybe he had a rough day at work.  </i>
#IMAGE: images/making_tea.png

* [MAKE CUP OF TEA]
You make a warm cup of tea for your dad and carefully bring it into the living room. Walking in, you see your parents and brother Sami huddled around the TV. But something feels off. The air is tense, filled with the news anchor's voice echoing through the room.

<b> News anchor: </b> “In the event of an attack, stay indoors and take cover immediately.”       

Your family is caught up in the news, their faces shifting between worry and disbelief. Once so familiar, the living room now feels like the center stage for something unforeseen. The air is heavy with the sense of a looming crisis.

#IMAGE: images/TV_family.png

The news provides additional information about the safety measures. You also discover that marauders became active in specific neighborhoods. 

<i>Dad’s always had a sixth sense… I doubt tea’s going to ease his mind now. Or mine… What are you going to do?  </i>

- <b>This choice will impact your understanding of the unfolding crisis! </b> 

* [JOIN YOUR FAMILY IN THE LIVING ROOM] -> House.LivingRoom

* [RUN TO YOUR ROOM] -> House.Bedroom
<br>
= LivingRoom

 Once you step into the living room, your family's hushed conversation halts as they collectively turn their attention towards you. The gravity of the news lingers in the air, and dad gestures for you to join them on the couch. The television screen displays images and reports that hint at a crisis unfolding, leaving the family on edge.
 
 #IMAGE: images/TV_emergency.png

You get additional knowledge about the safety measures from the news. You also discover that in specific neighborhoods, marauders became active. 

<i> <b>You get the locations you should avoid.</i></b> <BR>

After sitting in the living room for a little, quitely taking in all the news, you decide to go to bed. -> Night_avoidlocations
<br>
= Bedroom
- <br>You slip away from the tension-filled living room. The news report's murmur fades as you dash to your room, finding a brief solace from the family's chatter. Spotting your bed, you dive into it, wanting to shut out the world's chaos just for a moment.

You look outside your window and see your friend Lyla passing by. She is going home after her volleyball training and has not seen the news yet. You shout out her name and tell her about what is happening. She reacts very calmly and gives you the location of a shelter that all her friends decided to use in case of emergency. 

 #IMAGE: images/Seeing_the_friend.png

<i><b> You get the shelter location. </b> </i> 

After pacing around your room for a while, you decide to go to bed. -> Night_shelter

=== Night_avoidlocations === 
<br>
You doze off into a restless sleep...
* BANG

Suddenly, there’s a loud bang, and everything goes dark. As you wake up, you hear a loud ringing in your ears. Covered in a layer of white dust, you stand up and take in the sights. Everything, every building, every tree, has collapsed, and you hope to everything you know that that’s not blood on what used to be that sidewalk you took to school every day. Heart racing, you struggle to keep your head straight, but you must do something… 

 #IMAGE: images/ruins_explosion.png

<I>My goodness..! Mom, dad? Sami?? </I>

Looking out from your room, which somehow got lucky and dodged the destruction, you can see the rest of your house is wrecked. It's a shocking sight. And beyond your doorstep, it's the same story—what used to be homes filled with life are now just heaps of rubble and broken concrete. Seeing your once familiar neighborhood turned into this mess feels surreal, leaving you frozen and unable to do much but stare at the aftermath. You attempt to move some of the debris, but your strength fails you, and your arms refuse to lift.

// Set up our variables
VAR clicks = 0
VAR text_to_show = ""

You decide to look around to find something that could help…
-> choice_select_loop

== function text_options()
// "shuffle once" randomly displays text that hasn't been shown
{ shuffle once:
	- A PIECE OF CLOTH 
	- A HAIRPIN
	- A SHOVEL
	}
~ return

== choice_select_loop
{| Is there more I can find?}
// use quotation marks to use the result text from the function, rather than the return variable (which is null in this case)
~ text_to_show = "{text_options()}"

 +{clicks<3} [{text_to_show}]{text_to_show}
    -> make_choice
 * -> break_loop


== make_choice
~ clicks ++
-> choice_select_loop

== break_loop

#IMAGE: images/obtaining_items.png

* [I THINK I HAVE GATHERED EVERYTHING] -> cloth


= cloth	
<i> These tools could become helpful later on... I should save them, but maybe I can already use the cloth and wrap it around my injured leg...? </i>

* [USE IT ON YOURSELF NOW] -> outside_avoidlocations
* [KEEP IT FOR NOW] -> outside_avoidlocations

=== outside_avoidlocations ===

After finding some items, you walk back and use your shovel to lift the smaller slabs until you notice an arm with a very familiar-looking ring. Finally, feeling some hope, you work to uncover your father. 
“I’ll get you some help, Dad! Don’t worry!” 

<B> Dad: </b> “Sweetheart… I’m sorry, but you have to go on without me… Take my ring… Find your mother and Sami… Promise me that you won’t just survive… You’ll live…” 

As your father closes his eyes one last time, you burst into tears and let out a wail. Exhausted, emotionally and physically, you look down and take his ring from his once warm hand. 
* [TAKE THE RING]

#IMAGE: images/taking_the_ring.png

<br> <i> <b> You obtained your father's ring </i></b>

- As you shakily stand up, you reminisce about simpler times. Never again will you hear your dad’s voice as he encourages you to pursue your dream of being a writer. Never again will you see your dad’s smile as he teased you when you whined about homework. Never again will you feel the comforting touch of your dad’s hugs when you cry after a hard day at school. Pushing down your remaining tears and sobs, you limp slightly away to assess the situation. You remember your brother saying he would meet his friends while your mother was at the market…

* [GO TO YOUR BROTHER'S FRIEND'S HOUSE] -> BrothersFriend_avoidlocations
* [GO TO THE MARKET] -> market_avoidlocations

=== BrothersFriend_avoidlocations ===

<i> You walk to the right, and the pain in your leg starts to numb. The white and beige sights seem to go on forever, and finally, you stumble upon a familiar silhouette in the distance: your brother Sami! 

“Sami! Are you alright? Thank god you’re here!”

You both wrap each other in a tight hug, and then, overwhelmed by the exhaustion you'd been holding back, you collapse to the ground together. After a moment, you let go, but your hands stay clasped, holding each other.


<b> Sami: </b> “You can’t imagine how happy I am to see you… Come on! Let’s head back! Some people found my friends and me, an organization, I don’t know! But they helped us find a shelter!” 


You follow him back to the shelter but you don’t forget to tell him, “Big bro… Dad… He’s…”. You also show him the ring. Thankfully, your brother got the message and gives you a side hug. 

#IMAGE: images/handing_brother_ring_2.png

<b> Sami: </b>“I… I hoped but…”

It looks like emotional suppression was a family trait. 

“Don’t worry… we’ll make him proud… And we’ll find mom!” 

* [RUN TO THE SHELTER]

When you get to the shelter, you see a few people, some sitting on the floor,  each with different injuries and tear-streaked faces. Your brother guides you to a woman in a uniform that's unfamiliar to you.

#IMAGE: images/rejected_from_safehouse.png

<b> Woman in uniform: </b> “Welcome. If you need anything, you can tell any of us, and we will do our best to help.” 
As she is about to continue, her colleague interrupts her.

<b> Colleague: </b>“There’s a bunch of people coming in! We may need to find another shelter!” 

<i>Luckily, you remember the news broadcast from a few hours ago. </i>

#IMAGE: images/remembering_dangerous_area.png

“I’m not sure, but I know we shouldn’t go to the area near the park. It’s too dangerous.” 

<i> Suddenly, you’re reminded of your mother. </i>

“We need to find Mom, Sami! We know that she won’t go there, but maybe we could find her somewhere nearby!” 

Your brother seems to agree, and you two plead to go out to find your mother. 

<b>Woman in uniform: </b> “Alright… But you must stick close to us!” 

At last, after some preparation, with you and your brother being given a bottle of water each, and some of the members of the organization head out. Though you’re apprehensive, you try to keep your spirits up, remembering to honor your father’s words.

-> DONE

=== market_avoidlocations === 

<i>Maybe I could find Mom in the market! Or at least find some salvageable food there!</i>

#IMAGE: images/walking_to_the_market.png

You walk to the left, and the pain in your leg starts to numb. The white and beige sights seem to go on forever, and finally, you reach the market. The food stands and trucks that used to be the heart of the lively atmosphere are now silent, the lack of sound deadening. 


// Set up our variables
VAR clicks2 = 0
VAR text_to_show2 = ""

 You decide to look around to see if there is anything useful…-> choice_select_loop2

== function text_options2()
// "shuffle once" randomly displays text that hasn't been shown
{ shuffle once:
	- TWO APPLES 
	- A BOTTLE OF WATER
	- A POCKET KNIFE
	}
~ return

== choice_select_loop2
{| Is there more I can find?}
// use quotation marks to use the result text from the function, rather than the return variable (which is null in this case)
~ text_to_show2 = "{text_options2()}"

 +{clicks2<3} [{text_to_show2}]{text_to_show2}
    -> make_choice2
 * -> break_loop2


== make_choice2
~ clicks2 ++
-> choice_select_loop2

== break_loop2

* [I THINK I HAVE GATHERED EVERYTHING] -> market_avoidlocations2

=== market_avoidlocations2 ===

After finding some items, you hear a familiar voice. 

“Please… help…” 

You walk towards the sound and shout, “Mom?! Where are you?” 

<b> Mom: </b>“The fabric shop…” 

You walk over as fast as you can to the fabric shop and find your mother leaning against the wall, her arm at a weird angle. You quickly kneel down, hugging her as tight as you can without hurting her. 

<b> Mom: </b>“You’re okay, honey! Thank god!” 

Both of you shudder against each other as you cry in each other’s arms. Thinking quickly, you use the pocket knife to cut some of the leftover fabric and wrap it around her broken arm.

* [PICK UP MORE FABRIC]

<i> <b> You take some more fabric and decide to keep it.</i></b>

You then collapse to the ground next to her, with all the exhaustion that you had now crashing over you. Letting your guard down, you tell your mother:

- “Mom… Dad… He’s…” 

* [SHOW YOUR MOM THE RING]

Thankfully, she understands and swallows harshly as she cups your face. 

<b> Mom: </b>“Don’t worry… We’ll find your brother… And we’ll get through this.”

<i>Luckily, you remember your conversation with your friend a few hours ago. </i> 

#IMAGE: images/remembering_other_safehouse.png

“I think there’s a shelter somewhere near the town square! My friend told me about it and she lives close by.” 

<i>Hopefully, she’s there safe and sound… </i>

“We could find our way over there! Maybe Sami is there too!”

Your mother agrees, and after you help her stand up, you two slowly make your way to the town square. 

Finally, you stumble upon a familiar silhouette in the distance: your friend Lyla! She runs over to you, and you hug her for a while before you separate. She gives your mother a small hug too, before she exclaims, 

<b> Lyla: </b> “Luckily, we talked about the shelter before huh! Anyways, come on! The shelter’s underneath!” 

When you get to the shelter, you see a few people, some sitting on the floor,  each with different injuries and tear-streaked faces.  Lyla leads you to the town’s mayor.

<b> Mayor: </b> “Welcome! Always happy to see more of us! Come in! Quickly!” 

At the same time, you notice a young boy being led in. His head had a cut which was profusely bleeding. You run over to him, your mother trailing behind you. With the piece of fabric you kept from before, you wrap it around his head like a bandage.

“It’s alright… It’ll stop hurting soon…” You continue comforting him. Meanwhile, your mother beams proudly at your actions. 

Lyla then comes up to you and offers an idea.

<b> Lyla: </b> “Hey, why don’t we try to find more supplies outside? We could probably find other people who need help, too!” 

“Yeah! Maybe we can find my brother too!” You and Lyla plead with your mother to let you go outside, and she allows it.

<b> Mom: </b> “You two better be careful, ok?!” 

<i>After hugging her and mentally preparing yourself, you and Lyla head out. Though you’re scared, you try to keep your spirits up, remembering to honor your father’s words.</i>

-> DONE

=== Night_shelter === 
<br>
You doze off into a restless sleep...
* BANG


Suddenly, there’s a loud bang, and everything goes dark. As you wake up, you hear a loud ringing in your ears. Covered in a layer of white dust, you stand up and take in the sights. Everything, every building, every tree, has collapsed, and you hope to everything you know that that’s not blood on what used to be that sidewalk you took to school every day. Heart racing, you struggle to keep your head straight, but you must do something… 

<I>My goodness..! Mom, dad? Sami?? </I>

Looking out from your room, which somehow got lucky and dodged the destruction, you can see the rest of your house is wrecked. It's a shocking sight. And beyond your doorstep, it's the same story—what used to be homes filled with life are now just heaps of rubble and broken concrete. Seeing your once familiar neighborhood turned into this mess feels surreal, leaving you frozen and unable to do much but stare at the aftermath. You attempt to move some of the debris, but your strength fails you, and your arms refuse to lift.


// Set up our variables
VAR clicks4 = 0
VAR text_to_show4 = ""

You decide to look around to find something that could help…
-> choice_select_loop4

== function text_options4()
// "shuffle once" randomly displays text that hasn't been shown
{ shuffle once:
	- A PIECE OF CLOTH 
	- A HAIRPIN
	- A SHOVEL
	}
~ return

== choice_select_loop4
{| Is there more I can find?}
// use quotation marks to use the result text from the function, rather than the return variable (which is null in this case)
~ text_to_show4 = "{text_options4()}"

 +{clicks4<3} [{text_to_show4}]{text_to_show4}
    -> make_choice4
 * -> break_loop4


== make_choice4
~ clicks4 ++
-> choice_select_loop4

== break_loop4

#IMAGE: images/obtaining_items.png

* [I THINK I HAVE GATHERED EVERYTHING] -> cloth2

= cloth2	

<i> These tools could become helpful later on... I should save them, but maybe I can already use the cloth and wrap it around my injured leg...? </i>

* [USE IT ON YOURSELF NOW] -> outsideshelther
* [KEEP IT FOR NOW] -> outsideshelther

=== outsideshelther ===
<br>
After finding some items, you walk back and use your shovel to lift the smaller slabs until you notice an arm with a very familiar looking ring. Finally feeling some hope, you work to uncover your father. 

“I’ll get you some help dad! Don’t worry!” 

<B> Dad: </b> “Sweetheart… I’m sorry but you have to go on without me… Take my ring… Find your mother and brother… Promise me that you won’t just survive… You’ll live…” 

As your father closes his eyes one last time, you burst into tears and let out a wail. Exhausted, emotionally and physically, you look down and take his ring from his once warm hand. 

* [TAKE THE RING]

#IMAGE: images/taking_the_ring.png

<br> <i> <b> You obtained your father's ring </i></b>

- As you shakily stand up, you reminisce on the simpler times. Never again will you hear your dad’s voice as he encouraged you to pursue your dream of being a writer. Never again will you see your dad’s smile as he teased you when you whined about homework. Never again will you feel the comforting touch of your dad’s hugs when you cried after a hard day at school. Pushing down your remaining tears and sobs, you limp slightly away to access the situation. You remember your brother saying that he was going to meet his friends while your mother was going to the market…

* [GO TO YOUR BROTHER'S FRIEND'S HOUSE] -> BrothersFriendshelter
* [GO TO THE MARKET] -> Market_shelter

=== BrothersFriendshelter ===


<i> You walk to the right, and the pain in your leg starts to numb. The white and beige sights seem to go on forever, and finally, you stumble upon a familiar silhouette in the distance: your brother Sami! 

“Sami! Are you alright? Thank god you’re here!”

You both wrap each other in a tight hug, and then, overwhelmed by the exhaustion you'd been holding back, you collapse to the ground together. After a moment, you let go, but your hands stay clasped, holding each other.


<b> Sami: </b> “You can’t imagine how happy I am to see you… Come on! Let’s head back! Some people found my friends and me, an organization, I don’t know! But they helped us find a shelter!” 


You follow him back to the shelter but you don’t forget to tell him, “Big bro… Dad… He’s…”. You also show him the ring. Thankfully, your brother got the message and gives you a side hug. 

#IMAGE: images/handing_brother_ring_2.png

<b> Sami: </b>“I… I hoped but…”

It looks like emotional suppression was a family trait. 

“Don’t worry… we’ll make him proud… And we’ll find mom!” 

* [RUN TO THE SHELTER]

When you get to the shelter, you see a few people, some sitting on the floor,  each with different injuries and tear-streaked faces. Your brother guides you to a woman in a uniform that's unfamiliar to you.

#IMAGE: images/rejected_from_safehouse.png

<b> Woman in uniform: </b> “Welcome. If you need anything, you can tell any of us, and we will do our best to help.” 
As she is about to continue, her colleague interrupts her.

<b> Colleague: </b>“There’s a bunch of people coming in! We may need to find another shelter!” 

<i>Luckily, you remember your conversation with your friend from a few hours ago. </i>

#IMAGE: images/remembering_other_safehouse.png

"I think there’s a shelter somewhere near the town square! My friend told me about it, and she lives close by.” 

<I> Hopefully, she’s there safe and sound… Suddenly, you’re reminded of your mother. </I>

“Maybe mom is over there, big bro!” 

Your brother seems to agree, and you two plead to go to the other shelter to find your mother. 

<b> Woman in uniform: </b>“Alright… But you must stick close to us!” 

At last, after some preparation, you and your brother are given a bottle of water each, and some of the organization members head out. Though you’re feeling uneasy, you try to keep your spirits up, remembering to honor your father’s words.

#IMAGE: images/walking_with_water_bottles.png 

 -> DONE

=== Market_shelter === 

<i> Maybe I could find mom in the market! Or at least find some salvageable food there! </i>

#IMAGE: images/walking_to_the_market.png

You walk to the left, and the pain in your leg starts to numb. The white and beige sights seem to go on forever, and finally, you reach the market. The food stands and trucks that used to be the heart of the lively atmosphere are now silent, the lack of sound deadening. 

// Set up our variables
VAR clicks3 = 0
VAR text_to_show3 = ""

 You decide to look around to see if there is anything useful…-> choice_select_loop3

== function text_options3()
// "shuffle once" randomly displays text that hasn't been shown
{ shuffle once:
	- TWO APPLES 
	- A BOTTLE OF WATER
	- A POCKET KNIFE
	}
~ return

== choice_select_loop3
{| Is there more I can find?}
// use quotation marks to use the result text from the function, rather than the return variable (which is null in this case)
~ text_to_show3 = "{text_options3()}"

 +{clicks3<3} [{text_to_show3}]{text_to_show3}
    -> make_choice3
 * -> break_loop3


== make_choice3
~ clicks3 ++
-> choice_select_loop3

== break_loop3

* [I THINK I HAVE GATHERED EVERYTHING] -> Market_shelter2

=== Market_shelter2 === 

After finding some items, you hear a familiar voice. 

“Please… help…” 

You walk towards the sound and shout, “Mom?! Where are you?” 

<b> Mom: </b>“The fabric shop…” 

You walk over as fast as you can to the fabric shop and find your mother leaning against the wall, her arm at a weird angle. You quickly kneel down, hugging her as tight as you can without hurting her. 

<b> Mom: </b>“You’re okay, honey! Thank god!” 

Both of you shudder against each other as you cry in each other’s arms. Thinking quickly, you use the pocket knife to cut some of the leftover fabric and wrap it around her broken arm.

* [PICK UP MORE FABRIC]

<i> <b> You take some more fabric and decide to keep it.</i></b>

You then collapse to the ground next to her, the exhaustion that you had compartmentalized now crashing over you. Letting your guard down, you tell your mother

- “Mom… Dad… He’s…” 

* [SHOW YOUR MOM THE RING]

Thankfully, she understands and swallows harshly as she cups your face. 

<b> Mom: </b>“Don’t worry… We’ll find your brother… And we’ll get through this.”

<i> Luckily, you remember the news broadcast from a few hours ago.</i>

“I’m not sure where to go but I know that we shouldn’t go to the area near the park. It’s too dangerous. Let’s walk around and find some help.” 

Your mother agrees and after helping her stand up, you two continue down the market street, all the while reminiscing about the simpler happier times that you’ve walked together. 

After some time, you stumble upon some people. Initially, you are wary after a long day, but after a closer look, you realize that some of these people are your neighbors. You and your mother and everyone else try to make the best of the situation and get to know each other. 

“Maybe we could all stick together and create our own makeshift shelter! After that, we could find the rest of our family!”

Thankfully, everyone agrees with your suggestion and the whole group makes your way together, trying to find a building they know has a basement or shelter. Eventually, you come across the once crowded school, and one of your new friends suggests finding the school bunker. Eventually, you find the bunker and using the previously obtained hairpin, you manage to pick the lock and all of you get inside. It is a tight fit but at least you’re all safe. 

Your new friend then suggests, 

<b> New friend: </b> “I think we should try to find more people. Hopefully, we can find a better shelter and find our family too.” 

<i>Suddenly, you are reminded of your missing brother. </i>

“Yeah! Maybe we can find my brother too!” 

You and your new friend plead with your mother to let you go outside and she allows it, 

<B> Mom: </b> “You two better be careful, ok?!” 

<i>After hugging her, and mentally preparing yourself, you and your new friend head out. Though you’re apprehensive, you try to keep your spirits up, remembering to honor your father’s words.</i>

#IMAGE: images/walking_with_water_bottles.png 

    -> DONE
    
-> END 
