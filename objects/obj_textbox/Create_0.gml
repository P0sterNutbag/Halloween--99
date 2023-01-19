// size variables
screen_width = display_get_gui_width();

text_index = 0
done = false
draw_next = true;

textSpeed = 3;

line_width = screen_width-64-8;

textOutput = "";
textPosition = 1;

currentLine = "";
currentCharacter = "";

// start moving text
alarm[0] = 10;
image_speed = 0;

// text offsets
xoffset = 60;
yoffset = 87;

// create speach bubble
alarm[2] = 1;
