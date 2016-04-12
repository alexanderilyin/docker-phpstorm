Docker PhpStorm
===============

This docker image allows you to run [Run Offline Inspections] from PhpStorm using `inspect.sh`.
You will need a valid key to use this tool. Key could be created during standard EAP evaluation process.

| OS    | Path                                                                  |
| ----- | --------------------------------------------------------------------- |
| OS X  | `~/Library/Preferences/PhpStorm2016.1/eval/PhpStorm11.evaluation.key` |
| Linux | `~/.PhpStorm2016.1/config/eval/PhpStorm11.evaluation.key`             |

DEFAULT RUN
-----------

To make it work in default configuration you should have default profile available at `./.idea/inspectionProfiles/Project_Default.xml`.

```
$ docker \
    run \
    --rm \
    --tty \
    --interactive \
    --volume ~/Library/Preferences/PhpStorm2016.1/eval:/root/.PhpStorm2016.1/config/eval \
    --volume `pwd`:/project \
    alexanderilyin/docker-phpstorm:2016.1
```

CUSTOM RUN
----------

```
$ docker \
    run \
    --rm \
    --tty \
    --interactive \
    --volume ~/Library/Preferences/PhpStorm2016.1/eval:/root/.PhpStorm2016.1/config/eval \
    --volume `pwd`:/project \
    alexanderilyin/docker-phpstorm:2016.1 \
    /project \
    /project/.idea/inspectionProfiles/Project_Default.xml \
    /project/output \
    -d /project \
    -v2  \
    -profileName "Project Default" \
    -profilePath /project/.idea/inspectionProfiles/Project_Default.xml
```


RESULTS
-------

```
$ find ./output
./output
./output/.descriptions.xml
./output/SpellCheckingInspection.xml
```

RECOMMENDED LINKS
-----------------

* [`phpstorm-cli-inspector`]


[Run Offline Inspections]: https://www.jetbrains.com/help/phpstorm/2016.1/running-inspections-offline.html?origin=old_help
[`phpstorm-cli-inspector`]: https://github.com/griffbrad/phpstorm-cli-inspector
