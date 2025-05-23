### Control My Monitor - Display Swap Utility
---
A simple batch script which relies on [ControlMyMonitor](https://www.nirsoft.net/utils/control_my_monitor.html) to automate display switching on Windows Machines.

**Prerequisites:** Download [ControlMyMonitor](https://www.nirsoft.net/utils/control_my_monitor.html)

Out of the box, this script is setup to change the VCP Code 60 from 15 to 17 and vise versa.

You can use the ControlMyMonitor utility to identify the required information needed to edit this script to use yourself. You need to find the following information.

- Location of the ControlMyMonitor executable itself for **CMM**
- Monitor String for **MONITOR_RIGHT**. (This can also be the model number of the monitor itself)
- VCP Code for **INPUT_SELECT** (Probably 60)
- VCP input select values for **DP**, **HDMI1**, and **HDMI2**. (Manually change the input using monitor buttons and record the numbers)