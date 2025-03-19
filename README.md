# ATSJ PeakCAN Basic for LabVIEW

![](https://img.shields.io/badge/LabVIEW-2024_Q3_(64--bit)-FFC500?logo=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGhlaWdodD0iNTEyIiB3aWR0aD0iNTEyIiBmaWxsPSIjZmZjNTAwIj48cGF0aCBkPSJNIDY4LjUzNzc5OSwxNi4wNTA3NzIgQSA1Ny40MDgyMTQsNTcuNDA4MjE0IDAgMCAwIDYuMDAwMDA0NSw3My4yMzI1MTEgViA0MzguNzc0MjMgQSA1Ny40MDgyMjgsNTcuNDA4MjI4IDAgMCAwIDg4LjgxMDI0Miw0OTAuMjUzMDggTCA0ODAuNTkwNzksMjk2Ljg4MTIgYSA0NS41ODYzMjYsNDUuNTg2MzI2IDAgMCAwIDAsLTgxLjc1NTY2IEwgODguODEwMjQyLDIxLjc1MzY1NiBBIDU3LjQwODIxNCw1Ny40MDgyMTQgMCAwIDAgNjguNTM3Nzk5LDE2LjA1MDc3MiBaIE0gMTYwLjU0NzY1LDE1OS4xMjMxOSBoIDQwLjAzMTQ4IHYgNzYuODcxNDIgaCA3Ni44NzE0IHYgNDAuMDMxNDUgaCAtNzYuODcxNCB2IDc2Ljg3MTQgaCAtNDAuMDMxNDggdiAtNzYuODcxNCBoIC03Ni44ODUzIHYgLTQwLjAzMTQ1IGggNzYuODg1MyB6Ii8+PC9zdmc+)

This project provides a LabVIEW wrapper for using the [PCAN-Basic API](https://www.peak-system.com/PCAN-Basic.239.0.html?&L=1) from PEAK-System Technik GmbH.

<table style="background-color:#FFF8E6;color:black;border-style:solid;border-color:#E6A700;border-width:thin;border-left-width:thick;">
	<tr align="left">
		<th>⚠️ Early Development Disclaimer</th>
	</tr>
	<tr>
		<td>
			🚧 <strong>This project is in an early development phase and is provided "as is" with no guarantees of stability or functionality.</strong> 🚧
			<br>
			<br>
			<strong>Important Notes:</strong>
				<ul>
						<li>This software is <strong>not a complete solution</strong> and may lack essential features.</li>
						<li>It <strong>may not function as expected</strong> and is <strong>not yet fully tested or validated</strong> with PEAK-System Technik hardware.</li>
						<li>Bugs, errors, and instability are expected.</li>
						<li>The API <strong>is subject to breaking changes without prior notice</strong>.</li>
				</ul>
			<br>
			🔴 <strong>Use at your own risk.</strong> 🔴
			<br>
			<br>
			Contributions and issue reports are welcome, but please be aware that this project is <strong>not yet in a stable release phase</strong>.
		</td>
	</tr>
</table>


## ⚠️ Legal Notice
- This project is **not affiliated with PEAK-System Technik GmbH**.
- PEAK-System Technik GmbH is the owner of the **PCAN-Basic API**. Please refer to their **[EULA](https://www.peak-system.com/EULA.495.0.html)** for licensing terms.
- This project does **not** include `PCANBasic.dll`. You must download it from the official PEAK-System website. See [How to Install](#how-to-install).

## 🚀 How to Install

This project uses the `PCANBasic.dll` library to interact with the PCAN system. Additionally, many VI descriptions refer to the official documentation located in the `PCANBasic_enu.chm` file. For legal reasons, they cannot be part of this repository. Therefore, you must download them separately from the official **PEAK-System Technik GmbH** site.

### Download Methods

You can obtain the necessary files in two ways:
1. **Download only the [PCAN-Basic package](#download-pcan-basic-package)** (recommended) – This keeps all project files in one place, making it easier to manage.
2. **Download and install the full [PEAK-System Driver-Setup package](#download-peak-system-driver-setup-package)** – This is a more global approach, as it installs the drivers system-wide.

<table style="background-color:#FFF8E6;color:black;border-style:solid;border-color:#E6A700;border-width:thin;border-left-width:thick;">
	<tr align="left">
		<th>⚠️ Caution</th>
	</tr>
	<tr>
		<td>This project expects the <code>PCANBasic.dll</code> file to be located in the <code>.\src\support</code> folder. If you choose the second installation method, opening the project may show a message indicating that the <strong>library was loaded from a different path</strong>. However, this should not cause issues.</td>
	</tr>
</table>

<table style="background-color:#E6F6E6;color:black;border-style:solid;border-color:#009400;border-width:thin;border-left-width:thick;">
	<tr align="left">
		<th>💡 Tip</th>
	</tr>
	<tr>
		<td>If you want to verify the library loading path, use the <b>LabVIEW Project Explorer</b>:
			<ol>
				<li>Navigate to <code>Project → Show Items Paths</code>.</li>
				<li>Under the <code>Dependencies</code> section, you should see <code>PCANBasic.dll</code> along with its file path. If no path is displayed, the library was loaded from a system folder instead of the project folder.</li>
			</ol>
		</td>
	</tr>
</table>

---

### 📦 Download PCAN-Basic Package
You can download the **PCAN-Basic package** from the official [PCAN-Basic website](https://www.peak-system.com/PCAN-Basic.239.0.html?&L=1).

[![Download PCAN-Basic](https://img.shields.io/badge/PCAN--Basic-Download-blue?style=for-the-badge)](https://www.peak-system.com/fileadmin/media/files/PCAN-Basic.zip)

Alternatively, you can use the provided script in the repository:
```
.\download-support.bat
```
This script will download and extract the package to `.\src\support`. Once extracted, the correct path to the `PCANBasic.dll` file should be:
```
.\src\support\64\PCANBasic.dll
```

### 📦 Download PEAK-System Driver-Setup Package
You can download full driver package from the official [PEAK-System drivers website](https://www.peak-system.com/Drivers.523.0.html?L=1).

[![Download PEAK-System Driver-Setup](https://img.shields.io/badge/PEAK--System_Driver--Setup-Download-blue?style=for-the-badge)](https://www.peak-system.com/quick/DrvSetup)

After installation, `PCANBasic.dll` should be located in one of the following directories:
```
C:\Windows\System32
C:\Windows\SysWOW64
```
To verify its location, run the following command in the command prompt:
```
where PCANBasic.dll
```