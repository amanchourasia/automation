$MyPat = 'cut4c4xaty6upvi4ve2ext4lirhrlpmuqannsypkxj5edvruyywq'
$B64Pat = [Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes("`:$MyPat"))
git -c http.extraHeader="Authorization: Basic $B64Pat" clone https://rimilia@dev.azure.com/rimilia/Alloc8/_git/automation-vm
