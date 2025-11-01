#!/bin/bash
ALERT="\e[31m"
INFO="\e[33m"
BG='\e[44m'
FG="\e[30m"
RESET='\e[0m'
echo -e "${BG}${FG}Updating system...${RESET}"
sudo pacman -Syu --noconfirm

echo -e "${BG}${FG}Removing orphaned packages... ${RESET}"
orphans=$(pacman -Qdtq || true)
if [[ -n "$orphans" ]]; then
  sudo pacman -Rns --noconfirm $orphans
  echo -e "{$ALERT}Removed: $orphans ${RESET}"
else
  echo -e "${INFO}No orphans packages found. ${RESET}"
fi

echo -e "${BG}${FG}Cleaning old package cache...${RESET}"

echo -e "${BG}${FG}Checking for leftover config files...${RESET}"
leftovers=$(pacman -Qdt || true)
if [[ -n "$leftovers" ]]; then
  echo -e "${INFO}## Some leftover packages/configs detected${RESET}"
  echo -e "${INFO}$leftovers"
else
  echo -e "${INFO}No leftover configs.${RESET}"
fi

echo -e "${BG}${FG}System maintenance completed."
