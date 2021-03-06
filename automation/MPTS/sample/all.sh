set -o history -o histexpand
should_exit(){
   if [ $1 -ne 0 ];
   then
       echo "Configuration failed Exit Status `history | tail -n 3 | awk 'NR==2 { print; exit }'`"
       exit
   fi
}

#### to create the configuration
#sh ConfigurationFromCSV.sh smoketest.csv
#should_exit $?

#### to run BST and MPTS
sh automation.sh
should_exit $?

#### to run HA
#sh autoHa.sh
#should_exit $?


