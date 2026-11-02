if status is-interactive
# Commands to run in interactive sessions can go here
starship init fish | source
zoxide init fish | source
#Цветовая сетка
# Black Metal — monochrome with soft red accents
set -g fish_color_normal D9D9D9
set -g fish_color_command F2F2F2
set -g fish_color_keyword E8A0A8
set -g fish_color_quote C9A0A5
set -g fish_color_param B8B8B8
set -g fish_color_option A6A6A6
set -g fish_color_error FF6B78
set -g fish_color_operator E8A0A8
set -g fish_color_redirection D9D9D9
set -g fish_color_comment 686868
set -g fish_color_autosuggestion 666666
set -g fish_color_valid_path --underline
end

fish_add_path /home/via/.spicetify
