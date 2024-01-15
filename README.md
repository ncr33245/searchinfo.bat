---

# Information Choice Batch Script

This batch script provides a menu-driven interface allowing users to choose and view different types of system information.

## Usage

1. **Run the Script:**
   - Execute the batch file (`searchinfo.bat`).

2. **Select an Option:**
   - Choose an option by entering the corresponding number (1-4) and pressing Enter.

3. **View Information:**
   - Based on the chosen option, the script displays system information, disk space details, network information, or exits.

## Menu Options

- **1. System Information:**
  - Displays information about the operating system, processor, memory, disk drives, network interfaces, and installed programs.

- **2. Disk Space:**
  - Provides details about disk space usage, including the size and free space on logical disks.

- **3. Network Information:**
  - Shows comprehensive network information using the `ipconfig` command.

- **4. Exit:**
  - Exits the script.

## Information Sections

### System Information (`:SystemInformation`)

- Displays various system-related details using commands like `systeminfo`, `wmic cpu`, `wmic memorychip`, `wmic diskdrive`, `ipconfig`, and `wmic product`.

### Disk Space (`:DiskSpace`)

- Provides information about disk space using the `wmic logicaldisk` command, showing details such as caption, size, and free space.

### Network Information (`:NetworkInformation`)

- Displays network-related information using the `ipconfig /all` command.

## Notes

- The script uses basic Windows commands (`systeminfo`, `wmic`, `ipconfig`) to gather information.
- The user is prompted to enter a choice, and the script reacts accordingly.
- Invalid choices prompt a message and return to the main menu after a brief timeout.

Feel free to customize and expand upon this script based on your specific information needs.

---
