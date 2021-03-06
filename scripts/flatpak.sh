#!/bin/bash
FLATPAK_OPTS="--user --verbose -y"

sudo $INSTALL_CMD flatpak
flatpak --user remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak $FLATPAK_OPTS install flathub com.slack.Slack
flatpak $FLATPAK_OPTS install flathub org.signal.Signal
flatpak $FLATPAK_OPTS install flathub com.microsoft.Teams
flatpak $FLATPAK_OPTS install flathub com.getpostman.Postman
flatpak $FLATPAK_OPTS install flathub com.google.AndroidStudio
flatpak $FLATPAK_OPTS install flathub com.visualstudio.code
flatpak $FLATPAK_OPTS install flathub com.jetbrains.IntelliJ-IDEA-Community
