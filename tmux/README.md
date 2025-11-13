# tmux
## 1. Install tmux
## 2. Install Tmux Plugin Manager
Clone TPM:
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
## 3. Clone tmux configurtation file
Clone .tmux.conf:
```
wget -O ~/.tmux.conf https://github.com/m1r0-h/dotfiles/blob/main/tmux/.tmux.conf
```
## 4. Install plugins
Start tmux and press prefix + I (capital i) to install plugins.
## 5. Autostart (optional)
Add "tmux" basrc to the end of the .bashrc file:
```
echo "tmux" >> ~/.bashrc
```
