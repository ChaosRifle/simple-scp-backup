simple scp backup script, preconfigured for teamspeak servers as a demo.

to use:
- edit the .service file to have correct description, username, group, working dir, and file path + name of the shell script.
- edit the .sh script username, ip, ssh key, and files desired for backup. optionally uncomment the last two lines for maintaining a 'latest' folder clone.
- ensure you have a valid ssh key to the server you wish to back up
- enable and start the systemd unit files.
