# Fish shell install
## 1. Install fish
## 2. Plugin manager
Open fish:
```
fish
```
Install fisher (https://github.com/jorgebucaran/fisher):
```
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
```

## 3. Color theme
Install theme (https://github.com/gruvbox-community/fish-gruvbox:
```
fisher jomik/fish-gruvbox
```
Apply theme:
```
echo "theme_gruvbox dark" >> ~/.config/fish/config.fish
```
Reload fish
