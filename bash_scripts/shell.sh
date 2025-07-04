#!/usr/bin/env bash
# Простейшая оболочка SilleOS

while true; do
  read -rp "LazyDevOS> " cmd args
  case $cmd in
    help)
      echo "Команды: help, echo, clear, exit";;
    echo)
      echo $args;;
    clear)
      clear;;
    exit)
      echo "Shutting down..."; break;;
    *)
      echo "Unknown command: $cmd";;
  esac
done

