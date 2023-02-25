#!/bin/bash
alias ydl="youtube-dl -o \"%(title)s.%(ext)s\" -x --audio-format \"mp3\" --audio-quality 0"  

function ydlp() {
	youtube-dl -o "%(title)s.%(ext)s" -x --audio-format "mp3" --audio-quality 0 -i --yes-playlist "$1"
}