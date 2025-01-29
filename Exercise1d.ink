/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)

{&it's morning | it's noon | it's evening}  
this is a loop, the pipes between options create the cycle, and the & makes it so the options cycle through. Without the & it will stop at the final option. 

sections are contained within {} 
ex: -time == 0:
    ~return "morning"
    - reads as if
    == reads as is
    : reads as then
    so full function reads as: if time is 0 then the player will see morning

VAR time = -1 //  0 Morning, 1 Noon, 2 Night




-> seashore

== seashore ==
You are sitting on the beach. 

it is {advance_time()}

+ [stoll down the beach] -> beach2
-> DONE


== beach2 ==
This is further down the beach.

it is {advance_time()}
* {time==1} [pick up some seashells] -> shells 
+ [stroll back up the beach] -> seashore

== shells ==
You pick up the shells
-> beach2

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
        
    ~ return time
    
    */ 
    
    VAR time = -1 // 0 morning, 1 afternoon, 2 night
    
    -> intro 
    == intro ==
    The town of Wispburough always seemed to be a bit out of the ordinary. Odd happenings all around. So what better a place to start an ameture ghost hunting service than the haunting capital of the tristate area. 
    * [head out to town in search of leads] -> forest_edge
    
    == forest_edge == 
    A co-worker of yours mentioned something about weird noises coming from the woods near their house, so that'd probably be the best place to start. Since it's {adv_time()} you should be able to find something good!
    *{time == 0} [Looking around you notice a residue at the base of a tree at the very edge of the woods. Leaning down to inspect it further you notice it's ectoplasm.] -> day_woods
    *{time == 1} [You don't see any tell tale signs of hauntings, but maybe the patrons of the local diner could have an idea] -> diner
    *{time == 2} [looking through the darkness you notice something shifting.] -> night_woods
    
   == day_woods ==
   You wander the woods for what feels like forever. 
  + [as you wander the sun begins to dip down] -> night_woods
   
   == diner ==
   Walking into the Rusty Spork you notice {& Diana, a friendly older waitress | Sean, the lackadaisical line cook who always saves you makes sure to save you an extra fry or two | Tia, a buddy of yours from highschool working register}. 
   "how can I help you?" {& she | he | she} asks, as you catch {& her | his | her} attention. 
   + ["I was wondering if you'd heard anything about the woods recently?"] -> help
   + ["Nothin much just up to some very important ghost hunting. No biggie"] -> help 
   * ["Just in the mood for some world famous Rusty Spork apple pie."] -> pie
   
   == help ==
   {& Diana | Sean | Tia} chuckles for a moment, "Well I've heard about some spooky happenings around the woods lately, mostly at night. If you don't mind staying up, then should be the best time to find anything." 
   + ["Thanks!"] -> salt
   + ["I should get going then!] -> salt 
   
   == salt == 
   "Wait! before you go take this!" {& Diana | Sean | Tia} says, holding out a large container of table salt. 
   * ["table salt? what for?"] -> salt_explanation
   + ["good idea! Can't leave without it!"] -> salt_obtained
   
   == salt_explanation ==
  "They say if you encase a spirit in a circle of salt it'll trap it! We have enough here anyways, no one will notice it's missing." 
  + you take the salt -> salt_obtained
   
  == salt_obtained ==
  You've got salt! 
  * [who knew such a little mineral could pack so much punch] -> night_woods
   == pie ==
   You pay for and enjoy a delicious slice of apple pie! However, break time is over and you have a ghost to catch. 
   * ["have you heard about anything odd recently?"] -> help
   
   == night_woods ==  
 Moving deepr into the woods you follow odd rustling sounds and mysterious flares of light until you come across a clearing. You see the nearly transparent outline of a young man standing in the center. If you used some salt, maybe you could keep the spirit from running and get some information. 
* {salt_obtained} [You dig out the salt from the diner and swiftly make a salt circle around the spirit] -> speak
+ [You run towards the spirit hoping to somehow catch it] ->  no_luck 

    
== speak ==    
    The ghost looks unamused as he wavers in and out of transparency. Now the real investigaiton could start. 
    -> END
    
  == no_luck ==  
    Just as you're about to reach the ghost it dissipates, and you're left standing in an empty clearing. Maybe it'd be better to try again tomorrow. 
    -> forest_edge
    
  == function adv_time ==
    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "morning"
        
        - time == 1:
            ~ return "afternoon"
        
        - time == 2:
            ~ return "night"
    
    }
    
        
    ~ return time
    
    
    
    
    
    
    
    
    
    
    
    
    
