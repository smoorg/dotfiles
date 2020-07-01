dnf install libcxx

# Kill existing discord instances
pkill discord

# Configuration cleanup
# In your chrome browser open the settings chrome://settings/passwords
# Remove the Discord.app - hit those three small dots, and go 'remove'

# Remove discord settings
rm -f -R ~/.config/discord
rm -f -R /usr/share/applications/discord.desktop
rm -f -R /usr/share/Discord
rm -f -R /usr/share/discord

wget -O ~/Pobrane/discord.tar.gz https://discordapp.com/api/download?platform=linux&format=tar.gz
sudo tar xvzf ~/Pobrane/discord.tar.gz -C /usr/share

sudo chmod 777 -R /usr/share/Discord
sudo mv /usr/share/Discord /usr/share/discord

/usr/share/discord/discord.desktop > "[Desktop Entry]
Name=Discord
StartupWMClass=discord
Comment=All-in-one voice and text chat for gamers that's free, secure, and works on both your desktop and phone.
GenericName=Internet Messenger
Exec=/usr/share/discord/Discord
Icon=/usr/share/discord/discord.png
Type=Application
Categories=Network;InstantMessaging;"

sudo cp /usr/share/discord/discord.desktop /usr/share/applications/discord.desktop
exit

