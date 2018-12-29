#!/bin/sh
## Purpose:         Yamaha Control Script
## Author:          Matthias Skaletz firstcontact@skaletz.me
## WEB:             https://www.skaletz.me/setup/
## Last Modified:   Mi 2018-12-26 12:53:59

yrecip='192.168.11.18' # Insert your Yamaha Receiver IP
yrecport='80'          # Insert your Yamaha Receiver Port


case "$1" in
######## Main COMMANDS for Yamaha RX-V679 ##################

## POWER Section
    main-on)
        curl -d \
        "<YAMAHA_AV cmd=\"PUT\">\
        <Main_Zone>\
        <Power_Control>
        # Command for Power on
        <Power>On</Power>\
        </Power_Control>\
        </Main_Zone>\
        </YAMAHA_AV>"\
        "http://$yrecip:$yrecport/YamahaRemoteControl/ctrl"
        ;;
    main-off)
        curl -d \
        "<YAMAHA_AV cmd=\"PUT\">\
        <Main_Zone>\
        <Power_Control>
        # Command for Power Off/Standby
        <Power>Standby</Power>\
        </Power_Control>\
        </Main_Zone>\
        </YAMAHA_AV>"\
        "http://$yrecip:$yrecport/YamahaRemoteControl/ctrl"
        ;;

## Volume Section
    main-vol-mute)
        curl -d \
        "<YAMAHA_AV cmd=\"PUT\">\
        <Main_Zone>\
        <Volume>\
        # Command for Mute Main
        <Mute>On/Off</Mute>\
        </Volume>\
        </Main_Zone>\
        </YAMAHA_AV>"\
        "http://$yrecip:$yrecport/YamahaRemoteControl/ctrl"
        ;;
    main-vol-up)
        curl -d \
        "<YAMAHA_AV cmd=\"PUT\">\
        <Main_Zone>\
        <Volume>\
        # Command for Main Vol Up
        <Lvl><Val>Up 5 dB</Val><Exp></Exp><Unit></Unit></Lvl>\
        </Volume>\
        </Main_Zone>\
        </YAMAHA_AV>"\
         "http://$yrecip:$yrecport/YamahaRemoteControl/ctrl"
        ;;
    main-vol-down)
        curl -d \
        "<YAMAHA_AV cmd=\"PUT\">\
        <Main_Zone>\
        <Volume>\
        # Command for Main Vol Down
        <Lvl><Val>Down 5 dB</Val><Exp></Exp><Unit></Unit></Lvl>\
        </Volume>\
        </Main_Zone>\
        </YAMAHA_AV>"\
        "http://$yrecip:$yrecport/YamahaRemoteControl/ctrl"
        ;;

## Scene Functions
   main-scene-net)
        curl -d \
        "<YAMAHA_AV cmd=\"PUT\">\
        <Main_Zone>\
        # Scene INET RADIO
        <Input>\
        <Input_Sel>NET RADIO</Input_Sel>\
        </Input>\
        </Main_Zone>\
        </YAMAHA_AV>"\
        "http://$yrecip:$yrecport/YamahaRemoteControl/ctrl"
        ;;
   main-scene-bd)
        curl -d \
        "<YAMAHA_AV cmd=\"PUT\">\
        <Main_Zone>\
        # Scene BD
        <Input>\
        <Input_Sel>AUDIO1</Input_Sel>\
        </Input>\
        </Main_Zone>\
        </YAMAHA_AV>"\
        "http://$yrecip:$yrecport/YamahaRemoteControl/ctrl"
        ;;
   main-scene-tv)
        curl -d \
        "<YAMAHA_AV cmd=\"PUT\">\
        <Main_Zone>\
        # Scene TV
        <Input>\
        <Input_Sel>HDMI1</Input_Sel>\
        </Input>\
        </Main_Zone>\
        </YAMAHA_AV>"\
        "http://$yrecip:$yrecport/YamahaRemoteControl/ctrl"
        ;;


######## ZONE2 COMMANDS for Yamaha RX-V679 ##################

## POWER Section
    zone2-on)
        curl -d \
        "<YAMAHA_AV cmd=\"PUT\">\
        <Zone_2>\
        <Power_Control>
        # Command for Power on
        <Power>On</Power>\
        </Power_Control>\
        </Zone_2>\
        </YAMAHA_AV>"\
        "http://$yrecip:$yrecport/YamahaRemoteControl/ctrl"
        ;;
    zone2-off)
        curl -d \
        "<YAMAHA_AV cmd=\"PUT\">\
        <Zone_2>\
        <Power_Control>
        # Command for Power Off/Standby
        <Power>Standby</Power>\
        </Power_Control>\
        </Zone_2></YAMAHA_AV>"\
        "http://$yrecip:$yrecport/YamahaRemoteControl/ctrl"
        ;;

    *)
   #     echo "       $0 #####################################"
   #     echo "       $0 ######### YAMAHA Control ############"
   #     echo "       $0 #####################################"
   #     echo "       $0 ## POWER ##"
   #     echo "Usage: $0 {main-on|main-off}"
   #     echo "       $0 ## VOLUME ##"
   #     echo "Usage: $0 {main-vol-mute|main-vol-up|main-vol-down}"
   #     echo "       $0 ## SCENES ##"
   #     echo "Usage: $0 {main-scene-net|main-scene-bd|main-scene-tv}"
   #     echo "       $0 #####################################"
   #     echo "       $0 ## Same With Zones instead of Main ##"
   #     echo "       $0 #####################################"
        exit 2
esac

exit 0
