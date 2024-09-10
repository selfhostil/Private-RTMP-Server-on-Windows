Here is the translated instruction in English, ready to be copied into WordPress:
Setting Up and Running a Private RTMP Server on Windows

In this article, I will explain how to set up a private RTMP server on Windows using Docker. This solution allows you to easily stream content through OBS Studio and view it on Android devices, computers, and more. It is perfect for creating a private streaming channel at home or for using as a live screensaver.
Step 1: Installing Docker

To get started, you need to install Docker Desktop on your computer:

    Download and install Docker Desktop from the official site: Docker Desktop.
    After installation, launch Docker and make sure the icon appears in the system tray (bottom right corner of your screen).

Step 2: Download the Project and Run the .bat File

Once Docker is installed, you'll receive a ZIP file that contains all the necessary project files to run the RTMP server.

    Extract the ZIP file you received into a folder on your computer, for example: C:\my_rtmp_server.
    After extracting, open the folder and double-click the .bat file (for example: start_rtmp_server.bat). This file will build and run the RTMP server automatically using Docker.

Step 3: Setting Up OBS Studio for Streaming

Now, let's use OBS Studio to stream content to your private RTMP server.

    Open OBS Studio.
    Go to Settings → Stream.
    Under Service, select Custom.
    In the Server field, enter the following address:

    arduino

    rtmp://localhost/live

    In the Stream Key field, enter any stream key you'd like (for example: test).
    Click Start Streaming to begin the broadcast.

Step 4: Viewing the Stream on Your Computer Using VLC

To view the stream you just started, we'll use VLC media player:

    Open VLC Media Player on your computer.
    In the top menu, click Media → Open Network Stream.
    Enter the RTMP address of the stream, for example:

    arduino

    rtmp://localhost/live/test

    (Replace test with the stream key you used in OBS).
    Click Play and the stream will start playing.

Step 5: Viewing the Stream on Android Devices Using VLC

To view the stream from Android devices connected to your home network:

    Download the VLC for Android app from the Play Store.
    Make sure your Android device is connected to the same home network as the computer running Docker.
    Open VLC in the app and tap Stream.
    Enter the RTMP address, for example:

    vbnet

    rtmp://<Your PC's IP Address>/live/test

    (To find your computer's IP address, open the Command Prompt on your computer, type ipconfig, and look for the address next to "IPv4 Address").
    Tap Play and the stream will start playing on your Android device.

Why Is This Solution Useful?

This solution is perfect for anyone who wants to create a private streaming channel on their home network, where they can broadcast content to any device connected to the network. Additionally, the RTMP server can be used as a live screensaver, continuously streaming videos or other content to all devices in the home. The solution runs on Windows and is based on Docker, making installation and usage easy.