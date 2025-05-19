
# Workflow

This repository documents a custom Windows + WSL workflow tailored to personal preferences, including essential software and keymaps for productivity and comfort.

> **Note**  
> "This *__Windows__* workflow based only on my and some standard preferences. It might not reflect your needs directly. Feel free to use it however you like! :relaxed:"
## Software Used

| Software                   | Description                                 |
|----------------------------|---------------------------------------------|
| **Alacritty**              | Quick terminal emulator                     |
| **Microsoft PowerToys**    | Enhanced Windows system utilities           |
| **GlazeWM + Zebar**        | Tiling window manager                       |
| **WSL**                    | Linux development environment               |
| **Neovim**                 | Highly customizable text editor             |

---

## Personal Key Maps

### **Alacritty**

| Combination            | Action                                   |
|------------------------|------------------------------------------|
| `Ctrl` + `Shift` + `C` | Clipboard Copy                           |
| `Ctrl` + `Shift` + `V` | Clipboard Paste                          |
| `Ctrl` + `+`           | Increase Font Size                       |
| `Ctrl` + `-`           | Jump to Next Terminal Split              |
| `Ctrl` + `M`           | Call "make" in Terminal                  |

### **Microsoft PowerToys**

| Combination       | Action               |
|-------------------|----------------------|
| `Alt` + `S`       | Search Menu          |
| `Win` + `Space`   | Switch Language      |

### **Neovim**

> **Key Prefix**: `<Leader>` = `Space`

#### General Keymaps

| Combination                       | Action                                |
|-----------------------------------|---------------------------------------|
| `<Leader>` + `P` + `V`            | Open Explorer                         |
| `<Leader>` + `T` + `F`            | Telescope Find Files                  |
| `<Leader>` + `T` + `G`            | Telescope Live Grep                   |
| `<Leader>` + `T` + `B`            | Telescope Buffers                     |
| `<Leader>` + `T` + `T`            | Telescope Themes                      |    
| `<Leader>` + `T` + `H`            | Telescope Help Tags                   |
| `<Leader>` + `A`                  | Harpoon Mark File                     |
| `Ctrl` + `E`                      | Harpoon Open Marked File List         |
| `Ctrl` + `H` , `J` , `K` , `L`    | Harpoon Jump to Marked File           |
| `<Leader>` + `U`                  | Toggle Undotree                       |

#### Navigation & Code Actions

| Combination                       | Action                                |
|-----------------------------------|---------------------------------------|
| `<Leader>` + `G` + `D`            | View Definition                       |
| `<Leader>` + `G` + `Shift` + `D`  | Go to Definition                      |
| `<Leader>` + `C` + `A`            | Open Code Action                      |
| `<Leader>` + `D`                  | Diagnostic Under Cursor               |
| `<Leader>` + `Shift` + `D`        | Line Diagnostic                       |
| `<Leader>` + `N` + `D`            | Next Diagnostic                       |
| `<Leader>` + `P` + `D`            | Previous Diagnostic                   |
| `Crtl` + `N`                      | Completion Select Next Item           |
| `Ctrl` + `P`                      | Completion Select Previous Item       |
| `Enter`                           | Completion Confirm                    |
| `Shift` + `K`                     | Documentation Information             |

---

## Configurations

All configuration files are located in this repository. While the keymaps listed above represent commonly used actions, the full configuration might include additional setups.

#### Additional setups

* Windows debloating.
* Setting environmental variables.
* Configuring start up for GlazeWM.
* Downloading and setting `Iosevka Term` font.
* Setting up WSL with all needed tools: libfuse2, make, npm, python3, nvim, etc.

#### Resources

* [WSL on Windows setup.](https://youtu.be/mFrOCZZSZ14) 
* [Nvim configuration from scratch on linux.](https://youtu.be/ZjMzBd1Dqz8) 



