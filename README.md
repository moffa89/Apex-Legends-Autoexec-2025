# 07/14/2025 NEW! [Windows Gaming Tweaks](https://github.com/moffa89/Windows-Gaming-Tweaks) repo!

# Instructions
1. Download [autoexec.cfg](https://github.com/moffa89/Apex-Legends-Autoexec-2025/blob/main/autoexec.cfg)
2. Move [autoexec.cfg](https://github.com/moffa89/Apex-Legends-Autoexec-2025/blob/main/autoexec.cfg) to the games directory cfg folder (Usually in C:\Program Files (x86)\Steam\steamapps\common\Apex Legends\cfg).
3. Rightclick on the game inside of Steam and go to "Properties".
4. Switch to the "General" Tab.
5. Add the command in launch options "+exec autoexec.cfg +cl_is_softened_locale 1 -dev" (without the Quotation marks).

| Command | Description |
| --- | --- |
| `+exec autoexec` | Executes the autoexec.cfg file on startup |
| `+cl_is_softened_locale 1` | Removes blood effects and visual clutter |
| `-dev` | Skips EA intro on startup, can cause HUD flicker issues on NVIDIA cards |
| `-no_render_on_input_thread` | Launch argument -no_render_on_input_thread has been made the default for players with 8 or more cores on their CPU. This improves performance stability and input latency, especially when paired with high-polling rate mice or controllers. It can still be enabled manually for players with fewer CPU cores, and it can be disabled with -render_on_input_thread. |

# Consistant Frame Caping
- Capping FPS is good or bad? and How to cap it? Answer : [Watch this video](https://youtu.be/N8ZUqT6Tfiw)
6. In-game cap or RTSS but now RTSS is optional  
- In-game cap, Change fps_max 0 (in [autoexec.cfg](https://github.com/moffa89/Apex-Legends-Autoexec-2025/blob/main/autoexec.cfg) to your monitor hz because [here](https://youtu.be/_73gFgNrYVQ) (Lowest latency)
- [RTSS](https://www.guru3d.com/files-details/rtss-rivatuner-statistics-server-download.html) for framerate caping and it is the best in frametime consistancy (Adds some latency but smoother than in-game cap)

![RTSS Settings](https://github.com/moffa89/Apex-Legends-Autoexec-2025/blob/main/RTSS/RTSS_settings.png)
![RTSS Settings_2](https://github.com/moffa89/Apex-Legends-Autoexec-2025/blob/main/RTSS/RTSS_settings_2.png)

# How to disable the Intro the second way
- Go to Your Drive > Program Files > Steam > steamapps > common > Apex Legends > media
- In this media file you should see two files named "intro.bik" and "respawn.bik"
- What you have to do is rename both of these files to something else and KEEP THE .bik PORTION. DO NOT remove the .bik or delete these files.
- Example: rename intro.bik and respawn.bik to apex.bik and legends.bik
