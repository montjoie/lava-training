#!/bin/bash
						#run this in "releng-scripts" dir
while [ -n "$1" ]
do
                case "$1" in
                                -a) echo "-a option: 1st install" 
                                    #cd releng-scripts/
                                    apt-get install lava-tool
                                    echo "******* enter tokendemo******"
                                    lava-tool auth-add http://demo@lavabox:10080/RPC2/ 
                                    ;;
                                -b) echo "-b option : simple test submissions"
                                    ./utils/create-jobs --machine raspberrypi3 -o myjob.yaml --callback-from lab-baylibre-lavabox --callback-to Baylibre
                                    lava-tool submit-job http://demo@lavabox:10080/RPC2/ myjob.yaml
                                    ;;
                                -c) echo "-c option : test submissions with callback" 
                                    ./utils/create-jobs.py --machine raspberrypi3 -o myjob.yaml --test health-test --callback-from lab-baylibre-lavabox --callback-to Baylibre
                                    lava-tool submit-job http://demo@lavabox:10080/RPC2/ myjob.yaml
				    ;;
                                *) echo "Option $1 not recognized" ;;
                esac
                shift
done
