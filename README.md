
*Please DO NOT CHECK the references or other branches BEFORE following the exercise steps*

---

OEDEPuSS - Gilded Hose
===

This version of the Gilded Hose is complementary of the OEDEPuSS Workshop presented by [Fabricio Buzeto](http://about.buzeto.com). Please follow the steps here described.

The idea of this version of Gilded Rose is to help excercise concepts of code quality in legacy code and is composed by 3 exercises of 30 minutes. To follow the excercises you must checkout the branches of each step inside each block as follows.

As you progress, new instructions will be presented.

First you must clone the repository and make sure your environment is properly set up.

    git clone git@github.com:nuk/GildedRose-Kata.git

B-1-0
======

Your Task, for now is to read this code and try to understand what if wants to accomplish.

Simple right? You have 5 minutes to do that. So hurry up!

----

B-1-1
======

Let's check if you got the right idea. The head manager of the Gilded Rose wrote the following letter describing why they acquired this code. 

*Hi and welcome to team Gilded Rose.*

*As you know, we are a small inn with a prime location in a prominent city ran by a friendly innkeeper named Allison.  We also buy and sell only the finest goods. Unfortunately, our goods are constantly degrading in quality as they approach their expiration date.*

*We have a system in place that updates the inventory information for us. It was developed by a no-nonsense type named Leeroy, who has moved on to new [ad]ventures. Your task is to add new feature to our system so that we can begin selling a new category of items.*

First lets review what our system does today:

  - All items have a `sell_in` value which denotes the number of days we have to
    sell the item

  - All items have a `quality` value which denotes how valuable the item is

  - At the end of each day our system lowers both values for every item

Pretty simple, right? Well this is where it gets interesting:

  - Once the sell by date has passed, `quality` degrades twice as fast

  - The `quality` of an item is never negative

  - "Aged Brie" actually increases in `quality` the older it gets

  - The `quality` of an item is never more than 50

  - "Sulfuras", being a legendary item, never has to be sold or decreases in
    `quality`

  - "Backstage passes", like aged brie, increases in `quality` as it's `sell_in`
    value approaches; `quality` increases by 2 when there are 10 days or less
    and by 3 when there are 5 days or less but `quality` drops to 0 after the
    concert


Quite simple right? Does it match what you figured out in the first part? Hope you're not disapointed by now.

After this quick explanation (hope took you less than 5 minutes) it's time to assing your task. Here is the head manager again:

*We have recently signed a supplier of conjured items. This requires an update to our system as follows:*

  - "Conjured" items degrade in `quality` twice as fast as normal items

*Feel free to make any changes to the `update_quality` method and add any new code as long as everything still works correctly. However, do not alter the `Item` class or `items` property as those belong to the goblin in the corner who will insta-rage and one-shot you as he doesn't believe in shared code ownership (you can make the `update_quality` method and `items` property static if you like, we'll cover for you).*

*Just for clarification, an item can never have its quality increase above 50, however "Sulfuras" is a legendary item and as such its quality is 80 and it never alters.*

[Source](http://iamnotmyself.com/2011/02/13/refactor-this-the-gilded-rose-kata/)


Now yout have 15 minutes to achieve your goal. 

----

Have you finished?

Lets take five minutes to ask ourselves some questions.

 - Is it ready ?
  - Have you finished your task ?
  - How confident are you to deploy it ?
  - Will the new feature work properly ?
  - Will it affect in any way older code ?
 - Was it easy and clear ? 
  - Did you knew where to change and why?
  - Did you knew how to ensure that it worked?
- What do you think should be the next step ?
  - Is is ready to take in new features ?
  - How dificult would for others to work with this code ?

----

B-2-0
======

Ready for the next step ?

Just change to the `2-0` branch by running the following command.

    $ git checkout origin/2-0


----

B-3-0
======

Are you sure you should be at this step?

Who am I to judge you, just go to the `3-0` branch using the following command.

    $ git checkout origin/3-0

----

This code is based on the Gilded Rose at https://github.com/qw3r/GildedRose
  
based on the code at https://github.com/professor/GildedRose
  
based on the code at https://github.com/NotMyself/GildedRose

referenced at https://github.com/sandromancuso/Gilded-Rose-Kata
