# Multi-Host Network Diagnostic Lab (Linux + Bash)

This project simulates a small network lab using VirtualBox and Linux VMs. The goal is to practice core networking concepts and automate diagnostics using a custom Bash script.

---

## Project Overview

- Built a virtual lab with **2+ Linux VMs (Kali)** using **VirtualBox Host-only networking**
- Assigned **static IPs** to each VM for consistent testing
- Wrote a Bash script to automate common network diagnostics:
  - `ping` test
  - `traceroute` for path discovery
  - `nslookup` for DNS testing
  - `nmap` for port scanning
- Logged results to a single file (`network_diagnostic.log`) for auditing and troubleshooting

---

## 🛠️ Tools & Technologies

- 🐧 Linux (Kali / Ubuntu)
- 💻 VirtualBox
- ⚙️ Bash scripting
- 📡 ping, traceroute, nslookup,nmap


---

## Architecture

![Architecture ](architecture.png)
---

## Usage

1. **Clone this repo** in your VM:
   ```bash
   git clone https://github.com/esthermensah/Multi-Host-Network-Lab-with-Diagnostic-Bash-Script.git

   cd Multi-Host-Network-Lab-with-Diagnostic-Bash-Script
