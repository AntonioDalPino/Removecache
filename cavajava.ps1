#Windows temp

   $ute = $env:HOMEDRIVE
   $ute = $ute + "\users"
   foreach($nome in get-childitem $ute -Name) {
   $nome
   $dire = $ute +"\"+ $nome + "\AppData\LocalLow\Sun\Java\Deployment\cache\"

   foreach($verj in get-childitem $dire) {
         $dirh = $dire + "\"+ $verj
         $caj = Get-ChildItem   -Name -attributes D  
         foreach($fj in get-childitem $caj){
             $tj = $dirh + "\" + $tj
             Get-ChildItem  * -path $dire -Force -recurse |Remove-Item  -force -recurse
         }
       }
       

    #Cancello la directory Java dell'utente per ogni utente sul pc
    #Get-ChildItem $tmp -Name
    
   }
