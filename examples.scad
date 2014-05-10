use <w23/utils.scad>

// cubeEx Examples
// my improved version of the openSCAD cube module
// size works like the first parameter of the cube primitive, it's a 3 dim vector that contains the sidelengths of the "cube" ;)
// center is also a 3 dim vector so you can specify the centering for each axis individually, This is normaly either -0.5, 0 (equal to center = true), or 0.5 (equal to center = false) but any value is possible.
// offset specifies an absolute offset in mm from the position that would result from just the center parameter

cubeEx([20, 15, 10], // "cube" hase size 20x15x10 
	  [0,           // centered in x axis (0 "==" center=true )
        0.5,         // shifted by half its size in positive y axis (0.5 == center=false)
       -0.5],        // shifted by half its size in negative z axis ( cant be done with center)6
	  [0, 0, 1]);   // offset by -1mm in z axis

cubeEx([10, 10, 10], [0,0,1.5]); // cube is shifted in the z axis by 1.5 its size from origin  
%cubeEx([10, 10, 10], [0,0,.5]); // cube is shifted in the z axis by 0.5 its size from origin so it fits exactly between the x/y plane and the above cube 
