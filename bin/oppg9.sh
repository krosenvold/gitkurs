echo "EnUviktigfil" >>EnUviktigFil.txt
git add .
git commit -q -am"Ekstern endring nr 1" 
echo "Enviktigfil, uten denne går alt rett vest" >>EnviktigFil.txt
git add .
git commit -q -am"Ekstern endring nr 2" 
git push -f -q origin HEAD:enAnnenBranch
git reset -q --hard HEAD@{2}
echo "Oppgave 9 (Cherry Pick) er satt opp"
