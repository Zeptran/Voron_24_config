# Voron Klipper Backup
This is my Voron Config Backup for my V2.4

Voron 2.4 300mm v2.2145

# Failures
While using the wrong kind of activated charcoal this happened to my printer. I was able to fix it with a lot of scrubbing and degreasing of the rails and screws. 
**Buy the right kind of charcoal!!**

![acitve-charcoal](https://user-images.githubusercontent.com/21012208/212411829-d0607abd-0711-45b2-b020-455a279eb7ac.png)
![acitve-charcoal_2](https://user-images.githubusercontent.com/21012208/212412262-d9c6145b-792f-4adc-8b76-1028615997db.png)


# Features
- [Git backup](https://github.com/th33xitus/kiauh/wiki/How-to-autocommit-config-changes-to-github%3F) - using [SSH](https://docs.github.com/en/authentication/connecting-to-github-with-ssh) authentication
- [Nozzle Scrubber](https://github.com/VoronDesign/VoronUsers/tree/master/printer_mods/edwardyeeks/Decontaminator_Purge_Bucket_&_Nozzle_Scrubber)
- [Resonance testing with image processing](https://www.klipper3d.org/Measuring_Resonances.html) - pushing to [github](resonances) to view them is pretty easy (Thanks richardjm for the Inspiration)
- [ERCF](https://github.com/EtteGit/EnragedRabbitProject) - Using ERCF EASY BRD
- [ERCF-Software-V3 "Happy Hare"](https://github.com/moggieuk/ERCF-Software-V3)

# Other klipper backups I've found useful
- [https://github.com/AndrewEllis93/v2.247_backup_klipper_config](https://github.com/AndrewEllis93/v2.247_backup_klipper_config)
- [https://github.com/pushc6/VoronConfig](https://github.com/pushc6/VoronConfig)
- [https://github.com/kageurufu/3dp-voron2/tree/master/printer](https://github.com/kageurufu/3dp-voron2/tree/master/printer)
- [https://github.com/wile-e1/klipper_config](https://github.com/wile-e1/klipper_config)
- [https://github.com/th33xitus/klipper_config](https://github.com/th33xitus/klipper_config)
- [https://github.com/jktightwad/Klipper24Config](https://github.com/jktightwad/Klipper24Config)
- [https://github.com/mjoconr/Voron2.4-Config](https://github.com/mjoconr/Voron2.4-Config)
- [https://github.com/zellneralex/klipper_config](https://github.com/zellneralex/klipper_config)
- [https://github.com/Frix-x/klipper-voron-V2](https://github.com/Frix-x/klipper-voron-V2)
- [https://github.com/richardjm/voronpi-klipper-backup](https://github.com/richardjm/voronpi-klipper-backup)

# Make menuconfigs

## Klipper - ERCF Board

![Klipper-ERCF-Board](https://user-images.githubusercontent.com/21012208/212410223-20fda1a1-e04c-4a59-8771-8a131c3082a4.png)

To Flash the board use tweezers to short the RST Pin on the controller two times. (Blinking pattern should change)
``` 
sudo service klipper stop
make clean 
make
sudo /usr/local/bin/bossac -i -d -p /dev/ttyACM2 -e -w -v -R --offset=0x2000 out/klipper.bin
sudo service klipper start
```

All other Boards with the auto MCU Update through Mainsail

# Changes
- 13.01.2023 
  - Switch from Stock ERCF Software to ERCF-Software-V3 "Happy Hare"  [https://github.com/moggieuk/ERCF-Software-V3](https://github.com/moggieuk/ERCF-Software-V3)
  - Creation of Config Backup Macro
  - Setup and Calibration of "Happy Hare"
  - Integration of Automatic Input Shaper Pictures to Github
