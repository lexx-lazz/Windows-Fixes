# Windows-Fixes

Windows has a habit of accumulating small, specific annoyances — a setting buried five menus
deep, a file explorer quirk, a one-off cleanup task — that are each too small to write a whole
tool for, but too annoying to fix by hand every time. This repo collects the scripts I've
written for myself to fix them, in case they save someone else the same search.

Every tool here is self-contained: one folder, no install, no dependencies beyond what
Windows already ships with (`cmd.exe` / PowerShell).

## Tools

### [Unblock PDF Preview](Unblock%20PDF%20Preview/)

PDFs downloaded from the internet get tagged by Windows with a "this came from the internet"
marker (a Zone.Identifier alternate data stream). Until that marker is cleared, File Explorer
won't generate a thumbnail preview for the file — it just shows the generic PDF icon.

This script clears that marker for every PDF in a folder, recursively, so previews start
working again.

**To run it:** double-click `Unblock PDFs.bat` and paste in the folder path when it asks, or
drag the folder straight onto the `.bat` file to skip the prompt.

## Adding your own

Each tool lives in its own folder here, named for what it does, and should run standalone —
no setup, no hardcoded paths.
