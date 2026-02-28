# System Configuration

## Mouse

### Emulatate Middle Click

https://forums.linuxmint.com/viewtopic.php?t=282192

	MrEen	

	Re: Middle buton emulation in 19 XFCE?

	Post by MrEen » Sun Nov 25, 2018 2:51 am
	Another option.

	Run `xinput list` to find the id# of the mouse, then `xinput list-props id#` to get the properties you can set. Hopefully you'll see something like "Evdev Middle Button Emulation (290): 0"

	My mouse id was 11, so to add emulation, I did `xinput set-prop 11 290 1` The first test after setting this didn't seem to work, but I just didn't wait long enough.

	Assuming that works, you'll want to put that set-prop bit into a script to run at startup as well as when resuming from suspend. Adding a startup script alone won't help after suspending I've read, though not tested.

	A note: Most instructions I found used names instead of ID numbers, and that is probably better, but in my case I couldn't figure out the workaround when ID number refers to a USB receiver that is the same for the keyboard. If you use names, it would look like `xinput set-prop "Some Mouse" "Evdev Middle Button Emulation" 1`

	Hope that helps.
	Top


On my latest Linux Mint 22.1 (XFCE):

	xinput set-prop 12 305 1
	
