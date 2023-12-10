#! /bin/bash

mkdir ADTools
cd ADTools
mkdir 0-MethodMaps
cd 0-MethodMaps
wget https://orange-cyberdefense.github.io/ocd-mindmaps/img/pentest_ad_dark_2023_02.svg
cd ..
mkdir 1-Enum-External
cd 1-Enum-External
git clone https://github.com/cddmp/enum4linux-ng.git
git clone https://github.com/Kevin-Robertson/Inveigh.git
cd Inveigh
wget https://github.com/Kevin-Robertson/Inveigh/releases/download/v2.0.10/Inveigh-net4.6.2-v2.0.10.zip
unzip Inveigh-net4.6.2-v2.0.10.zip
cd ..
git clone https://github.com/dirkjanm/krbrelayx.git
git clone https://github.com/yaap7/ldapsearch-ad.git
git clone https://github.com/ropnop/windapsearch.git
cd ..
mkdir 2-Enum-Internal
cd 2-Enum-Internal
git clone https://github.com/61106960/adPEAS.git
git clone https://github.com/sense-of-security/ADRecon.git
mkdir BH-Injectors
cd BH-Injectors
git clone https://github.com/dirkjanm/BloodHound.py.git
cd Bloodhound.py
chmod +x setup.py
python setup.py install
#cd back to BH-Injectors
mkdir SharpHound
cd SharpHound
wget https://github.com/BloodHoundAD/SharpHound/releases/download/v1.1.1/SharpHound-v1.1.1.zip
unzip SharpHound-v1.1.1.zip
#cd back to BH-Injectors
cd ..
#cd back to 2-Enum-Internal
cd ..
git clone https://github.com/leoloobeek/LAPSToolkit.git
git clone https://github.com/PowerShellMafia/PowerSploit.git
wget https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Recon/PowerView.ps1
wget https://gist.githubusercontent.com/joegasper/93ff8ae44fa8712747d85aa92c2b4c78/raw/ba84c297a051833e0b48b3cb31bfbaa8d7fec35f/Get-PingSweep.ps1
#cd back to ADTools
cd ..
mkdir 3-CredDumpers
cd 3-CredDumpers
git clone https://github.com/ropnop/kerbrute.git
git clone https://github.com/dafthack/MailSniper.git
mkdir mimikatz
cd mimikatz
wget https://github.com/PowerShellMafia/PowerSploit/raw/master/Exfiltration/Invoke-Mimikatz.ps1
mkdir Win32
cd Win32
cp /usr/share/windows-resources/mimikatz/Win32/mimikatz.exe .
#cd back to mimikatz
cd ..
mkdir x64
cd x64
cp /usr/share/windows-resources/mimikatz/x64/mimikatz.exe .
#cd back to mimikatz
cd ..
mkdir mimikatz_trunk
cd mimikatz_trunk
wget https://github.com/gentilkiwi/mimikatz/releases/download/2.2.0-20220919/mimikatz_trunk.zip
unzip mimikatz_trunk.zip
#cd back to mimikatz
cd ..
#cd back to 3-CredDumpers
cd ..
git clone https://github.com/Sysinternals/ProcDump-for-Linux.git
git clone https://github.com/skelsec/pypykatz.git
git clone https://github.com/r3motecontrol/Ghostpack-CompiledBinaries.git
wget https://github.com/r3motecontrol/Ghostpack-CompiledBinaries/raw/master/Rubeus.exe
wget https://github.com/SnaffCon/Snaffler/releases/download/1.0.140/Snaffler.exe
git clone https://github.com/ShutdownRepo/targetedKerberoast.git
#cd back to ADTools
cd ..
mkdir 4-PrivEsc
cd 4-PrivEsc
mkdir CVEs
cd CVEs
git clone https://github.com/Ridter/noPac.git
git clone https://github.com/Wh04m1001/DFSCoerce.git
git clone https://github.com/topotam/PetitPotam.git
git clone https://github.com/dirkjanm/CVE-2020-1472.git
git clone https://github.com/leechristensen/SpoolSample.git
cd ..
git clone https://github.com/dafthack/DomainPasswordSpray.git
cd ..
mkdir 5-AttackingAD
cd 5-AttackingAD
git clone https://github.com/micahvandeusen/gMSADumper.git
#impacket from the ShutDown Repo to get his version of dacledit
git clone https://github.com/ShutdownRepo/impacket -b dacledit
#how to run dacledit:
#cd impacket
#pwd
#python3 -m venv .dacledit
#source .dacledit/bin/activate
#python3 -m pip install .
#python3 examples/dacledit.py -target htb-student -dc-ip 10.129.205.81 inlanefreight.local/htb-student:'HTB_@cademy_stdnt!'
git clone https://github.com/n00py/LAPSDumper.git
git clone https://github.com/dirkjanm/PKINITtools.git
git clone https://github.com/Kevin-Robertson/Powermad.git
git clone https://github.com/ShutdownRepo/pywhisker.git
gt clone https://github.com/ShutdownRepo/targetedKerberoast.git
wget https://github.com/KurtDeGreeff/PlayPowershell/raw/master/Disable-AMSI.ps1
wget https://github.com/byronkg/SharpGPOAbuse/releases/download/1.0/SharpGPOAbuse.exe
cd ..
echo "Your Active Directory Tools have now been downloaded. Some files (ex. .sln) may need to be compiled"
