// The 7th Citadel
// Custom card dividers
// Original by phroozen on thingiverse : https://www.thingiverse.com/thing:3714742

// pro tip: print in 0.2 layer height and use Prusa Color Print to add a color change on layer 2 to get colored text


// The actual number to show on top.
divider_num = "101";

// Font for the text
// tested on Windows, may need changes for other systems
num_font = "Plantagenet Cherokee";

// text offset
// may need adjustment in case you change the font
text_offset = 6;

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

// Make tab solid

// Uses addons
// helper module for drawing rectangles with rounded borders
//
// (c) 2013 Felipe C. da S. Sanches <fsanches@metamaquina.com.br>
// Lincensed under the terms of the GNU General Public License
// version 3 (or later).

module rounded_square(dim, corners=[10,10,10,10], center=false){
  w=dim[0];
  h=dim[1];

  if (center){
    translate([-w/2, -h/2])
    rounded_square_(dim, corners=corners);
  }else{
    rounded_square_(dim, corners=corners);
  }
}

module rounded_square_(dim, corners, center=false){
  w=dim[0];
  h=dim[1];
  render(){
    difference(){
      square([w,h]);

      if (corners[0])
        square([corners[0], corners[0]]);

      if (corners[1])
        translate([w-corners[1],0])
        square([corners[1], corners[1]]);

      if (corners[2])
        translate([0,h-corners[2]])
        square([corners[2], corners[2]]);

      if (corners[3])
        translate([w-corners[3], h-corners[3]])
        square([corners[3], corners[3]]);
    }

    if (corners[0])
      translate([corners[0], corners[0]])
      intersection(){
        circle(r=corners[0]);
        translate([-corners[0], -corners[0]])
        square([corners[0], corners[0]]);
      }

    if (corners[1])
      translate([w-corners[1], corners[1]])
      intersection(){
        circle(r=corners[1]);
        translate([0, -corners[1]])
        square([corners[1], corners[1]]);
      }

    if (corners[2])
      translate([corners[2], h-corners[2]])
      intersection(){
        circle(r=corners[2]);
        translate([-corners[2], 0])
        square([corners[2], corners[2]]);
      }

    if (corners[3])
      translate([w-corners[3], h-corners[3]])
      intersection(){
        circle(r=corners[3]);
        square([corners[3], corners[3]]);
      }
  }
}


function get_divider_offset(divide_by, divider_align) = 
    divide_by == 1 ? (divider_align * 51) :
        divider_align * (51 / (divide_by -1));

function setStartingValueOfTab(solid_tab) =
divider_offset = get_divider_offset(divide_by, divider_align);



difference(){
    linear_extrude(height=0.6)union() {
        rounded_square([81,83], corners=[5,5,5,5]);
        translate([divider_offset,65,0])
        rounded_square([30,30], corners=[2,2,2,2]);
    };
    translate([divider_offset+text_offset,85,0.2])
    {
        linear_extrude(height=10){
            text(text = str(divider_num), font = num_font, size = 8, spacing = 1 );
        };
    }
};


