* This is a fork of https://github.com/Orama-Interactive/Pixelorama
* The purpose is just to learn how Pixelorama works and maybe I try to simplify the code for the feature that I don't need for my personal use

## saw the update based on godot4.4
* [previously it did not work](https://github.com/jamad/Pixelorama/wiki/Old-info#first-tested-to-open-the-file-in-v44)
* [After fetching from upstream to forked repository and updating data](https://github.com/jamad/Pixelorama/wiki/How-to-fetch-upstream-updates), Pixelorame worked on godot v4.4 as expected
* ![image](https://github.com/user-attachments/assets/593d7546-46b7-4089-a679-921aa0ff76cb)

## Learning how to use Pixelorama
* [Note on what I tried when started Pixelorama](https://github.com/jamad/Pixelorama/wiki) 

# Summary

```mermaid

graph LR

godot-4.3.zip -- extracted --> godot-4.3 --> scons_command -->  godot.sln --> visualstudio2022 -- build -->exe["bin/godot.windows.editor.x86_64.exe"]
scons["install scons by <br>pip install scons"] --> scons_command

godot-4.3 -->project.godot

exe --import --> project.godot --> 2D --> run_Pixelorama 

```

# so, tried to open it in v4.3 by downloading godot-4.3.zip 
* then build by the following command
* `pip install scons` to install scons 
* `scons --version` to check scons
* `scons platform=windows target=editor vsproj=yes verbose=yes`
* opened `godot-4.3\godot-4.3\godot.sln`
* click `local windows debugger` button then wait the build (long time ) 
* ![image](https://github.com/user-attachments/assets/d4d30e42-8b0d-464f-ae33-bea145d8320f)
* imported "Pixelorama-master\project.godot"
* ![image](https://github.com/user-attachments/assets/3d032459-eeff-4951-a1e6-7c45e4e0e5fa)
* clicked 2D mode, then ran the project
* ![image](https://github.com/user-attachments/assets/0c341163-96c3-4d38-93fb-b22291c7599c)
* then Pixelorama worked as expected
* ![image](https://github.com/user-attachments/assets/e55905eb-58ad-4bd4-8ac6-5b5e3afb8586)



