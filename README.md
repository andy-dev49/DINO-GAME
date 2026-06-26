# 🦖 Dino Game (Godot 4.6)

An endless 2D runner game built from scratch using the **Godot Engine 4.6**. The game features responsive physics, progressive difficulty, and a custom local save system. 

---

### 📸 Project Preview

<img width="1149" height="648" alt="dino_game Screenshot 2026 06 26 - 21 46 11 10" src="https://github.com/user-attachments/assets/b285cf4d-c5e5-415d-bd99-bb49991975ce" />

---

### 🚀 Key Technical Features

* **Variable Jump System:** Responsive and dynamic jumping mechanics where the jump height is determined by the duration of the button press, providing tight and precise player control.
* **5-Layer Parallax Background:** A beautifully synchronized 5-layer scrolling background that creates a smooth pseudo-3D depth effect as the player runs.
* **Dynamic Speed Progression:** To keep the gameplay challenging, the game speed automatically increases by 50 units every 100 points scored.
* **Binary Save/Load System:** High scores are saved and retrieved locally using Godot's binary `FileAccess` (`store_32` and `get_32`), ensuring fast and lightweight data persistence.

---

### ⚙️ Game Mechanics & Physics (In-Action)

<img width="800" height="450" alt="dino damage" src="https://github.com/user-attachments/assets/81fd51ee-da5c-4482-b1ef-41cdd3e59ffb" />

---

### 🛠️ Tech Stack & Concepts Used

* **Engine:** Godot 4.6 (Compatibility Mode)
* **Language:** GDScript
* **Patterns:** Object Pooling (for obstacles), State checking, and Local Data Persistence.

---

### 💀 Game Over State

<img width="800" height="450" alt="ezgif-2d7874a2c2ee7909" src="https://github.com/user-attachments/assets/6dd8f10d-e409-4d6e-9d9d-bf60cb0fd371" />


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
