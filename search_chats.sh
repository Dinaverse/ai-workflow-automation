#!/bin/bash
# Search Gemini CLI chat history for a keyword
if [ -z "$1" ]; then
  echo "Usage: search_chats <keyword>"
  exit 1
fi
grep -rE "$1" /home/dina/.gemini/tmp/dina/chats/
