In this project, I tried to create a GUI to build a 2D moving stage for a microscope and operate it through a GUI.

The 2D sample stage has been built and pictures can be found in the Build Instructions. In addition, the files needed to manifacture the sample can be found under Files. 

The GUI is also functioning, but to a very limited extent. In particular, for now it is possible to:
- Open the camera using the GUI
- Change settings of the camera
- Start free-acquisition, meaning look at the raw images coming in
- Perform a basic FFT in live time, only if the the Pixel Format (which can be changed from the Raw Data page of the GUI) is BayerRG8

In order to start up the GUI:
- Open start.py file in /Software/Elchemi_1/elchemi/elchemi/
- Change the sys.path to be the path pointing to the last elchemi directory
- Run start.py

Once the GUI is open the correct actions to avoid errors are:
- Connect to the camera with the menu item on top
- Change pixel_format to RGB in the Raw Data page
- Start free rn by ticking the free run box in the Raw Data page
- If desired, start a fourier transform in the Fourier Data page

It is important to notice that for large fourier transforms the GUI will freeze because python cannot handle multiple processes at once and hence as the fast fourier transform is calculated, it will be impossible to interact with the GUI.

Two images of the GUI in operation are attached and an image of the microscope in operation is also attached.