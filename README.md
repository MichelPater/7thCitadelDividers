# 7th Citadel Dividers

OpenSCAD code for designing dividers for the boardgame 7th Citadel (can also be used for 7th Continent) by Serious Poulp. Purely used for personal use.

The base game comes with dividers for every 50 cards, these dividers provide easy access to the more used cards.

# Acknowledgement
The code is based on the excellent parametric design of user `phrozen` on thingiverse. Check out the original code and stls on [https://www.thingiverse.com/thing:3714742](https://www.thingiverse.com/thing:3714742). 

I merely changed the code to support more 'divisions' for the tab location:
![alt text](images/divide_fourths_midle_left.png "Divided by fourths aligned middle left")
![alt text](images/divide_fourths_midle_right.png "Divided by fourths aligned middle right")

Furthermore I used the amazing divider template made by BoardGameGeek user `Nitrik` as a basis for generating the `.stl` files. See [https://boardgamegeek.com/filepage/274641/additional-dividers](https://boardgamegeek.com/filepage/274641/additional-dividers) for the original template. 
And also check out the post in the forums with additional information: [https://boardgamegeek.com/thread/3253085/addtional-custom-dividers](https://boardgamegeek.com/thread/3253085/addtional-custom-dividers).

Lastly you can also check out the page on Printables where I have hosted the `.stl` files and prepared `.gcode` as well [https://www.printables.com/model/946923-7th-citadel-dividers](https://www.printables.com/model/946923-7th-citadel-dividers).

# Printing the files
I used a Prusa MK3S and Prusa Slicer to slice and print the stl files. I sliced the file with a layer height of 0.30mm which will then produce `.gcode` with 2 layers. I recommend using a color swap after the first layer to print the first layer in white and the second layer in black. Happy printing!

# Included dividers
The dividers that are currently included have these numbers:
- 001
- 002
- 003
- 004
- 005
- 006
- 007
- 008
- 013
- 014
- 049
- 051
- 099
- 149
- 199
- 251
- 299
- 301
- 351
- 399
- 401
- 451

# Usage
If you want to make additional dividerse you can do the following:

Open the `.scad` file in OpenSCAD and use the parameters to change the number, division and aligment of the tab.

```
// Divide by 1, halves, thirds, fourths etc
// 1 = no divide, 2 = halves, 3 = thirds, 4 = fourths, ...
divide_by = 3;

// Alignment of the tab
// by 1         0 = left, 1 = right
// by halves    0 = left, 1 = right
// by thirds    0 = left, 1 = middle, 2 = right
// by fourths   0 = left, 1 = left_middle, 2 = right_middle, 3 = right
// etc
divider_align = 0;
```
# Troubleshooting
![alt text](images/font_example.png "Font example")


If you notice that the font is not working (_see above image for how it should look_) try the following:
- Download the font for free for personal use on [Fonts Family](https://freefontsfamily.net/plantagenet-cherokee-font-free/)
- Install the `.tff` file **for all users** (**NOTE** this is the important bit!)


