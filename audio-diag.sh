cd ~
sudo aptitude install pastebinit
inxi -Ax > diag.file
find ~/.pulse -name \*source\* -printf '\n\n%c\n%f\n' -execdir cat {} ';' >> diag.file
pastebinit diag.file
rm diag.file