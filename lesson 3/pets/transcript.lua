Hi everybody, and welcome to lesson three of  Practical Deep Learning for Coders. We did a  
quick survey this week to see how people feel that  the course is tracking and over half of you think  
it's about the right pace, and of the rest, some  of you think it's a bit slow and some of you think  
it's a bit… sorry… think it's a bit slow and some  of you think it's a bit fast. So, hopefully that's   about the best we can do generally speaking. The  first two lessons are a little more easy pacing  
for anybody who's already familiar with the basic  technology pieces, and then the later lessons get,  
you know, more into some of the foundations. Today  we're going to be talking about things like matrix  
multiplications and gradients and calculus  and stuff like that. So, for those of you  
who are more mathy and less computery you might  find this one more comfortable, and vice versa.
So remember that there is an official  course updates thread where you can see  
all the up-to-date info about everything you  need to know, and of course the course website  
as well. So by the time, you know, you watch  the video of the lesson it's pretty likely that,  
if you come across a question, or an issue,  somebody else will have, so definitely search  
the forum and check the facts first and then, of  course, feel free to ask a question yourself on  
the forum if you can't find your answer. One  thing I did want to point out which you'll  
see in the lesson thread and the course website  is there is also a Lesson Zero. Lesson Zero is  
based heavily on Radek’s book Meta Learning, which  internally is based heavily on all the things  
that I've said over the years about how to learn  fastai. It's… we try to make the course full of  
titbits about the science of learning itself  and put them into the course. It's a different  
course to probably any other you've taken and  it's, I strongly recommend watching Lesson Zero,  
as well. The last bit of Lesson Zero is about how  to set up a Linux box from scratch — which you can  
happily skip over unless that’s of interest — but  the rest of it is full of juicy information that I  
think you'll find useful. So the basic  idea of what to do, to do a fast.ai lesson  
is: watch the lecture and I generally, you  know, on the video, recommend watching it  
all the way through without stopping once and  then go back and watch it with lots of pauses,  
running the notebook as you go. Because otherwise  you're kind of like running the notebook   without really knowing where it's heading, if that  makes sense. And the idea of writing the notebook  
is, you know, there's a few notebooks you could go  through, so obviously there's the book! So going  
through chapter one of the book, going through  chapter two of the book as notebooks, running   every code cell and experimenting with inputs and  outputs to try and understand what's going on.  
And then trying to reproduce those results,  and then trying to repeat the whole thing  
with a different data set. And if you  can do that last step, you know, that's  
quite a stretch goal, particularly at the start of  the course, because there's so many new concepts   but that really shows that you… you've got it  sorted. Now, this third bit: “reproduce results”,  
I recommend using… you'll find in the fastbook  repo — so the repository for the book — there  
is a special folder called “clean”, and “clean”  contains all of the same chapters of the book  
but with all of the text removed — except  for headings — and all the outputs removed,  
and this is a great way for you to  test your understanding of the chapter,  
is… before you run each cell, try to  say to yourself, “okay, what's this for  
and what's it going to output? — if anything.”  And if you, kind of, work through that slowly…  
that's a great way… and any time you're not  sure, you can jump back to the version of   the notebook with the text to remind yourself  and then head back over to the clean version.
So, there's an idea for something which a lot of  people find really useful for self-study. I say  
self-study but, of course, as we've mentioned  before, the best kind of study is study done,  
to some extent, with others — for most people. You  know, the research shows that you're more likely  
to stick with things if you're doing it as kind of  a bit of a social activity. There are… the forums  
are a great place to find and create study groups,  and you'll also find on the forums a link to  
our Discord server. So… yes, our Discord server  where there are some study groups there as  
well. So, you know, in person study groups,  virtual study groups, are a great way to,  
you know, really make good progress and  find other people at a similar level to you.  
If there's not a study group going at your level,  in your area, in your time zone; create one,  
so just post something saying: Hey! Let's create  a study group. So this week there's been a lot  
of fantastic activity. I can't show all of it so,  what I did was, I used the summary functionality  
in the forums to grab all of the things with the  highest votes and so, I just quickly show a few   of those. We have a Marvel Detector created this  week. Identify your favorite marvel character.  
I love this: a rock, paper, scissors game where  you actually use pictures of the rock, paper,   scissors symbols — and apparently the computer  always loses, that's my favorite kind of game.  
There is a lot of Elon around, so very handy to  have an Elon Detector to, you know, either find  
more of him if that's what you need, or maybe less  of him. I thought this one was very interesting.  
I love these kind of really interesting ideas  there's like… “gee I wonder if this would work?”   Can you predict the average temperature  of an area based on an aerial photograph?  
And the… and apparently the answer is  yeah! Actually you can predict it pretty   well. Here in Brisbane, it was predicted,  I believe to within one and a half celsius.  
I think this student is actually a genuine  meteorologist, if I remember correctly – he   built a cloud detector. So, then, building on  top of the What's Your Favorite Marvel Character,  
there's now… also this is a Marvel  character. My daughter loves this one:   what dinosaur is this? And, I'm not as good about  dinosaurs as I should be. I feel like there's  
10 times more dinosaurs than there was when  I was a kid, so I never know their names,   so this is very handy. This is cool, choose your  own adventure, where you choose your path using  
facial expressions. And, I think this music  genre classification is also really cool.  
Brian Smith created a Microsoft Power App  application that actually runs on a mobile phone.  
That's pretty cool. Wouldn't be surprised to  hear that Brian actually works at Microsoft, so,   also an opportunity to promote his own stuff  there. I thought this art movement classifier  
was interesting in that, like, there's a really  interesting discussion on the forum about   what it actually shows, about similarities  between different art movements.  
And I thought this redaction detector project was  really… was really cool as well – and there's a  
whole tweet thread and blog post and everything  about this one particularly great piece of work.
Okay so I'm going to quickly show  you a couple of little tips before  
we kind of jump into the mechanics  of what's behind a neural network,   which is, I was playing a little bit with how do  you make your neural network more accurate during  
the week and so I created this Pet Detector.  And this pet detector is not just predicting…  
predicting dogs or cats but what breed is it.  That's obviously a much more difficult exercise.  
Now, because I put this out on HuggingFace Spaces,  you can download and look at my code, because,  
if you just click files and versions on the space  — which you can find a link on the forum and the   course website — you can see them all here  and you can download it to your own computer.
So I'll show you what I've got here.  Now one thing I'll mention is today  
I'm using a different platform, so in the past  I've shown you Colab and I've shown you Kaggle  
and we've also looked at doing stuff on your own  computer — not so much training models on your   computer, but using the models you've trained  to create applications. Paperspace is a another  
website — a bit like Kaggle and Google — but in  particular they have a product called Gradient  
Notebooks, which is — at least as I speak (and  things change all the time, so check the course  
website) — but, as I speak, in my opinion, is  by far the best platform for running this course  
and for, you know, doing experimentation. I'll  explain why as we go. So, why haven't I been  
using the past two weeks? Because I've been  waiting for them to build some stuff for us to  
make it particularly good and they just… they just  finished. So, I've been using it all week and it's   totally amazing. This is what it looks like…  so you've got a machine running in the cloud,  
but the thing that is very special about it is  it's a… it's a real… it's a real computer you're  
using. It's not like that kind of weird virtual  version of things that Kaggle or Colab has,  
so if you whack on this button down here  you'll get a full version of Jupyter Lab,  
or you can switch over to a full version of  classic Jupyter Notebooks. And, I'm actually  
going to do stuff in Jupyter Lab today because  it's a pretty good environment for beginners  
who are not familiar with the terminal — which  I know a lot of people in the course are in that   situation — you can do really everything kind of  graphically. There's a file browser, so here you  
can see I've got my pets repo. It's got a Git  repository thing, you can pull and push to Git.  
And then you can also open up a terminal,  create new notebooks and so forth. So what I  
tend to do with this is, I tend to go into a full  screen so it's kind of like its own whole IDE,  
and so you can see I've got here my terminal,  and here's my notebook. They have free  
GPUs and most importantly there's two  good features: one is that you can pay,  
I think it's eight or nine dollars a month  to get better GPUs, and basically as many as,   you know, as many hours as you want.  And they have persistent storage so,  
with Colab — if you've played with it — you  might have noticed it's annoying you have   to muck around with saving things to Google Drive  and stuff. On Kaggle there isn't really a way of,  
kind of, having a persistent environment,  whereas on Paperspace you have, you know,  
whatever you save in your storage it's going  to be there the next time you come… come back. So, I'm going to be adding walkthroughs  of all of this functionality,  
so look at… so if you're interested in really  taking advantage of this, check those out.
Okay so I think the main thing that I  wanted you to take away from Lesson Two  
isn't necessarily all the details of: how do you  use a particular platform to train models and  
deploy them into applications through JavaScript  or online platforms, but the key thing I wanted  
you to understand was the concept. There's really  two pieces: there's the training piece, and at the  
end of the training piece you end up with this  model.pkl file, right? And once you've got that,  
that's now a thing where you feed it inputs and  it spits out outputs based on that model that  
you trained, and then… so you don't need,  you know, because that happens pretty fast,   you generally don't need a GPU once you've got  that trained. And so then there's a separate step,  
which is deploying. So I'll show  you how I trained my pet classifier.  
So you can see I've got two IPython notebooks:  one is “app” which is the one that's going to  
be doing the inference in production; one is the  one where I train the model. So this first bit I'm  
going to skip over because you've seen it before,  I create my ImageDataLoaders, check that my data  
looks okay with show_batch, train a ResNet34  and I get 7% accuracy… so that's pretty good.
But check this out, there's a link here   to a notebook I created… (actually most  of the work was done by Ross Wightman)  
…where we can try to improve this  by finding a better architecture.  
There are, I think, at the moment — in the Pytorch  image models libraries — over 500 architectures  
and we'll be learning over the course, you know,  what they are? How they differ? But, you know,  
broadly speaking they're all mathematical  functions, you know, which are basically  
matrix multiplications and these non-linearities  such as RELUs — that we'll talk about today.  
Most of the time those details don't matter, what  we care about is three things: How fast are they?   How much memory do they use? and how accurate are  they? And so, what I've done here with Russ is  
we've grabbed all of the models from Pytorch image  models and you can see all the code we've got  
(there's very, very little  code) to create this plot.
Now… (my screen resolution resolution's a bit,  there we go, let's do that) And so, on this plot,  
on the x-axis we've got seconds per sample:  so how fast is it - so, to the left is better,  
it's faster. And on the right is how accurate  is it, so how accurate was it on ImageNet  
in particular. And so, generally speaking,  you want things that are up towards the top  
and left. Now we've been mainly working with  ResNet and you can see down here, here's ResNet18.  
Now resonant 18 is a particularly small and fast  version for prototyping. We often use ResNet34,  
which is this one here. And you can see this,  kind of like, classic model that's very widely  
used (actually nowadays isn't the state of the  art anymore.) So we can start to look up at these  
ones up here and find out some of these better  models. The ones that seem to be the most accurate  
and fast are these LeVit models, so I tried them  out on my pets and I found that they didn't work  
particularly well. So I thought, okay, let's  try something else out; so next up I tried  
these ConvNeXT models. And this one into  here, it was particularly interesting,  
it's kind of like super high accuracy  — it's the, you know, if you want  
0.001 seconds inference time, it's the most  accurate. So I tried that! So how do we try that?  
All we do is, I can say… so the Pytorch  image models is in the Timm module,  
so at the very start I imported that.  And we can say: list_models and pass in  
a glob, a match. And so this is going to show  all the ConvNeXT models, and here I can find  
the ones that I just saw. And all I need  to do is, when I create the vision learner,   I just put the name of the model in as  a string, okay? So, you'll see, earlier  
this one is not a string, that's because it's  a model that fastai provides, the library.  
Fastai only provides a pretty small number, so  if you install Timm — so you'll need to “pip  
install timm” or “conda install timm” — you'll  get hundreds more and you put that in a string.  
So if I now train that, the time for  these epochs goes from 20 seconds   to 27 seconds, so it is a little bit slower,  but the accuracy goes from 7.2 percent  
down to 5.5 percent. So, you know, that's a pretty  big relative difference... 7.2 divided by 5.5...  
Yeah, it's about a thirty percent improvement.  So, that's pretty fantastic and, you know, it's  
been a few years, honestly, since we've seen  anything really beat ResNet that's widely  
available and usable on regular GPUs, so this is,  this is a big step and so this is a, you know,  
there's a few architectures nowadays that really  are probably better choices a lot of the time,  
and these Conv… so, if you are not sure what  to use, try these ConvNeXT architectures.  
You might wonder what the names are about,  obviously tinys, more large, et cetera,   is how big is the model, so that'll be how much  memory is it going to take up, how fast is it.  
And then these ones here that say in22ft1k,  these ones have been trained on more data,  
so ImageNet, there's two different image data  sets: there's one that's got a thousand categories   of pictures, and there's another one that's  about 22,000 categories of pictures. So this  
is trained on the one with 22,000 categories  of pictures. So these are generally going to be  
more accurate on, kind of, standard photos  of natural objects. Okay, so from there I  
exported my model and that's there, okay? So  now I've trained my model and I'm all done.  
You know, other things you could do obviously  is add more epochs, for example, that image  
augmentation; there's various things you can do,  but, you know, I found this is actually pretty,  
pretty hard to beat this by much. If any of you  find you can do better, I'd love to hear about it.  
So then to turn that into an application, I  just did the same thing that we saw last week,  
which was to load the learner; now this  is something I did want to show you:  
the learner, once we load it and call predict,  spits out a list of 37 numbers. That's because  
there are 37 breeds of dog and cat, so these  are the probability of each of those breeds.  
What order are they in? That's an important  question. The answer is that fastai always  
stores this information about categories —  this is a category, in this case a dog or   cat breed — in something called the vocab  object, and it's inside the data loaders.  
So we can grab those categories, and that's  just a list of strings, just tells us the order.  
So if we now zip together the categories and the  probabilities, we'll get back a dictionary that  
tells you… well… like so. So here's that list of  categories and here's the probability of each one.  
And this was a basset hound, so there you can  see… Yep! almost certainly a basset hound.  


So from there, just like last week, we can go and  create our interface and then… and then launch it  
and there we go. Okay so, what did we just do really?  What is this magic model.pkl file.  
So, we can take a look at the model.pkl  file – it's an object type called a learner  
and a learner has two main things in it: the  first is the list of pre-processing steps  
that you did to turn your images into  things of the model, and that's basically  
this information here. So it's your data  blocks or your ImageDataLoaders or whatever.  
And then the second thing, most  importantly, is the trained model!   And so, you can actually grab 
    the trained model  by just grabbing the .model attribute — so I'm  
just going to call that m — and then if I type  m, I can look at the model. And so, here it is…  
lots of stuff, so what is this stuff? Well,  we'll learn about it all, over time, but  
basically what you'll find is: it contains lots  of layers, because this is a deep learning model,  
and you can see it's kind of like a  tree, that's because lots of the layers   themselves consist of 
layers. So there's a  whole layer called the TimmBody, which is  
most of it. And then right at the end  there's a second layer called Sequential,  
and then the TimmBody contains something called  “model”, and it can then contain something called  
“stem”, and something called “stages”.  And then “stages” contain 0, 1, 2, etc.
So what is all this stuff? Well, let's take a look  at one of them. So to take a look at one of them,  
there's a really convenient method in Pytorch  called get_submodule where we can pass in a,  
kind of, a dotted string navigating through  this hierarchy. So “0.model.stem.1” goes zero,  
model stem, one. So this is going to return  this LayerNorm2d thing. So what is this layer  
Norm2d thing? Well the key thing is: it's got  some code, it's with the mathematical function  
that we've talked about, and then the other thing  that we learned about is it has parameters. So  
we can list its parameters and look at this:  it's just lots and lots and lots of numbers.   Let's grab 
another example, we could have a  look at “0.model.stages.0.blocks.1.mlp.fc1”  
and parameters… Another big bunch of numbers.  So, what's going on here? What are these  
numbers and where on earth did they come from?   And how come these numbers can figure out whether  
something is a basset hound or not? Okay so…
To answer that question we're going  to have a look at a Kaggle notebook  
“How does a neural network really work?”   I've got a local version of it here, which I'm  going to 
take you through. And the basic idea is:  
machine learning models are things that fit  functions to data. So we start out with a very,  
very flexible — in fact an infinitely flexible  — as we've discussed function, a neural network,  
and we get it to do a particular thing,   which is to recognize the patterns  in the data examples 
    we give it.
So let's do a much simpler example than  a neural network, let's do a quadratic.  
So let's create a function f which is 3  x² + 2 x + 1. Okay so it's a quadratic,  
with coefficients three, two and one. So,  we can plot that function f, and give it a  
title — if you haven't seen this before things  between dollar signs is what's called latex,   it's basically how we can create kind of typeset  mathematical equations. Okay, so let's run that.  
And so here you can see the function, here  you can see the title I passed it, and here is   our quadratic. Okay, so what we're  going to do is… we're going to  
imagine that we don't know that's the  true mathematical function we're trying   to find — because it's obviously much simpler  than the function that figures out whether  
an image is a basset hound or not — that  we're just going to start super simple. So   this is the real function and we're going  to try to recreate it from some data.  
Now it's going to be very helpful if we have  an easier way of creating different quadratics,  
so I've defined a kind of a general form of a  quadratic here… with coefficients a, b, and c;  
and at some particular point x, it's going to be a  x squared plus b x plus c. And so let's test that.  
Okay so, that's for x equals 1.5,  that's 3 x squared plus 2 x plus 1,  
which is the quadratic we were… did before.
Now we're going to want to create lots of  different quadratics to test them out and find   which one's best, so this is a somewhat advanced  but very, very helpful feature of python that's  
worth learning if you're not familiar with it,  but it's used in a lot of programming languages,   it's called a partial application of a  function. Basically I want this exact function,  
but I want to fix the values of a, b and c,  to pick a particular quadratic. And the way  
you fix the values of the function is: you  call this thing in python called “partial”,   and you pass in the function, and then you pass in  the values that you want to fix. So for example,  
if I now say make a quadratic 3, 2, 1;   that's going to create a quadratic  equation with coefficients 3, 2, and 1.
And you can see, if I then pass in —  so that's now f — if I pass in 1.5,  
I get the exact same value I did before. Okay, so,  we've now got an ability to create any quadratic  
equation we want by passing in the parameters of  the coefficients of the quadratic — and that gives  
us a function that we can then just call as just  like any normal function, so that only needs one   thing now, which is the value of x, because  the other three a, b, and c are now fixed.
So if we plot that function, we'll get exactly the  same shape, because it's the same coefficients.  
Okay, so, now I'm going to show an example of  some data… some data that matches the shape of  
this function. But in real life, data is never  exactly going to match the shape of a function,  
it's going to have some noise. So here's a couple  of functions to add some noise. So you can see,  
I've still got the basic functional form  here, but this data is a bit dotted around it.  
The level to which you look  at how I implemented these   is entirely up to you, it's not like super  necessary, but it's all stuff which, you know,  
the kind of things we use quite a lot so this is  to create normally distributed random numbers…  
this is how we set the seed so that each time  I run this I gotta get the same random numbers.  
This one is actually particularly helpful,  this creates a tensor, so in this case a vector  
that goes from -2 to 2, in equal steps and there's  twenty of them, that's why there's 20 steps  
along here. So then my y-values is just  f(x), with this amount of noise added. Okay,  
so — as I say — the details of that don't matter  too much, the main thing to know is we've got some   random data now. And so, this is… the idea  is now we're going to try to reconstruct the  
original quadratic equation, find the one which  matches this data. So how would we do that?
Well, what we can do is, we can create  a function called plot quadratic that,  
first of all, plots our data, as a scatter  plot, and then it plots a function, which  
is a quadratic – the quadratic we pass in. Now,  there's a very helpful thing for experimenting  
in Jupyter Notebooks, which is the @interact  function. If you add it on top of a function,  
then it gives you these nice little  sliders. So here's an example  
of a quadratic with coefficients 1.5 ,1.5, 1.5.  And it doesn't fit particularly well. So how  
would we try to make this fit better? Well, I  think what I'd do is I take the first slider,  
and I would try moving it to the left  and see if it looks better or worse.   That looks worse to me, I think it needs to  be more curvy, so let's try the other way.
Yeah, that doesn't look bad. Let's do  the same thing for the next slider,   have it this way… no, I think that's  worse, let's try the other way…  
okay, final slider… try this  way, no, it's worse… this way…
So you can see what we can do, we can  basically pick each of the coefficients   one at a time. Try increasing a little bit, see if  that improves it. Try decreasing it a little bit,  
see if that improves it. Find  the direction that improves it,   and then slide it in that direction a  little bit. And then when we're done,  
we can go back to the first one and see if we  can make it any better. Now we've done that!
And actually you can see that's not bad, because  I know the answer's meant to be three, two, one.   So they're pretty close. And,  I wasn't cheating, I promise.  
That's basically what we're gonna do.  That's basically how those parameters   are created. But we, obviously, don't have time,  because the, you know, big fancy models have,  
often, hundreds of millions of parameters, we  don't have time to try a hundred million sliders.   So we need something better. Well the first step  is, we need a better idea of like, when I move it,  
is it getting better or is it getting worse?  So, if you remember back to Arthur Samuel's  
description of machine learning that we learned  about on Chapter One of the book, and in Lesson   One… we need some… something we can measure, which  is a number that tells us how good is our model.  
And if we had that, then as we moved these  sliders, we could check to see whether it's   getting better or worse. So this is called a  loss function. So, there's lots of different  
loss functions you can pick but perhaps the  most simple and common is mean-squared-error,  
which is going to be… so it's going to get in our  predictions, and it's got the actuals. And we're   going to go predictions minus actuals squared  and take the mean. So that's mean squared error.  
So, if I now rerun the exact  same thing I had before,   but this time I'm going to calculate  the loss, “the mse,” between  
the values that we predict, f(x); remember where  “f” is the quadratic we created and the actuals…  
“y”. And this time I'm going to add a  title to our function, which is the loss.
So now let's do this more rigorously. We're  starting at a mean squared error of 11.46,  
so let's try moving this to the left and see if  it gets better… no, worse, so I’ll move it to   the right. All right, somewhere around  there. Okay, now let's try this one.  
Okay, best when I go to the right. Okay,  what about “c”? 3.91. It's getting worse,  
so I keep going (sorry about that). And so  now we can repeat that process, right? So  
we've had each of a, b and c move a little bit.  Let's go back to a, can I get any better than  
3.28? Let's try moving left: yeah, left was a  bit better. And for b, let's try moving left:  
worse. Right was better. And  finally c, move to the right…
Oh, definitely better. There we go. Okay  so, that's a more rigorous approach, it's  
still manual, but at least we can, like, we don't  have to rely on us to kind of recognize: does it  
look better or worse? So finally we're going to  automate this. So the key thing we need to know  
is: for each parameter, when we move it up, does  the loss get better? Or when we move it down,  
does the loss get better? One approach would be  to try it, right? We could manually increase the  
parameter a bit and see if the loss improves,  and vice versa. But there's a much faster way,  
and the much faster way is to calculate its  derivative. So if you've forgotten what a  
derivative is, no problem, there's lots of  tutorials out there, you could go to Khan   Academy or something like that, but in short, the  derivative is what I just said. The derivative  
is a function that tells you: if you increase  the input, does the output increase or decrease?  
…and by how much. So that's called the  slope, or the gradient. Now the good news is  
Pytorch can automatically calculate  it for you. So, if you went through  
horrifying months of learning derivative rules  in year 11, and worried you're going to have to   remember them all again, don't worry, you  don't! You don't have to calculate any of  
this yourself, it's all done for you.  Watch this. So the first thing to do,  
is we need a function that takes the coefficients  of the quadratic a, b and c as inputs.  
I'm going to put them all in a list, you'll see  why in a moment, I kind of call them parameters.  
We create a quadratic, passing  in those parameters a, b and c.  
This star on the front is a very,  very common thing in python,   basically it takes these parameters and  spreads them out to turn them into a,  
b and c, and pass each of them to the function. So  we've now got a quadratic with those coefficients  
and then we return the mean squared error  of our predictions against our actuals.  
So this is a function that's going to take the  coefficients of a quadratic and return the loss.
So let's try it. Okay so if we start with a, b and c of  1.5, we get a mean squared error of 11.46.  
It looks a bit weird, it says it's a  tensor, so don't worry about that too much,  
in short, in Pytorch everything is a tensor.  A tensor just means that you don't… it doesn't  
just work with numbers, it also works with lists  or vectors of numbers… that's called a 1d-tensor.  
Rectangles of numbers, so tables of numbers is  called a 2d-tensor. Layers of tables of numbers,  
that's called a 3d-tensor, and so forth.  So in this case this is a single number,  
but it's still a tensor, that means it's just  wrapped up in the Pytorch machinery that allows  
it to do things like calculate derivatives.  But it's still just the number 11.46.
So what I'm going to do is I'm going to create  my parameters a, b and c; and I'm going to put   them all in a single 1d-tensor. Now, 1d-tensor is  also known as a rank-1-tensor. So this is a rank  
1 tensor and it contains the list of numbers  1.5, 1.5, 1.5. And then I'm going to tell  
Pytorch that I want you to calculate  the gradient for these numbers,  
whenever we use them in a calculation. And the  way we do that is we just say: requires_grad_().  
So here is our tensor, it contains 1.5 three times  and it also tells us it's… we flagged it to say,  
please calculate gradients for this particular  tensor, when we use it in calculations.  
So let's now use it in the calculation, we're  going to pass it to that quad_mse, that's the   function we just created that gets the mse — the  mean squared error — for a set of coefficients  
and not surprisingly it's the same number we saw  before: 11.46. Okay, not very exciting, but there  
is one thing that's very exciting, which is added  an extra thing to the end called grad function,  
and this is the thing that tells us that,  if we wanted to, Pytorch knows how to  
create — calculate — the gradients for our inputs.  And to tell Pytorch: yes please, go ahead and do  
that calculation, you call “backward()” on the  result of your loss function. Now when I run  
it nothing happens, or it does look like nothing  happens… But what does happen is: it's just added  
an attribute called grad, which is the gradient  to our inputs “abc”. So, if we run this cell,  
this tells me that if I increase a, the loss will  go down. If I increase b, the loss will go down a  
bit less, you know. If they increase c, the loss  will go down. Now, we want the loss to go down,  
right? So that means we should increase a, b and  c. Well, how much by? Well, given that a is… says,  
if you increase a, even a little bit, the  loss improves a lot, that suggests we're   a long way away from the right answer, so  we should probably increase this one a lot,  
this one the second most, and this one the third  most. Okay so this is saying, when I increase  
this parameter, the loss decreases. So in other  words, we want to adjust our parameters a, b and c  
by the negative of these. We want to increase,  increase, increase. So we can do that  
by saying, okay, let's take our “abc” minus  equals (so that means equals “abc” minus)  
the gradient. But, we're just going to like  decrease it a bit, we don't want to jump too far,  
okay? So just we're just going to go  a small distance. So we're going to,   we're just going to somewhat  arbitrarily pick 0.01.
So that is now going to create a new set of  parameters which are going to be a little bit   bigger than before, because we subtracted negative  numbers. And we can now calculate the loss again.  
So remember, before it was 11.46, so hopefully  it's going to get better. Yes it did,  
10.11. There's one extra line of code, which we  didn't mention, which is with torch.no_grad().  
Remember earlier on, we said that the  parameter abc requires grad, and that   means Pytorch will automatically calculate its  derivative when it's used in a… in a function.  
Here it's being used in a function, but we don't  want the derivative of this, this is not our loss,  
right? This is us updating the gradients. So  this is basically the standard inner part of the  
Pytorch loop, and every neural net deep learning  machine… pretty much every machine learning model,  
at least of this style, that you’ll  build, basically looks like this.   If you look deep inside fastai source code, you'll  see something that basically looks like this.
So we could automate that, right? So let's  just take those steps, which is, we're going to  
calculate — let's go back to here — we're  going to calculate the mean squared error for  
our quadratic. Call backward and then subtract the  gradient times the small number from the gradient.  
So let's do it five times. So, so  far we're up to a loss of 10.1.   So we're going to calculate our loss, call  dot backward to calculate the gradients  
and then: with no_grad, subtract the gradients  times a small number, and print how we go.  
And there we go, the loss keeps improving.  So we now have… some coefficients.  
And there they are: 3.2, 1.9, 2.0. So they're  definitely heading in the right direction.
So that's basically how we do… it's called  optimization. Okay, so you'll hear a lot in  
deep learning about optimizers, this  is the most basic kind of optimizer,   but they're all built on this principle,  of course, it's called gradient descent.  
And you can see why it's called gradient  descent: we calculate the gradients   and then do a descent, which is, we're trying  to decrease the loss. So, believe it or not,  
that's the entire foundations of how we create  those parameters. So we need one more piece,  
which is what is the mathematical function  that we're finding parameters for?   We can't just use quadratics, right?  …because it's pretty unlikely that  
the relationship between parameters and  whether a pixel is part of a basset hound  
is a quadratic. It's going to be  something much more complicated.
No problem, it turns out that we can create an  infinitely flexible function from this one tiny  
thing: this is called a Rectified Linear Unit.  The first piece, I'm sure you will recognize,  
it's a linear function. We've got our  output y, our input x, and coefficients m  
and b. This is even simpler than  our quadratic, and this is a line.  
And torch.clip() is a function that takes that  output, y, and if it's greater than that number,  
it turns it into that number. So in other words  this is going to take anything that's negative,   and make it zero. So this function is going to  show two things: calculate the output of a line,  
and if it is ~(bigger,) ah, smaller  than zero, it'll make it zero.   So that's rectified_linear(). So let's use partial  
to take that function and set the m and b  to one and one. So this is now going to be,   this function here, will be: y equals x  plus one followed by this torch.clip().
And here's the shape, okay. As you'd expect,  it's a line until it gets under zero,  
when it becomes, well, it's still a  line, it's a… becomes a horizontal line.
So we can now do the same thing, we  can take this plot function and make   it interactive using interact. And we can see  what happens when we change its two parameters:  
m and b. So we're now plotting the rectified  linear and fixing m and b. So m is the slope,  
okay, and b is the intercept,  with a shift up and down.  
Okay, so that's how those work. Now, why is this  interesting? Well, it's not interesting of itself,  
but what we could do is, we could  take this rectified linear function  
and create a double ReLU, which adds up  two rectified linear functions together.  
So there's some slope m1, b1 – some second slope  m2, b2 – we're gonna calculate it at some point x.  
And so let's take a look at what that  function looks like if we plot it.  
And you can see what happens is we get  this downward slope, and then a hook,   and then an upward slope. So if I change m1 it's  going to change the slope of that first bit,  
and b1 is going to change its position, okay. And  I'm sure you won't be surprised to hear that m2  
changes the slope of the second bit and b2 changes  that location. Now, this is interesting… why?  
Because we don't just have to do a double ReLU,  we could add as many ReLUs together as we want,  
and if we add as many ReLUs together as we want,  then we can have an arbitrarily squiggly function,  
and with enough ReLUs, we can match it  as close as we want, right? So you could  
imagine incredibly squiggly, like I don't  know, like an audio waveform of me speaking  
and if I gave you 100 million ReLUs to add  together, you could almost exactly match that.
Now, we want functions that are not just… that  we've plotted in 2d, we want things that can  
have more than one input, but you can add these  together across as many dimensions as you like.   And so, exactly the same thing  will give you a ReLU over surfaces,  
or a ReLU over 3d, 4d, 5d and so  forth. And it's the same idea,  
with this incredibly simple foundation you can  construct an arbitrarily, accurate, precise model.
Problem is, you need some numbers for  them, you need parameters. Oh! no problem,  
we know how to get parameters, we use  gradient descent. So believe it or not,  
we have just derived deep  learning! Everything from now on is  
tweaks to make it faster, and make it need  less data, you know, this is… this is it!!  
Now, I remember a few years ago when  I said something like this in a class,   somebody on the forum was like, this reminds  me of that thing about how to draw an owl.  
Jeremy's basically saying, okay, step one: draw  two circles; step two: draw the rest of the owl.  
The thing I'm… I find I have a lot of trouble  explaining to students is: when it comes to   deep learning, there's nothing between these two  steps. When you have ReLUs getting added together,  
and gradient descent to optimize the parameters,  and samples of inputs and outputs that you want,  
the computer draws the owl, right? that's, that's,   that's it, right? So we're going to learn  about all these other tweaks, and they're  
all very important, but when you come down to like  trying to understand something in deep learning,  
just try to keep coming back to remind yourself of  what it's doing, which it's using gradient descent  
to set some parameters to make a wiggly  function which is basically the addition of   lots of rectified linear units or something  very similar to that, match your data.
Okay, so we've got some questions on the forum.  
Okay, so, the question from Zakia,  with six upvotes… (so for those of you  
watching the video, what we do in the  lesson is we want to make sure that the   questions that you hear answered are  the ones that people really care about  
so, we pick the ones which get the most  upvotes.) This question is: “is there  
perhaps a way to try out all the different models  and automatically find the best performing one?”
Yes, absolutely you can do that, so…
If we go back to our training script,  remember, there's this thing called   list_models() and it's a list of strings,  
so you can easily add a for loop around this that  basically goes, you know, for architecture in  
timm.list_models and you could do the whole lot,  which would be like that, and then you could…  
do that, and a way you go. It's going to take  a long time for 500 and something models,  
so generally speaking, like, I've never done  anything like that myself, I would rather look  
at a picture like this and  say like: Okay, where am I in?   The vast majority of the time — this  is something, this would be the biggest  
error and number one mistake of beginners  I see — is that they jump to these models  
from the start of a new project. At the start  of a new project I pretty much only use ResNet18  
because I want to spend all of my time trying  things out. I'm going to try different data   augmentation. I'm going to try different ways of  cleaning the data. I'm going to try, you know,  
different external data I can bring  in. And so I want to be trying lots of   things and I want to be able to try  it as fast as possible, right? So…
Trying better architectures is the very  last thing that I do. And what I do is,  
once I've spent all this time, and I've  got to the point where I've got… okay,   I've got my ResNet18, well maybe, you  know, ResNet34 because it's nearly as fast.  
And I'm like, okay well, how accurate is it?  How fast is it? Do I need it more accurate,  
for what I'm doing? Do I need it faster, for what  I'm doing? Could I accept some trade-off to make  
it a bit slower, to make it more accurate?  And so then I'll have a look and I'll say:   okay well, I kind of need to be somewhere around  0.001 seconds and so I try a few of these.  
So that would be how I would think about that.
Okay, next question from the forum  is around: “How do I know if I have   enough data? What are some signs that  indicate my problem needs more data?”  
I think it's pretty similar  to the architecture question.   So, you've got some amount of data. Presumably  you've, you know, you've started using all the  
data that you have access to, you've built your  model, you've done your best. Is it good enough?  
Do you have the accuracy that you need for  whatever it is you're doing? You can't know until  
you've trained the model, but as you've seen, it  only takes a few minutes to train a quick model.  
So, my very strong opinion is that the  vast majority of projects I see in industry  
wait far too long before they train their first  model. You know, in my opinion you want to train  
your first model on day one with whatever CSV  files or whatever that you can hack together.  
And you might be surprised that none of the  fancy stuff you're thinking of doing is necessary   because you already have a good enough accuracy  for what you need. Or you might find quite the  
opposite, you might find that, oh my god,  we're basically getting no accuracy at all,  
maybe it's impossible. These are things you  want to know at the start, not at the end.
We'll learn lots of techniques both in  this part of the course and in Part Two   about ways to really get the most out of your  data. In particular there's a reasonably recent  
technique called semi-supervised learning which  actually lets you get dramatically more out of   your data, and we've also started talking already  about data augmentation, which is a classic  
technique you can use. So, generally speaking,  it depends how expensive is it going to be to get   more data. But also what do you mean when you say  “get more data.” Do you mean more labeled data?  
Often it's easy to get lots of inputs  and hard to get lots of outputs.  
For example, in medical imaging — where I spent  a lot of time — it's generally super easy to jump  
into the radiology archive and grab more CT scans.  But it might be very difficult and expensive to,  
you know, draw segmentation masks, and pixel  boundaries and so forth, on them. So often,  
you can get more, you know, in this  case images, or texts, or whatever.  
And maybe it's harder to get labels. And again,  there's a lot of stuff you can do, using things   like we'll discuss: semi-supervised learning to  actually take advantage of unlabeled data as well.
Okay, a final question here: “In the quadratic  example, where we calculated the initial  
derivatives for a, b and c, we got values of  -10.8, -2.4, etc. What unit are these expressed  
in? Why don't we adjust our parameters by  these values themselves?” So I guess the   question here is: “Why are we multiplying it by  a small number?” …which in this case is 0.01.  
Okay let's take those two parts of the question.
What's the unit here? The unit is:  ~(for each increase in “x” of one,  
how much does…) sorry, for each increase in “a”  of one, so if I increase “a” from, in this case,  
we're at 1.5; so if we increase from 1.5 to 2.5,  what would happen to the loss? And the answer is:  
it would go down by 10.9887. Now, that's  not exactly right because it's kind of like…  
it's kind of like, in an infinitely small space,  right? …because actually it's going to be curved,   right? But it's, if it stays…it stayed at  that slope, that's what would happen. So if we  
increased “b” by one, the loss would  decrease — if it stayed constant,  
you know, if the slope stayed the same —  the loss would decrease by minus 2.122.
Okay, so why would we not just change it  directly by these numbers? Well, the reason is…  
the reason is that if we… have  some function that we're fitting,  
and, there's some kind of interesting theory that  says that once you get close enough to the the  
optimal value, all functions look like quadratics  anyway, all right, so we can kind of safely draw  
it in this kind of shape, because this is what  they end up looking like if you get close enough.  
And we're like, let's say we're way out  over here, okay, so we're measuring —  
I use my daughter's favorite pens, the nice  sparkly ones — so, we're measuring the slope here.  
There's a very steep slope, right? So  that seems to suggest we should jump   a really long way. So we jump a really long way,  
and what happened? Well we jumped way too far.  And the reason is that that slope decreased,  
as we moved along, and so that's  generally what's going to happen,   right? Particularly as you approach the optimal,  generally the slope is going to decrease.  
So that's why we multiply the gradient by a small  number. And that small number is a very, very,  
very important number; it has a special  name… It's called the learning rate.
And this is an example of a hyperparameter.  It's not a parameter, it's not one of the  
actual coefficients of your function, but it's  a parameter you use to calculate the parameters.  
Very meta, right? It's a hyperparameter.  And so it's something you have to pick.   Now we haven't picked any yet in any of the stuff  we've done (should I remember) and that's because  
fastai generally picks reasonable defaults —  for most things — but later in the course we  
will learn about how to try and find really good  learning rates, and you will find sometimes you  
need to actually spend some time finding a good  learning rate. You could probably understand the  
intuition here. If you pick a learning rate that's  too big, you'll jump too far and so you'll end up  
way over here, and then you will try to then jump  back again, and you'll jump too far the other way,  
and you'll actually diverge. And so if  you ever see, when your model's training,   it's getting worse and worse, probably  means your learning rate is too big.
What would happen on the other hand if  you pick a learning rate that's too small?  
Then you're going to take tiny steps  and, of course, the flatter it gets  
the smaller the steps are going to get, and  so you're going to get very, very bored. So  
finding the right learning rate is a compromise  between the speed at which you find the answer and  
the possibility that you're actually going  to shoot past it and get worse and worse.
Okay, so one of the bits of feedback I got quite  a lot in the survey is that people want a break  
halfway through, which I think is a good idea.  So I think now is a good time to have a break,   so let's come back in 10 minutes at 25 past seven.
Okay, hope you had a good rest, have a good break,  I should say. So I want to now show you, a really  
really important mathematical computational trick,  which is, we want to do a whole bunch of ReLUs.
All right. So we're going to  be wanting to do a whole lot of   m * x + b. And we want… don't just want… to do m  * x + b. We're going to want to have, like, lots  
of variables. So, for example, every single pixel  of an image would be a separate variable, so we're  
going to multiply every single one of those, times  some coefficient, and then add them all together,  
and then do… the crop… the ReLU. And then  we're going to do it a second time with a  
second bunch of parameters and then a third time  and a fourth time and fifth time. It's going to  
be pretty inconvenient to write out 100 million  ReLUs, but so happens there's a mathematical…  
a single mathematical operation… that does  all of those things for us, except for the   final replace negatives with zeros, and it's  called matrix multiplication. I expect everybody  
at some point did matrix multiplication at high  school. I suspect also a lot of you have forgotten   how it works. When people talk about  linear algebra in deep learning,  
they give the impression you need years of  graduate school study to learn all this linear  
algebra. You don't!! Actually all you need  almost all the time is matrix multiplication  
and it couldn't be simpler. I'm going  to show you a couple of different ways. The first is, there's a really cool  site called “matrixmultiplication.xyz”.  
You can put in any matrix you want, so I'm  going to put in (oops) this one. So this  
matrix is saying I've got three rows of data  with three variables, so maybe they're tiny  
tiny images of three pixels and the value of the  first one is “1 2 1” the second is “0 1 1” and  
the third is “2 3 1” - so those are our three rows  of data. These are our three sets of coefficients,  
so we've got “a b c” in our data so I guess you'd  call it “x1 x2 x3” and then here's our first  
set of coefficients “a b c” “2 6 1” and then our  second set is “5 7 8”. So here's what happens when  
we do matrix multiplication… that second… this  matrix here of coefficients, gets flipped around  
and we do… this is the multiplications and  additions that i mentioned, right! So multiply,  
add, multiply, add, multiply, add. So that's going  to give you the first number because that is the  
left hand column of the second matrix times  the first row, so that gives you the top left  
result. So the next one is going to give us two  results, right! So we've got now the right hand  
one with the top row and the left hand one with  the second row. Keep going down, keep going down,  
and that's it!! That's what matrix multiplication  is - it's multiplying things together and adding   them up. So there'd be one more step to do, to  make this a layer of a neural network, which is  
if this had any negatives we would replace them  with zeros. That's why matrix multiplication  
is “the” critical foundational mathematical  operation in basically all of deep learning.  
So the GPUs that we use… the thing that they are  good at is this, matrix multiplication. They have  
special cores called tensor-cores, which we can  basically only do one thing, which is to multiply  
together two four by four matrices, and then  they do that lots of times for bigger matrices.  
So I'm going to show you an example of this.  We're actually going to build a complete  
machine learning model on  real data in the spreadsheet.
So fastai has become kind of famous for a  number of things, and one of them is using  
spreadsheets to create deep learning models.  We haven't done it for a couple of years,   so I'm pretty pumped to show this to you.  What I've done is I went over to Kaggle,  
where there's a competition I actually helped  create many years ago called Titanic, and it's an  
ongoing competition, so 14 000 people have entered  it, or 14000 teams have entered it so far. It's  
just a competition for a bit of fun, there's no  end date, and the data for it, is the data about,  
who… (here it is training data) …who survived  and who didn't, from the real titanic disaster.
And so I… I clicked here on the download button,  to grab it on my computer, that gave me a CSV,  
which I opened up in Excel. The first thing I  did then was I just removed a few columns that  
clearly were not going to be important things,  like the name of the passengers, the passenger id,  
just to try to make it a bit simpler. And so I've  ended up with, each row of this is one passenger.  
The first column is the dependent variable. The  dependent variable is the thing we're trying to   predict. Did they survive? And the remaining  are some information, such as what class of  
the boat - first, second, or third class, their  sex, their age, how many siblings in the family.  
“Par-ch”, I think is parents or something…
So you should always look for a data dictionary,  right? To find out what's… what… number of parents   and children, okay. What was their fare? And  which of the three cities did they embark on,  
Cherbourg, Queenstown, Southampton?  Okay, so there's our data.   Now when I first grabbed it, I noticed that there  were some people with no age. Now there's all  
kinds of things we could do for that, but for  this purpose, I just decided to remove them.  
And I found the same thing for  Embarked. I removed the blanks as well.
But that left me with nearly all  of the data. Okay, so then I've put   that over here. Here's our data  with those rows removed, and…  
okay, that's the… so these… these are the  columns that came directly from Kaggle. So  
basically what we now want to do is we're going  to multiply each of these by a coefficient.  
How do you multiply the  word, Male, by a coefficient?   And how do you multiply “S” by a coefficient? You  can't. So I converted all of these to numbers.  
Male and Female were very easy. I created a column  called isMale, and as you can see there's just an  
IF statement that says, if sex is male then it's  one, otherwise it's zero. And we can do something  
very similar for Embarked. We can have one  column called “did they embark in Southampton?”.  
Same deal, and another column for did  they… what's it called? Cherbourg?
Did they embark in Cherbourg? And now P-class  is one, two, or three, which is a number,  
but it's not really… it's not really a continuous  measurement of something. There isn't one or two  
or three things. They're different levels. So I  decided to turn those into similar things, into  
these binary. These are called “binary categorical  variables”. So, are they first class? and are  
they second class? Okay, so that's all that. The  other thing that I was thinking, well, you know,  
then I kind of tried it and checked out what  happened, and what happened was the people with…  
so I… I created some random numbers. So to create  the random numbers, I just went: equals RAND,  
right? And I copied those to the right, and  then I just went COPY and I went PASTE VALUES.  
So that gave me some random numbers. And that's  my, like… so just because like, I was like…   Before I said: all A, B and C, let's just start  them at 1.5, 1.5, 1.5. What we do in real life  
is we start our parameters at random numbers  that are a bit more or a bit less than zero.  
So these are random numbers. Actually, sorry I  slightly lied, I didn't use RAND, I used RAND  
minus 0.5, and that way I got small  numbers that were on either side of zero.
So, then when I took each of  these, and I multiplied them by  
our fares, and ages, and so forth, what happened  was that these numbers here, are way bigger than,  
you know, these numbers here. And so, in the end  all that mattered was, what was their fare. That’s  
because they were just bigger than everything  else. So I wanted everything to basically go   from zero to one. These numbers were too big. So  what I did up here is, I just grabbed the maximum  
of this column, the maximum of all the fares is  $512. And so then… actually I do age first… I did  
a maximum of age, because similar thing, right?  There's 80 year olds and there's two year olds.  
And so, then over here I just did, okay well,  what's their age divided by the maximum. And so  
that way, all of these are between zero and one.  Just like all of these are between zero and one.  
So that's how I fix… this is  called normalizing the data. Now we haven't done any of these  things when we've done stuff  
with fastai. That's because fastai  does all of these things for you,  
and we'll learn about how, right? But it's all  these things are being done behind the scenes.  
For Fare, I did something a bit more, which is  I noticed there's some lots of very small fares,  
and there's also some… a few very big fares. So  like seventy dollars, and then seven dollars,   seven dollars. Generally speaking when you have  lots of really big numbers, and a few small ones…  
so generally speaking when you've got a few really  big numbers and lots of really small numbers, this   is really common with… with… with money. You know,  because money kind of follows this relationship  
where a few people have lots of it, and they spend  huge amounts of it, and most people don't have   heaps. If you take the LOG of something that's  like… that has that kind of extreme distribution,  
you end up with something that's much more  evenly distributed. So I've added this   here called Log_Fare, as you can see. And these  are all around one, which isn't bad. I could  
have normalized that as well, but I was too  lazy, I didn't bother, because it seemed okay. So at this point you can now  see that if we start from here,  
all of these are, all around the same kind  of level, right? So none of these columns   are going to saturate the others.  So now I've got my coefficients,  
which are, just as I said, they're just random.  Okay, and so now I need to basically calculate  
AX1 plus BX2 plus CX3 plus blah blah blah  blah blah blah blah, okay. And so, to do that,  
you can use SumProduct in Excel. I could have  typed it out by hand, which would be very boring,   but some product is just going to multiply  each of these. This one will be multiplied by…  
where is it… SibSp, by this one. This  one will be multiplied by this one,   so forth and then, they get all added together.
Now one thing, if you're eagle-eyed, you might  be wondering is, in a linear equation we have  
Y equals MX plus B. At the end there's this  constant term. And I do not have any constant  
term. I've got something here called “Const”,  but I don't have any plus at the end. How do we…  
how's that working? Well there's a nice trick that  we pretty much always use in machine learning,  
which is to add a column of data just  containing the number one, every time.   If you have a column of data  containing the number one every time,  
then that parameter becomes your constant term.  So you don't have to have a special constant term,  
and so it makes our code a little bit simpler,  when you do it that way. It's just a trick,  
but everybody does it. Okay, so this is now  the result of our linear model. So this is  
not… I'm not even going to do ReLU, right?  I'm just going to do a plain regression,  
right? Now if you've done regression before, you  might have learned about it as something you kind  
of solve with various matrix things. But in fact  you can solve a regression using gradient descent.
So I've just gone ahead and created a loss for  each row, and so the loss is going to be equal to  
our prediction minus “whether they survived”   squared. So this is going to be our squared  error, and here they all are, our squared errors.  
And so here I've just summed them up. I could  have taken the Mean. I guess that would have   been a bit easier to think about, but SUM is going  to give us the same result. So here's our loss,  
and so now, we need to optimize that  using gradient descent. So Microsoft   Excel has a gradient descent optimizer in  it, called Solver. So I'll click Solver,  
and I just say, okay, what are you  trying to optimize? It's this one here,   and I'm going to do it by  changing these cells here.
And I'm trying to minimize it, and  so we're starting a loss of 55.78.
Actually, let's change it to Mean, as well.  We got Mean or Average? Probably Average.
All right, so start at 1.03.
So optimize that. And there we go. So it's gone from 1.03 to 0.1.  
And so we can check the predictions. So the  first one gets predicted exactly correctly.
It was “they didn't survive”, and we  predicted “they wouldn't survive”.   Ditto for this one. It's very close. And you can  start to see… so this one, you can start to see  
a few issues here, which is like sometimes it's  predicting ~(less than one, sorry) less than zero,   and sometimes it's predicting more than one.  Wouldn't it be cool if we had some way of…  
wouldn't be cool if we had some way of  constraining it to between zero and one,   and that's an example of some of the things we're  going to learn about, that make this stuff work  
a little bit better, right? But you can see it's  doing an okay job. So this is not deep learning,   this is not a neural net, yet. This is just a  regression. So, to make it into a neural net,  
we need to do it multiple times. So I'm just  going to do it twice. So now rather than  
one set of coefficients, I've got two sets.  And again I just put in random numbers.  
Other than that, all the data's the  same. And so now I'm going to have  
my sum product again. So the first sum  product is with my first set of coefficients,  
and my second sum product is with  my second set of coefficients.   So I'm just calling them linear-one and  linear-two. Now there's no point adding  
those up together, because if you add up two  linear functions together, you get another linear   function. We want to get all those wiggles,  right? So, that's why we have to do our ReLU.  
So in Microsoft Excel, Relu looks like  this: if the number is less than zero,   use zero; otherwise use the number. So that's how  we're going to replace the negatives with zeros.
And then finally, if you remember from our  spreadsheet, we have to add them together.  
So we add the ReLUs together. So  that's going to be our prediction,  
and then our loss is the same as the other  sheet. it's just Survived minus Prediction,   Squared. And let's change that to Mean… Not  Mean… Average. Okay. So let's try solving that.
Optimize $AH$1. And this time  we're changing all of those.  
Solved. So this is using gradient descent. Excel Solver is not the fastest  thing, well, but it gets the job done.  
Okay let's see how we went. 0.08  for our deep learning model versus  
0.1 for our regression. So it's a bit better.  So there you go. So we've now created our first  
deep learning neural network from scratch, and  we did a Microsoft Excel, everybody's favorite  
artificial intelligence tool. So that was a  bit slow and painful. It’ll be a bit faster and  
easier if we used matrix multiplication, so let's  finally do that. So this next one is going to be   exactly the same as the last one, but with matrix  multiplication. So all our data looks the same.  
You'll notice the key difference now  is our parameters have been transposed.   So before I had the parameters matching  the data in terms of being in columns.
For matrix multiplication,  the… the expectation is,   the way matrix multiplication works… it works…  is that you have to transpose this. So it goes,  
the X and Y is, kind of, the opposite way around.  The rows and columns are the opposite way around.   Other than that, it's the same. I've  got the same… I just copied and pasted  
the random numbers, so we had exactly the  same starting point and so now… our entire…  
this entire thing here, is a single function  which… which is, matrix multiply, all of this, by  
all of this. And so when i run that,  it fills in exactly the same numbers.
Make this Average. And so now we can optimize that.
Okay, make that a MINIMUM, by changing these.
Solve. You should get the same number, 0.08, wasn’t it?  
Yep, now we do. Okay. So that's just another  way of doing the same thing. So you can see  
that matrix multiplication, it takes like  a surprisingly long time, at least for me,  
to get an intuitive feel for matrix  multiplication, as like a single mathematical  
operation. So i still find it helpful to kind of  remind myself, it’s just doing these sum products,  
and additions. Okay, so that is…  
that is a deep learning neural  network in Microsoft Excel.  
And the Titanic Kaggle competition,  by the way, is a pretty fun,  
learning competition. If you haven't done much  machine learning before, then it's certainly   worth trying out, just to kind of get the feel  for these… how these all get put together.
So this is… So the chapter of the book that  this lesson goes with, is Chapter Four.  
And Chapter Four of the book is the chapter  where we lose the most people. Because it's,  
to be honest, it's hard. But part of the reason  it's hard is, I couldn't put this into a book.  
Okay. So we're teaching it in a very different way  in the course, to what's in the book, and you know  
you can use the two together. But if you've tried  to read the book and been a bit disheartened,   yeah, try, you know, try following through…  through the spreadsheet instead. Maybe try  
creating, like, if you use Numbers or Google  Sheets or something, you could try to create   your own kind of version of it on whatever  spreadsheet platform you prefer. Or you could  
try to do it yourself from scratch in Python,  you know, if you want to really test yourself.
So there's some suggestions. Okay. Question from Victor Guerrero. In the  Excel exercise, when Jeremy is doing some  
feature engineering, he comes up with two new  columns, Pclass_1 and Pclass_2. That is true.  
Pclass_1 and Pclass_2. Why is there no Pclass_3  column? Is it because Pclass_1… if Pclass_1 is  
zero and Pclass_2 is zero, then Pclass_3 must  be one? So, in a way, two columns are enough to   encode the input with the original column? Yes!  That's exactly the reason. So, there's no need to  
tell the computer about things it can kind of  figure out for itself. So when you create… These   are called dummy variables. So when you create  dummy variables for a categorical variable with  
three levels, like this one, you need  two dummy variables. So, in general,   categorical variable with n levels needs  n-1 columns. Thanks to a good question.
So what we're going to be doing in our next lesson  is looking at natural language processing. So far  
we've looked at some computer vision, and just  now we've looked at some, what we call, tabular   data, so… so… kind of spreadsheet type data.  Next up we’re… we're going to be looking at  
natural language processing. So I'll give you  a taste of it. So you might want to open up the   Getting Started with… Getting Started  with NLP for Absolute Beginners Notebook.
So here's the Getting Started With  NLP for Absolute Beginners Notebook.   I will say, as a notebook author, I may sound  a bit lame, but I always see when people have  
uploaded it, it always makes me really happy,  so… and it also helps other people find it. So   remember to upvote these notebooks, or any other  notebooks you… you like. I also always read all  
the comments. So if you want to ask any questions  or make any comments, I enjoy those as well.
So natural language processing is about,  rather than taking, for example, image data  
and making predictions, we take text data. That  text data, most of the time, is in the form of  
prose, so like, plain English text. So, you know,  English is the most common language used for NLP,  
but there's NLP models in dozens  of different languages nowadays.
And if you're a non-English speaker,  
you'll find that for many languages, there's less  resources in non-English languages, and there's a  
great opportunity to provide NLP resources in your  language. This has actually been one of the things  
that the fastai community has been fantastic  at, in the global community, is building NLP  
resources. For example, the first  Farsi NLP resource was created  
by a student from the very first fast.ai course.  The Indic languages, some of the best resources  
have come out of fastai alumni and so forth.  So that's a particularly valuable thing you   could look at. So if your language is not well  represented, that's an opportunity, not a problem.
So some examples of things you could use  NLP for? Well perhaps the most common and  
practically useful in my opinion,  is classification. Classification   means you take a document – now when I say a  document that could just be one or two words,  
it could be a book, it could be a Wikipedia  page, so it could be any length. We use the   word “document”, it sounds like that's a specific  kind of length but it can be a very short thing  
or very long thing. We take a document and  we try to figure out a category for it.   Now that can cover many many different kinds of  applications. So, one common one that we'll look  
at a bit is sentiment analysis. So, for example,  is this movie review positive or negative.  
Sentiment analysis is very helpful from things  like marketing and product development - you  
know in big companies there's lots and lots  of, you know, information coming in about your   product. It's very nice to quickly sort it out  and to kind of track metrics from week to week.  
Something like figuring out what author wrote the  document would be an example of a classification  
exercise because you're trying to put in a  category – in this case is, which author. It gives a lot of opportunity in legal discovery.  There's already some products in this area,  
where in this case the category is: is this  legal document in scope or out of scope  
in the court case? Just organizing documents,  triaging inbound emails - so like, which part  
of the organization should it be sent to? Was  it urgent or not? Stuff like that. So these are  
examples of categories of classification.  What you'll find is, when we look at  
classification tasks in NLP, is it's  going to look very very similar to  
images. But what we're going to do is  we're going to use a different library. The library we're going to use is called  Hugging Face transformers, rather than fast.ai,  
and there's two reasons for that: the main reason  why, is because i think it's really helpful   to see how things are done in more than one  library; and HuggingFace transformers, yeah so…  
fast.ai has a very layered architecture so you can  do things at a very high level with very little  
code or you can dig deeper and deeper and deeper  getting more and more fine-grained. HuggingFace  
transformers doesn't have the same high level  api, at all, that fast.ai has, so you have to  
do more stuff manually. And so at this point of  the course, you know, we're going to actually  
intentionally use a library which is a little bit  less user-friendly in order to see, kind of, what  
extra steps you have to go through to use other  libraries. Having said that, the reason I picked  
this particular library, is it is particularly  good. It has really good models in it, it has a  
lot of really good techniques in it, not at all  surprising because they have hired lots and lots  
of fast.ai alumni, so they have very high quality  people working on it. So, before the next lesson,  
yeah, if you've got time, take it… take a look  at this notebook and take a look at the data.
The data we're going to be working with is quite  interesting. It's from a Kaggle competition  
which is trying to figure out, in patterns,   whether two concepts are referring to the same  thing or not, where those concepts are represented  
as English text. And when you think about it, that  is a classification task, because the document is,  
you know, basically text one blah, text two blah.  And then the category is similar or not-similar.  
And in fact in this case they actually have  scores, it's either going to be, basically,   zero (0), zero point two five (0.25), point five  (0.5), point seven five (0.75), or one (1), of,  
like, how similar is it. But it's basically a  classification task, when you think of it that   way. So yeah, you can have a look at the data  and, next week, we're going to go through step  
by step through this notebook. And we're going to  take advantage of that, as an opportunity also,   to talk about the really important topics of  validation sets and metrics, which are two  
of the most important topics in, not just deep  learning, but machine learning more generally.
All right, thanks, everybody.  I'll see you next week. Bye.