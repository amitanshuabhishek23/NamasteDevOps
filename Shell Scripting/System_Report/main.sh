:'
    Title : Main File 
    Author : amitanshu Abhishek
    Date : 20th Aug 2023
'

echo $HOSTNAME
source cpu_usage.sh
source mem_usage.sh
source email.sh
source file_op.sh

echo "
    Select your choice: 
    1. CPU Mem : Enter CPU/cpu/Cpu
    2.Mem Stats : Enter Mem/mem/
    3. All (CPU , Mem)
    4. None 
    0.Exit
"

read -rp "Enetr your choice " : choice
read -rp "Enetr your Output File Name " : Output_File_Name
cretate_file "$Output_File_Name"

case $choice in
1 | cpu | CPU | Cpu)
    cpu_stats "$Output_File_Name"
    ;;
2 | mem | MEM | Mem)
    mem_stats "$Output_File_Name"
    ;;
3 | All | all | ALL)
    cpu_stats "$Output_File_Name"
    mem_stats "$Output_File_Name"
    ;;
4 | None | none | NONE) ;;

0)
    exit 0
    ;;
*)
    echo "Please enter the valid input"
    exit 1
    ;;
esac
