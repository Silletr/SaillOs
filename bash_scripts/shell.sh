#!/usr/bin/env bash

while true; do
  read -rp "LazyDevOS> " cmd args
  case $cmd in
    help)
      echo "Commands: help, echo, clear, exit, ping, hack";;
    echo)
      echo $args;;
    clear)
      clear;;
    exit)
      echo "Shutting down..."; break;;
    ping)
      echo "Pong";;
    hack)
      echo "Succefully hacked.. but what? ";;
    *)
      echo "Unknown command: $cmd";;
  esac
done

