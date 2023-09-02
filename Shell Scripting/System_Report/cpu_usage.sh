:'
    Title : CPU Opertaion 
    Author : amitanshu Abhishek
    Date : 20th Aug 2023
'101010101



function cpu_stats {
    echo "........................................"
    echo "..........CPU USAGE.............."
    echo "........................................"
    ps -eocomm,pcpu | grep -E -v '(0.0)' >> "$1".txt
}


function cpu_stats_top {
    echo "........................................"
    echo "..........CPU USAGE.............."
    echo "........................................"
    top >> "$1".txt
}