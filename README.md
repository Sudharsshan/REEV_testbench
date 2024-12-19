# REEV_testbench
This repo contains a flutter linux app supporting linux installation and python integration to run on _Raspberry Pi 5_

## Info
---
- this flutter app is built to run natively on Linux with websocket based communication at dedicated port from python backend
- it uses websocket to communicate the python backend with flutter engine to show on the frontend **realtime!!**

## Moderator
---
- The complete authority of this magic rests in the hand of a wizard called Dr. Strange who dwells within the universe of Pi
- He monitors and controls the execution of the magic to ensure his subject's wellbeings (that's us!) by monitoring the following aspects:
1. **Status of system** - charging / discharging
2. **Voltage** of system
3. **Current** flowing through the system
4. **RPM** of the system's engine
5. **Relays** to do the switching!
6. **MOSFETS** to cast a spell in reducing the start current of heavy motors and keep them safe while starting

## Screenshots
---
![image](https://github.com/user-attachments/assets/f0f7766c-f318-4838-8f7a-1a292396da99)
![image](https://github.com/user-attachments/assets/4be850b1-27f8-443a-a5cc-90f9951b10a3)

## Schematic Diagrams
---
1. Test bench Operation plans:

![Canva.com](https://www.canva.com/design/DAGXXA0flzo/t-gp1VLu8Vwv653pR03kxA/view?utm_content=DAGXXA0flzo&utm_campaign=designshare&utm_medium=link2&utm_source=uniquelinks&utlId=h3de23407cb)

2. Test bench block circuit diagram

![Canva.com](https://www.canva.com/design/DAGXvWeu48Y/riE9m4IDqsber7L5tHB-Cw/view?utm_content=DAGXvWeu48Y&utm_campaign=designshare&utm_medium=link2&utm_source=uniquelinks&utlId=ha46d6e21e8)

4. MOSFET driving circuit

![Canva.com](https://www.canva.com/design/DAGYz9ubVCk/ViIT7J6Zuxb0CcXemlcdwA/view?utm_content=DAGYz9ubVCk&utm_campaign=designshare&utm_medium=link2&utm_source=uniquelinks&utlId=he956d4d58a)

## Raspberry Pi 5 GPIO pinout
---

![image](https://github.com/user-attachments/assets/9db1bf34-d074-4833-85bb-acb80f059bba)
<br> Utilize this image for connecting the stuff on the Pi 5
<br> _for other Pis GPIO refer internet, as Pi5 was utilized in this project_
