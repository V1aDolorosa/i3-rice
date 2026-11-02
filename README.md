# i3-rice

My personal Fedora Linux dotfiles and desktop environment configuration.

Built around **i3wm**, with a minimal workflow, keyboard-driven navigation and a Kanagawa-inspired aesthetic.

## Components

| Component | Description |
|---|---|
| i3 | Window manager |
| Picom | Compositor |
| Polybar | Status bar |
| Rofi | Application launcher |
| Fastfetch | System information |
| Fish | Shell configuration |
| Ghostty | Terminal emulator |
| Neovim | Text editor |
| Scripts | Custom desktop utilities |

## Requirements

- Fedora Linux
- i3wm
- GNU Stow
- Git

Additional dependencies may be required by individual components.

## Installation

Clone the repository:

```bash
git clone git@github.com:V1aDolorosa/i3-rice.git
cd i3-rice
```

Install GNU Stow:

```bash
sudo dnf install stow
```

Back up existing configurations before installing.

Install selected configurations:

```bash
stow -t ~ i3 picom polybar rofi fastfetch fish ghostty nvim
```

## Structure

Each directory represents an independent GNU Stow package.

```text
i3-rice/
├── fastfetch/
├── fish/
├── ghostty/
├── i3/
├── nvim/
├── picom/
├── polybar/
├── rofi/
└── scripts/
```

## License

Personal configuration repository. Individual components may retain their original licenses.
