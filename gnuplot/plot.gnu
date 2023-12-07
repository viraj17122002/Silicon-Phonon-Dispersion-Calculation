
#set line style  colors   
### Preferable numbers 7,3,16,19,20,13,18,5 

set style line 100 linecolor rgb "#000000"  linewidth 1.5 linetype -1 	pt 7 ps 0.75	 ### black
set style line 1 linecolor rgb "#B8860B"  linewidth 1.5 linetype -1 	pt 7 ps 0.75  ### darkgoldenred
set style line 2 linecolor rgb "#0000FF"  linewidth 1.5 linetype -1 pt 13 ps 1.15 ### blue
set style line 3 linecolor rgb "#8A2BE2"  linewidth 1.5 linetype -1 pt 7 ps 0.75 ### blueviolet
set style line 4 linecolor rgb "#A52A2A"  linewidth 1.5 linetype -1  pt 7 ps 0.75 ### brown 
set style line 5 linecolor rgb "#DC143C"  linewidth 1.5 linetype -1  pt 7 ps 0.85 ### crimson
set style line 51 linecolor rgb "#8B0000"  linewidth 1.5 linetype -1  pt 7 ps 0.75 ### darkred
set style line 6 linecolor rgb "#006400"  linewidth 1. linetype -1  pt 7 ps 0.75 ### darkgreen
set style line 7 linecolor rgb "#4B0082"  linewidth 1.5 linetype -1 pt 7 ps 0.75 ### indigo
set style line 8 linecolor rgb "#FF4500"  linewidth 1.5 linetype -1 pt 7 ps 0.75 ### orangered

set style line 9 linecolor rgb "#7FFFD4"  linewidth 1.5 linetype -1 pt 7 ps 0.75 ### aquamarine
set style line 10 linecolor rgb "#5F9EA0"  linewidth 1.5 linetype -1 pt 7 ps 0.75 ### cadetblue 
set style line 11 linecolor rgb "#7FFF00"  linewidth 1.5 linetype -1 pt 7 ps 0.75 ### chartreuse
set style line 12 linecolor rgb "#00FFFF"  linewidth 1.5 linetype -1  pt 7 ps 0.75 ### aqua

set style line 13 linecolor rgb "#FF8C00"  linewidth 1.5 linetype -1 pt 7 ps 0.75 ### darkorange
set style line 14 linecolor rgb "#FF00FF"  linewidth 1.5 linetype -1  pt 7 ps 0.75 ### fuchsia
set style line 15 linecolor rgb "#7F7F7F"  linewidth 1.5 linetype -1 pt 7 ps 0.75 ### gray
set style line 16 linecolor rgb "#F08080"  linewidth 1.5 linetype -1  pt 7 ps 0.75 ### lightcoral

set style line 17 linecolor rgb "#FF00FF"  linewidth 1.5 linetype -1 pt 7 ps 0.75 ### magenta
set style line 18 linecolor rgb "#800000"  linewidth 1.5 linetype -1  pt 7 ps 0.75 ### maroon
set style line 19 linecolor rgb "#DB7093"  linewidth 1.5 linetype -1  pt 7 ps 0.75 ### palevioletred
set style line 20 linecolor rgb "#4169E1"  linewidth 1.5 linetype -1 pt 7 ps 0.75 ### royalblue



set pointsize 1.25
set encoding iso_8859_1

set xlabel 'Wave vector ({/Arial-Bold k})'
set ylabel 'Frequency ( cm^{-1} )'

conv = 33.4 ##THz to cm^-1
y1=-200
y2=250

#0.00000000 0.18288250 0.28846960 0.49964380
#0.00000000 0.16829330 0.25244000 0.37144140 0.51718770

b1=   1.0000
b2=   1.7071
b3=   2.4142
b4=   3.2802
b5=   4.1463



x1=0
x2=b5 

set y2tics y1,100,y2
set yrange[y1:y2]
set xrange[x1:x2]

set xtics ( "{/Symbol G}" 0, "{H}" b1,   "{N}" b2, "{/Symbol G}" b3, "{P}" b4 ,"{H}" b5 )
set x2tics ("[0,0,0]" 0, "[1/2,-1/2,1/2]" b1,   "[0,0,1/2]" b2, "[0,0,0]" b3, "[1/4,1/4,1/4]" b4, "[1/2,1/2,1/2]" b5 )  font ",12"



Ef = 0

plot 'freq.plot' using 1:($2)  w l ls 2  notitle 
#, 'exp.data' using 1:2  w p ls 2  title 'Sekine et al.', 'GM_K_LA_T1.data' using 1:2  w p ls 5 notitle, 'GM_K_TA_T3.data' using 1:2  w p  ls 5 notitle, 'GM_M_sigma1_LA.data' using 1:2  w p ls 5 notitle, 'GM_M_sigma3_TA.data' using 1:2  w p ls 5  title  'Sourisseau et al.'

set arrow 1 from b1,y1  to b1,y2  lw 0.6   nohead   
set arrow 2 from b2,y1  to b2,y2  lw 0.6  nohead   
set arrow 3 from b3,y1  to b3,y2  lw 0.6  nohead   
set arrow 4 from b4,y1  to b4,y2  lw 0.6  nohead   
set arrow 5 from b5,y1  to b5,y2  lw 0.6  nohead   
#set arrow 6 from b6,y1  to b6,y2  lw 0.6  nohead   


set title 'Harmonic phonon dispersion' 

#set size ratio 0.71
#set terminal postscript enhanced landscape "Arial, 16 "

se te po color eps enhanced  font "Arial, 16 "
se ou "bulk.eps"
rep
se ou
q

