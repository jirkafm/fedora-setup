#!/bin/bash
FLATPAK_OPTS="--user --verbose -y"
flatpak --user remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak $FLATPAK_OPTS install flathub com.slack.Slack
flatpak $FLATPAK_OPTS install flathub org.signal.Signal
flatpak $FLATPAK_OPTS install flathub com.microsoft.Teams
flatpak  $FLATPAK_OPTS install flathub com.getpostman.Postman
flatpak $FLATPAK_OPTS install flathub com.google.AndroidStudio
