@echo off
echo Do you want to create the folder structure? (Y/N):

:askPermission
set /p userChoice=Enter your choice: 

if /I "%userChoice%"=="Y" (
    echo You have accepted the terms and conditions.
    echo Proceeding with folder structure creation...
    goto createFolders
) else if /I "%userChoice%"=="N" (
    echo You have canceled the operation. No directories will be created.
    pause
    exit
) else (
    echo Invalid input! Please enter Y for Yes or N for No.
    goto askPermission
)
:createFolders
:: Start creating directories below
echo Creating directories...

mkdir "Apps\Driver"
mkdir "Apps\Games\EpicGa\Files"
mkdir "Apps\Games\SteamG\Files"
mkdir "Apps\Games\Pirated\Files"
mkdir "Apps\Games\Ubisoft\Files"
mkdir "Apps\System\Batch"
mkdir "Apps\System\Network"
mkdir "Apps\System\Themes"
mkdir "Devs\Cybersec"
mkdir "Devs\Programs"
mkdir "Docs\Personal"
mkdir "Share\Cloud"
mkdir "Share\Cloud\Archive"
mkdir "Share\Cloud\OldMedia"
mkdir "Share\Media\Audio\Music\Playlists"
mkdir "Share\Media\Audio\Podcast\Stations"
mkdir "Share\Media\Audio\VocRec\Discord"
mkdir "Share\Media\Movie\Collections\MovieSeries1"
mkdir "Share\Media\Movie\Collections\MovieSeries2"
mkdir "Share\Media\Movie\Formats\4K"
mkdir "Share\Media\Movie\Formats\BluRay"
mkdir "Share\Media\Movie\Formats\DVD"
mkdir "Share\Media\Movie\Ganre\Action"
mkdir "Share\Media\Movie\Ganre\Comedy"
mkdir "Share\Media\Movie\Ganre\Drama"
mkdir "Share\Media\Movie\Ganre\Horror"
mkdir "Share\Media\Movie\Ganre\Ongoing"
mkdir "Share\Media\Movie\Ganre\SciFi"
mkdir "Share\Media\Movie\Ganre\Thriller"
mkdir "Share\Media\Video\Adult\Download"
mkdir "Share\Media\Video\Adult\Freemium"
mkdir "Share\Media\Video\Adult\Hentai"
mkdir "Share\Media\Video\Adult\Javprn"
mkdir "Share\Media\Video\Adult\Leaked"
mkdir "Share\Media\Video\Adult\Premium"
mkdir "Share\Media\Video\Cartoon"
mkdir "Share\Media\Video\Games\Cutscenes"
mkdir "Share\Media\Video\Games\Gameplay"
mkdir "Share\Media\Video\Games\Trailers"
mkdir "Share\Media\Video\Music\Albums\Album1"
mkdir "Share\Media\Video\Music\Albums\Album2"
mkdir "Share\Media\Video\Music\Artists\Artist1"
mkdir "Share\Media\Video\Music\Artists\Artist2"
mkdir "Share\Media\Video\Music\Genres\Classical"
mkdir "Share\Media\Video\Music\Genres\HipHop"
mkdir "Share\Media\Video\Music\Genres\Pop"
mkdir "Share\Media\Video\Music\Genres\Rock"
mkdir "Share\Media\Video\Music\Playlists"
mkdir "Share\Media\Video\Series\DisneyPlus"
mkdir "Share\Media\Video\Series\JioCinema"
mkdir "Share\Media\Video\Series\Netflix"
mkdir "Share\Media\Video\Series\PrimeVideo"
mkdir "Share\Media\Video\Series\YouTube"
mkdir "Share\Media\Video\Stream\YouTube"
mkdir "Work\Collage"
mkdir "Work\Freelance"

echo Folder structure created successfully!
pause
