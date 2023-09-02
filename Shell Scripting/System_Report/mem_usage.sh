:'
    Title : Mem Opertaion 
    Author : amitanshu Abhishek
    Date : 20th Aug 2023
'

function mem_stats {
    echo "........................................"
    echo "..........MEMORY USAGE.............."
    echo "........................................"
    ps -eocomm,pmem | grep -E -v '(0.0)' >> "$1".txt
}