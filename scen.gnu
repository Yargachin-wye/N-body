set terminal png
set output "graph.png"

set xrange [2:8]

set yrange [0:3.5]

set grid

set ytics 1

set xtics 2

set ylabel "Speedup"

set xlabel "Number of threads"

plot "./TestTable.txt" u 1:2 with linespoints lw 3 pt 7 ps 1 title "v1 (critical section)", "./TestTable.txt" u 1:3 with linespoints lw 3 pt 7 ps 1 title "v2 (atomic)", "./TestTable.txt" u 1:4 with linespoints lw 3 pt 7 ps 1 title "v3 (N locks)", "./TestTable.txt" u 1:5 with linespoints lw 3 pt 7 ps 1 title "v4 (additional calculations)", "./TestTable.txt" u 1:6 with linespoints lw 3 pt 7 ps 1 title "v5 (additional memory)"