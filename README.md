
# Workflow

This repository documents a custom Windows workflow tailored to personal preferences, including essential software and keymaps for productivity.

> **Note**  
> "This *__Windows__* workflow based only on my and some standard preferences. It might not reflect your needs directly. Feel free to use it however you like! :relaxed: "
## Software Used

| Software                  | Description                                  |
|---------------------------|----------------------------------------------|
| **WezTerm**               | Customizable terminal emulator              |
| **PowerShell + Oh My Posh** | Windows main command-line shell             |
| **Microsoft PowerToys**   | Enhanced Windows system utilities           |
| **GlazeWM + Zebar**       | Tiling window manager                       |
| **Neovim**                | Highly customizable code and text editor    |

---

## Personal Key Maps

### **WezTerm**

| Combination       | Action                              |
|-------------------|-------------------------------------|
| `Ctrl` + `Shift` + `V` | Terminal Vertical Split            |
| `Ctrl` + `Shift` + `H` | Terminal Horizontal Split          |
| `Ctrl` + `Q`           | Kill Selected Terminal Split       |
| `Ctrl` + `N`           | Jump to Next Terminal Split        |
| `Ctrl` + `+`           | Increase Font Size        |
| `Ctrl` + `-`           | Decrease Font Size        |
| `Ctrl` + `Shift` + `B` | Toggle Terminal Transperent Background |
| `Ctrl` + `M`           | Call "make" in Terminal |

### **Microsoft PowerToys**

| Combination       | Action               |
|-------------------|----------------------|
| `Win` + `S`         | Search Menu          |
| `Win` + `Space`     | Switch Language      |

### **Neovim**

> **Key Prefix**: `<Leader>` = `Space`

#### General Keymaps

| Combination            | Action                             |
|------------------------|------------------------------------|
| `<Leader>` + `P` + `V` | Open Explorer                     |
| `<Leader>` + `P` + `F`     | Telescope Find Files              |
| `<Leader>` + `P` + `G`     | Telescope Live Grep               |
| `<Leader>` + `P` + `B`     | Telescope Buffers                 |
| `<Leader>` + `P` + `H`     | Telescope Help Tags               |
| `<Leader>` + `A`         | Harpoon Mark File                 |
| `Ctrl` + `E`             | Harpoon Open Marked File List     |
| `Ctrl` + `H` , `J` , `K` , `L`    | Harpoon Jump to Marked File       |
| `<Leader>` + `U`         | Toggle Undotree                   |
| `<Leader>` + `B` + `G`   | Toggle Neovim Transperent Background |

#### Navigation & Code Actions

| Combination                | Action                         |
|----------------------------|--------------------------------|
| `<Leader>` + `G` + `D`         | Go to Definition               |
| `<Leader>` + `G` + `R`         | Go to References               |
| `<Leader>` + `G` + `I`         | Go to Implementation           |
| `<Leader>` + `G` + `Shift` + `D` | Go to Declaration              |
| `<Leader>` + `C` + `A`         | Execute Code Action            |

#### Completion & Documentation

| Combination        | Action                                    |
|--------------------|------------------------------------------|
| `Tab`              | Completion Select Next Item              |
| `Shift` + `Tab`      | Completion Select Previous Item          |
| `Enter`            | Completion Confirm                       |
| `Shift` + `K`         | Documentation Information                |

---

## Configurations

All configuration files are located in this repository. While the keymaps listed above represent commonly used actions, the full configuration might include additional setups.
