* a fork of https://github.com/Orama-Interactive/Pixelorama

# First, tested to open the file in v4.4
* ![image](https://github.com/user-attachments/assets/11667a46-c6a0-4a63-9f9c-7f40455c049c)

* then its UI was visible in 2D panel
* ![image](https://github.com/user-attachments/assets/baf82b73-e359-41ce-b160-7508fe8cb173)

* first run but got a problem
* ![image](https://github.com/user-attachments/assets/0d00ea8f-f49f-4291-b171-0a78ba13a887)

# so, tried to open it in v4.3 by downloading godot-4.3.zip 
* then build by the following command
* `pip install scons` to install scons 
* `scons --version` to check scons
* `scons platform=windows target=editor vsproj=yes verbose=yes`
* opened `godot-4.3\godot-4.3\godot.sln`
* click `local windows debugger` button then wait the build (long time ) 
* ![image](https://github.com/user-attachments/assets/d4d30e42-8b0d-464f-ae33-bea145d8320f)
* 


```mermaid

graph LR

scons["install scons by <br>pip install scons"] --> godot4.3 --> visualstudio2022 

```
