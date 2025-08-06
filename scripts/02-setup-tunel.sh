#!/bin/bash

# This script sets up a tunnel to the remote server

# Define variables
REMOTE_USER="eugene"
REMOTE_HOST="eugene-ai.local"
REMOTE_PORT="37555"
LOCAL_PORT="37555"

# Create the SSH tunnel
# ssh -L $LOCAL_PORT:localhost:$REMOTE_PORT $REMOTE_USER@$REMOTE_HOST -N &
ssh -L $LOCAL_PORT:127.0.0.1:$REMOTE_PORT  $REMOTE_USER@$REMOTE_HOST -N &
