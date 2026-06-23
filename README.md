# 🦖 Dino Game (Godot 4.6)

An endless 2D runner game built from scratch using the **Godot Engine 4.6**. The game features responsive physics, progressive difficulty, and a custom local save system. 

---

### 🚀 Key Technical Features

* **Variable Jump System:** Responsive and dynamic jumping mechanics where the jump height is determined by the duration of the button press, providing tight and precise player control.
* **5-Layer Parallax Background:** A beautifully synchronized 5-layer scrolling background that creates a smooth pseudo-3D depth effect as the player runs.
* **Dynamic Speed Progression:** To keep the gameplay challenging, the game speed automatically increases by 50 units every 100 points scored.
* **Binary Save/Load System:** High scores are saved and retrieved locally using Godot's binary `FileAccess` (`store_32` and `get_32`), ensuring fast and lightweight data persistence.

---

### 🛠️ Tech Stack & Concepts Used

* **Engine:** Godot 4.6 (Compatibility Mode)
* **Language:** GDScript
* **Patterns:** Object Pooling (for obstacles), State checking, and Local Data Persistence.

---

### 🎮 Controls

* **`Space`:** Variable Jump (Hold longer for a higher jump).
* **`Down Arrow`:** Duck / Crouch to avoid low obstacles.
* **`R`:** Restart the game after Game Over.

---

### 🎨 Credits & Assets

* **Art & Assets:** The background layers, sprites, and environmental assets used in this project were sourced from a tutorial/creator on YouTube. Massive thanks to the community for providing these learning resources!

---

### 📂 Project Structure

* `/assets`: Contains retro fonts, sound effects, and multi-layered Parallax background sprites.
* `/scenes`: Modular scenes for the Dino player, obstacles, and the main game manager.
* `main.gd`: The core game logic managing timers, score calculation, speed progression, and save states.

---
_Developed by Andy Builds as part of my Indie Game Dev journey._
