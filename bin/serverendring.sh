echo "Endring nr1" >>Endring1.txt
git add .
git commit -q -am"Ekstern endring nr 1" 
echo "Endring nr2" >>Endring2.txt
git add .
git commit -q -am"Ekstern endring nr 2" 
git push -q origin
git reset -q --hard HEAD^^ 
git update-ref refs/remotes/origin/release2 release2 # Pretend nothing happened
echo "Skriptet har nå simulert en endring på serversiden."
