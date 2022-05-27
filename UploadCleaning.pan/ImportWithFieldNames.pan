
Hi! here's the steps for getting file names with your CSV import in Panorama. 

Step 1:

open panorama, go to File -> New File 

this will open the "New Database Wizard"
-Note, close the New Database Wizard that opens automatically with Panorama because for some reason it's often glitchy

with your new window, at the top you'll see icons that say
"Favorite", "Choose Import File", "Import From ClipBoard", "Etc"

Click "Choose Import File"

it should notice the "Field Names" from the CSV. They'll all be enclosed in Quotation Marks ("")
-this is because in a CSV, that's how the field names are distiguished from regular data:
    -Ex: 
        "Ordering Size","ItemNum","SizeCode","Item","Name","AlternateName","BulbSize",  
        ,6001,A,6001-A,Tulip Jellyfish Mix  (PR),,12+ cm,,,,,,,,0,,,,,,0,,0,,,,,,0,,0,,,    
        ,6001,B,6001-B,Tulip Jellyfish Mix  (PR),,12+ cm,,,,,,,,0,,,,,,0,,0,,,,,,0,,0,,,   
        ,6001,C,6001-C,Tulip Jellyfish Mix  (PR),,12+ cm,,,,,,,,0,,,,,,0,,0,,,,,,0,,0,,,  
        ,6001,D,6001-D,Tulip Jellyfish Mix  (PR),,12+ cm,,,,,,,,0,,,,,,0,,0,,,,,,0,,0,,,  
-Note: Later in this doc, i'll show you the procedure to get rid of the quotation marks if you have more than a few to fix. But if it's just a few, you can delete those characters now. 

if there are any spaces in the names of your field Panorama will throw up a yellow exclaimation point "!" to tell you it'll need to be in chevrons like this «"Ordering Size"» 
    -Note: the commands to make chevrons are Option+\ for "«" and Option+Shift=\ for "»"
if there are any red "!" then there's characters or a setup that's wrong and panorama will tell you that you need to change something about the field name. It's picky. 

*Note:
If you know what type of Data is going to be in the fields already, you can either click the star next to field name or the Type button that says "text" and change what type of data is going into that field. You don't have to do this, and for lots of functions you'll need to change it in the design sheet anyway. 

Once you have the changes you need click "Import New Database"
-it will throw a warning if you have fields with chevrons that "# of fields need punctuation or special characters.......Create Database Anyway"? 
-Click "Yes"

It'll create a new Database with field names. 

To clear those quotation marks, you'll need to create a loop and run it on the «Design Sheet»

so, go to "View" at the top menu then hold down the "Option" key on your keyboard and click "Create New Procedure" 
-This will open a second window to put the procedure in while keeping the «Data Sheet» open I name this one, QuoteClear

Copy and paste the following into the procedure, and then hit the two >> on the left hand side
;QuoteClear
local vFieldName
global vRevert
godesignsheet
;vRevert=arraybuild(«Field Names»)
field «Field Name»
loop
vFieldName=«Field Name»[2,-2]
«Field Name»=vFieldName
downrecord
until info("stopped")
