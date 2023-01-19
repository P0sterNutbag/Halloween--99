// Move along the output string
currentCharacter = string_char_at(string(text[text_index]),textPosition);
textPosition++;
textOutput += currentCharacter;
currentLine += currentCharacter;

// check for pauses
var spdup = max(0,mouse_check_button(mb_left),keyboard_check(vk_space))
//var next_char = string_char_at(string(text[text_index]),textPosition+1);
if spdup  textSpeed = 1;
else {
	if (currentCharacter = "." or currentCharacter = "!" or currentCharacter = "?") {
		textSpeed = 12;
	} else if currentCharacter = "," {
		textSpeed = 5;
	} else {
		textSpeed = 3;
	}	
}

// Check for line break
//lineLength++;
if currentCharacter = " " {
	var checkString = "";
	var i = 1;
	var nextCharacter = string_char_at(string(text[text_index]),textPosition+i);
	while nextCharacter != " " {
		nextCharacter = string_char_at(string(text[text_index]),textPosition+i);
		checkString += nextCharacter;
		i++;
		if i > 50  break;
	}
	if string_width(currentLine)+string_width(checkString) > line_width {
		textOutput += "\n";
		currentLine = "";
	}
} else if currentCharacter != "" {// play sound for characters
	//audio_play_sound(snd,1,0);
}

// Reset
if string_length(textOutput) < string_length(string(text[text_index]))+3 {
	alarm[0] = textSpeed;
}
