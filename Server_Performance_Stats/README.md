# Goal of this project is to write a script to analyse server performance stats.

# Requirements
You are required to write a script server_stats.sh that can analyse basic server performance stats. You should be able to run the script on any Linux server and it should give you the following stats:

1. **Total CPU usage**

2. **Total memory usage (Free vs Used including percentage)**

3. **Total disk usage (Free vs Used including percentage)**

4. **Top 5 processes by CPU usage**

5. **Top 5 processes by memory usage**

### Stretch goal: Feel free to optionally add more stats such as os version, uptime, load average, logged in users, failed login attempts etc.
---
# How to run this ?
### Step 1 - Clone the repo 
```
  git clone https://github.com/AhensArch/Devops-Labs.git
  cd Server_Performance_Stats
```
### Step 2 - Change permission of file
```
  chmod +x server_stats.sh
```
### Step 3 - Execute the script
```
  ./server_stats.sh
```

