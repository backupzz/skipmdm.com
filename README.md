# skipmdm.com

_***Disclaimer***_

* This repository is just a replica of this [GitHub](https://github.com/skipmdm-phoenixbot/skipmdm.com) repository.
* I do not own any information here and neither am I promoting any information here.
* All steps, scripts and information here are to be used for educational/testing purposes only.



## Steps

1. Shutdown the device
2. **Initial Disk Format**
	3. Enter Recovery mode - 1st time
	3. Format the disk completely using disk utility
	4. Shutdown the device
5. **OS installation**
	6. Enter Recovery mode - 2nd time
	6. Connect device to the internet to download the recovery mode software
	7. Once downloaded, install the latest available OS
	8. After the OS has been installed completely, shutdown
	9. If the machine restarts automatically and reaches the Country selection page, force shutdown the device at this stage
10. **Performing MDM Auto-by-pass**
	11. Enter Recovery mode - 3rd time
	11. Open the browser - S@F@R!
		12. Goto this URL - `https://github.com/backupzz/skipmdm.com`
		12. Copy the following - `curl https://raw.githubusercontent.com/backupzz/skipmdm.com/main/mdm-autobypass.sh -o mdm-autobypass.sh && chmod +x ./mdm-autobypass.sh && ./mdm-autobypass.sh`
		13. Exit out of the browser
	14. Open the CLI - T3RMIN@L
		15. Paste the contents from the clipboard
		16. Follow the steps
		17. When done either type `reboot` or shutdown the device
18. Let the device start at this time
19. **New user account creation**
	20. Once the boot process is complete
	20. Create a new user account
	21. Logout from the current/temporary account
	22. Login via the new username
	23. Delete the temporary account
	24. Shutdown
25. **Disable CSR Utility**
	26. Enter Recovery mode - 4th time
	26. Open the CLI - T3RMIN@L
	27. Type to disable SIP: `csrutil disable`
	28. When done either type `reboot` or restart the device
25. Login using the newly created username

26.  **Fix - MDM-Profile**
	27. Goto this URL - `https://github.com/backupzz/skipmdm.com`
	27. Copy the following - `curl https://raw.githubusercontent.com/backupzz/skipmdm.com/main/mdm-config.sh -o mdm-config.sh && chmod +x ./mdm-config.sh && ./mdm-config.sh`
	24. Open CLI - T3RMIN@L
		25. Paste the contents from the clipboard
		16. Follow the steps
	17. Reboot the device if performing this step only. Otherwise goto next step

17. **Fix - MDM-HostFile**
	18. Goto this URL - `https://github.com/backupzz/skipmdm.com`
	18. Copy the following - `curl https://raw.githubusercontent.com/backupzz/skipmdm.com/main/mdm-hostfile.sh -o mdm-hostfile.sh && chmod +x ./mdm-hostfile.sh && ./mdm-hostfile.sh`
	24. Open CLI - T3RMIN@L
		25. Paste the contents from the clipboard
		16. Follow the steps
	17. Reboot the device if performing this step only. Otherwise goto next step

18. **Disable Device Enrollment Notification**
	19. Goto this URL - `https://github.com/backupzz/skipmdm.com`
	18. Copy the following - `sudo open /System/Applications/TextEdit.app /System/Library/LaunchDaemons/com.apple.ManagedClient.enroll.plist`
	24. To edit `com.apple.ManagedClient.enroll.plist`
		25. Open CLI - T3RMIN@L
			25. Paste the contents from the clipboard
			26. change
 			27. `<true/>` under `<key>com.apple.ManagedClient.enroll</key>`
 			28. to
 			29. `<false/>`
 			30. Reboot the device if performing this step only. Otherwise goto next step

30. Reboot the device



## References

* https://skipmdm.com
* https://github.com/skipmdm-phoenixbot/skipmdm.com
* https://gist.github.com/henrik242/65d26a7deca30bdb9828e183809690bd?permalink_comment_id=4710662#gistcomment-4710662
* https://gist.github.com/sghiassy/a3927405cf4ffe81242f4ecb01c382ac?permalink_comment_id=4591775

