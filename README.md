
```
$ docker \
    run \
    --rm \
    -ti \
    -v ~/Library/Preferences/PhpStorm2016.1/eval:/root/.PhpStorm2016.1/config/eval \
    alexanderilyin/docker-phpstorm:EAP-145.844.5 \ 
    /opt/PhpStorm-145.844.5/bin/inspect.sh
    
OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=350m; support was removed in 8.0
Apr 12, 2016 7:14:53 AM java.util.prefs.FileSystemPreferences$1 run
INFO: Created user preferences directory.
Apr 12, 2016 7:14:53 AM java.util.prefs.FileSystemPreferences$6 run
WARNING: Prefs file removed in background /root/.java/.userPrefs/prefs.xml
invalid args:[inspect]
Expected parameters: <project_file_path> <inspection_profile> <output_path> <inspections_profile> -- use here profile name configured in the project or locally or path to the inspection profile; can be stabbed when one of the -e|-profileName|-profilePath is used
[<options>]
 Available options are:
 -d <directory_path>  --  directory to be inspected. Optional. Whole project is inspected by default.
 -e                   --  skip  
-v[0|1|2]            --  verbose level. 0 - silent, 1 - verbose, 2 - most verbose. 
-profileName         --  name of a profile defined in project 
 -profilePath         --  absolute path to the profile file
```
