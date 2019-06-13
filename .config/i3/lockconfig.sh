#!/bin/sh

# Colors
p='#424242ff'
pl='#6d6d6dff'
pd='#1b1b1bff'
s='#607d8cff'
sl='#8eacbcff'
sd='#34515fff'
td='#1c313aff'
t='#ffffffff'
b='#000000ff'
prime='#12bccbff'
trans='#00000000'

#layout
radius=120
ring_width=15

#wrong
c_w_ring=$b
c_w_in=$s

#verify
c_v_ring=$p
c_v_in=$s

#default
c_in=$s
c_ring=$sd
#c_line=$sd
c_sep=$trans
c_keyhl=$t
c_bshl=$b

#misc
blur=5
screen=0

#textcolor
tc_time=$sd
tc_verif=$sd
tc_date=$sd
tc_layout=$sd
tc_wrong=$sd

#textsizes
t_time=24
t_verif=20
t_date=14
t_layout=14
t_wrong=20

#fonts
f_time="Hack"
f_verif="Hack"
f_date="Hack"
f_layout="Hack"
f_wrong="Hack"

#strings
str_time="%H:%M:%S"
str_date="%Y-%m-%d"


i3lock \
	--radius=$radius			\
	--ring-width=$ring_width	\
	\
	--insidevercolor=$c_v_in	\
	--ringvercolor=$c_v_in		\
	\
	--insidewrongcolor=$c_w_in	\
	--ringwrongcolor=$c_w_ring	\
	\
	--insidecolor=$c_in			\
	--ringcolor=$c_ring			\
	--separatorcolor=$c_sep		\
	--keyhlcolor=$c_keyhl		\
	--bshlcolor=$c_bshl			\
	--line-uses-inside			\
	\
	--timecolor=$tc_time		\
	--verifcolor=$tc_verif		\
	--datecolor=$tc_date		\
	--layoutcolor=$tc_layout	\
	--wrongcolor=$tc_wrong		\
	\
	--screen $screen			\
	--blur $blur				\
	--clock						\
	--indicator					\
	--timestr=$str_time			\
	--datestr=$str_date			\
	--keylayout 2				\
	\
	--timesize=$t_time			\
	--verifsize=$t_verif		\
	--datesize=$t_date			\
	--layoutsize=$t_layout		\
	--wrongsize=$t_wrong		\
	\
	--time-font=$f_time			\
	--verif-font=$f_verif		\
	--date-font=$f_date			\
	--layout-font=$f_layout		\
	--wrong-font=$f_wrong		

	#--linecolor=$c_line		\
