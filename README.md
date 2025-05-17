# Advanced Cleanup Tool v2.0

**A powerful system cleanup tool for Windows, now featuring an interactive HTA user interface!**

---

## Overview

Advanced Cleanup Tool v2.0 transforms the way you manage temporary files, browser cache, and other system elements. This release marks a major upgrade from the previous CLI/BAT version to a modern, interactive HTA interface, offering an intuitive, user-friendly experience.

---

## Features

- **Interactive HTA Interface:**  
  Enjoy a modern graphical interface that replaces the traditional command-line approach.

- **Dark Mode:**  
  Toggle dark mode for a more comfortable viewing experience in any lighting conditions.

- **Real-Time Feedback:**  
  Monitor cleanup progress with a dynamic status bar and animated spinner.

- **Enhanced Logging System:**  
  All cleanup actions are automatically recorded in a log file for detailed review and troubleshooting.

- **Optimized Cleanup Operations:**  
  Efficiently remove temporary files and browser cache to boost your system performance.

- **Custom Icon Included:**  
  The ZIP archive contains a custom icon, giving your application a professional look and making it easy to identify.

---

## Installation & Usage

### How to Run

1. **Download:**  
   Download the `Advanced_Cleanup_Tool.hta` file from the [Releases](#) section.

2. **Launch:**  
   Run the HTA file by double-clicking it, or right-click and select “Open with mshta.exe”.

3. **Interact:**  
   Use the interactive menu to select the cleanup options and watch the real-time progress via the status bar.

### Automating with Task Scheduler (Optional)

To schedule regular cleanups, you can create a task in Windows. For example:

```powershell
schtasks /create /tn "AdvancedCleanup" /tr "C:\path\to\Advanced_Cleanup_Tool.hta" /sc weekly /rl highest

What's Coming Soon
More Automation Features: Advanced scheduling and deeper system cleanup options.

GitHub Integration: Automatic update notifications and an interactive changelog.

Customization Options: Further configuration settings for a personalized cleanup process.

Feedback & Contributions
💬 Found a bug or have a suggestion? We welcome your feedback! Please open an Issue or submit a Pull Request in this repository to help us improve Advanced Cleanup Tool.

Release Notes
Important: This version (v2.0) represents a significant upgrade from the previous CLI/BAT tool (v1.1) to a modern, interactive HTA interface. Enjoy an improved experience with real-time feedback, enhanced logging, and a cleaner, more intuitive design.

Advanced Cleanup Tool v2.0 is designed to provide a fast, modern, and user-friendly way to keep your Windows system clean and optimized.
