PAQUETES QUE DEBES INSTALAR SI O SI :P

//dark mode in all apps
sudo pacman -S xdg-desktop-portal-gtk
sudo pacman -S xdg-desktop-portal-hyprland

//nautilus in dark mode:
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"
//nautilus plugins
yay -S nautilus-open-any-terminal
//audio problems?
sudo pacman -S pipewire wireplumber pipewire-pulse pipewire-alsa

//brightness problems??
sudo pacman -S brightnessctl

//power profiles ESTE YA NO SE OCUPA
sudo pacman -S power-profiles-daemon
sudo systemctl enable power-profiles-daemon
sudo systemctl start power-profiles-daemon

//USA ESTE EN VEZ DE POWER PROFILES DAEMON
sudo pacman -S tlp tlp-rdw
yay -S tlp-pd
sudo systemctl enable --now tlp.service
sudo systemctl enable --now tlp-pd.service

//fastfetch at startup
sudo pacman -S fastfetch
nano ~/.bashrc
y agregas "fastfetch" a la ultima linea.

//sddm themes
//entra a ese link ahi estan el comando para instalarlo
//el directorio donde se guardan los temas es aqui:
// /usr/share/sddm/themes/sddm-astronaut-theme/
https://github.com/Keyitdev/sddm-astronaut-theme

//Si quieres ver las fuentes desde Nautilus:
sudo pacman -S gnome-font-viewer

//Cualquier terminal para nautilus
yay -S nautilus-open-any-terminal
