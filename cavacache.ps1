  
#Windows temp

   $ute = $env:HOMEDRIVE
   $ute = $ute + "\users"
   foreach($nome in get-childitem $ute -Name) {
   $nome
   $tmp = $ute +"\"+ $nome + "\appdata\local\temp"
   $tmp 

        Get-ChildItem  * -path $tmp -Force -recurse |Remove-Item  -force -recurse

    #Cancello la directory temp dell'utente per ogni utente sul pc
    #Get-ChildItem $tmp -Name
   }

#Cache di firefox
   $ute = $env:HOMEDRIVE
   $ute = $ute + "\users"
   foreach($nome in get-childitem $ute -Name) {
   $nome
   $tmp = $ute +"\"+ $nome + "\appdata\local\mozilla\firefox\profiles"
   foreach($prof in Get-ChildItem $tmp -Name)     
       {
        $cac = $tmp + "\" + $prof + "\cache2\entries"
        
        Get-ChildItem * -path $cac -Force -recurse |Remove-Item  -force -recurse

        #Get-ChildItem $tmp -Name
       }
   }

#Cookies di Firefox
   $ute = $env:HOMEDRIVE
   $ute = $ute + "\users"
   foreach($nome in get-childitem $ute -Name) {
   $nome
   $tmp = $ute +"\"+ $nome + "\appdata\Roaming\mozilla\firefox\profiles"
   foreach($prof in Get-ChildItem $tmp -Name)     
       {
       #Togli Cookies
        $cac = $tmp + "\" + $prof + "coo*"
        Get-ChildItem * -path $cac -Force -recurse |Remove-Item  -force -recurse

        $cac = $tmp + "\" + $prof + "*js"
        Get-ChildItem * -path $cac -Force -recurse |Remove-Item  -force -recurse

        #Get-ChildItem $tmp -Name
       }
   }

#cache di Google
   $ute = $env:HOMEDRIVE
   $ute = $ute + "\users"
   foreach($nome in get-childitem $ute -Name) {
   $nome
   $tmp = $ute +"\"+ $nome + "\appdata\local\Google\Chrome\User Data"

        $cac = $tmp + "\" + "\*tmp*"
        get-childitem * -path $cac -Force -recurse |Remove-Item -recurse -force
        $cac = $tmp + "\"  + "\Default\*tmp*"
        Get-childitem * -path $cac -Force -recurse |Remove-Item -force -recurse
        $cac = $tmp + "\"  + "\Default\coo*"
        get-childitem *   -path $cac -Force -recurse |Remove-Item -force -recurse
        $cac = $tmp + "\" + "\Default\Cache\*"
        get-childitem *  -path $cac -Force -recurse |Remove-Item -force -recurse
        $cac = $tmp + "\" +  "\Default\Cache\Cache_Data"
        get-childitem *  -path $cac -Force -recurse |Remove-Item -force -recurse        
        $cac = $ute +"\"+ $nome + "\" + "AppData\Roaming\Google\Local Search History"
        get-childitem *  -path $cac -Force -recurse |Remove-Item -force -recurse      
        $cac = $tmp + "\" +  "\Default\code cache\js"   
        get-childitem *  -path $cac -Force -recurse |Remove-Item -force -recurse 
        $tmp = $ute +"\"+ $nome + "\appdata\local\Google"
        $cac = $tmp + "\appdata\local\Google" + "\" + "GoogleUpdater" 
        get-childitem *  -path $cac -Force -recurse |Remove-Item -force -recurse 
        $cac = $tmp + "\appdata\local\Google\Chrome\User Data\Default" + "\" + "login data" 
        get-childitem *  -path $cac -Force -recurse |Remove-Item -force -recurse 
        $cac = $tmp + "\appdata\local\Google\Chrome\User Data\Default" + "\" + "login data-journal" 
        get-childitem *  -path $cac -Force -recurse |Remove-Item -force -recurse 
        
  }


#cache di Edge
   $ute = $env:HOMEDRIVE
   $ute = $ute + "\users"
   foreach($nome in get-childitem $ute -Name) {
   $nome
   $tmp = $ute +"\"+ $nome + "\AppData\Local\Microsoft\Edge\User Data\Default\Cache\Cache_Data"

        $cac = $tmp + "\" + "\*"
        get-childitem * -path $cac -Force -recurse |Remove-Item -recurse -force
        $tmp = $ute +"\"+ $nome + "\AppData\Local\Microsoft\Edge\User Data\Default\Code Cache\js"
        $cac = $tmp + "\" + "\*"
        get-childitem * -path $cac -Force -recurse |Remove-Item -recurse -force    
        $cac = $tmp + "\appdata\local\Microsoft\Edge\User Data\Default" + "\" + "login data" 
        get-childitem *  -path $cac -Force -recurse |Remove-Item -force -recurse 
        $cac = $tmp + "\appdata\local\Microsoft\Edge\User Data\Default" + "\" + "login data-journal" 
        get-childitem *  -path $cac -Force -recurse |Remove-Item -force -recurse             
   }

