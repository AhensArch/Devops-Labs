# Log Archive CLI Tool

A lightweight, robust command-line utility written in Bash to automate the archiving and compression of system log directories. It bundles your logs into a clean, timestamped `.tar.gz` archive and maintains a detailed history log of all archiving operations.

---

## Features

- **CLI-Driven:** Easily specify any target log directory as a command-line argument.
- **Compressed Archives:** Securely packs logs into standard `.tar.gz` format to save disk space.
- **Timestamped Naming:** Automatically names archives using the format `logs_archive_YYYYMMDD_HHMMSS.tar.gz`.
- **Operation Logging:** Keeps track of past archiving events inside an `archive_history.log` file.
- **Safety Checks:** Validates input directories before attempting compression.

---

## Installation

1. **Clone or download** the script file (`log-archive`) to your machine.
2. **Make the script executable:**
   ```bash
   chmod +x log-archive