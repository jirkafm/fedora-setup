# fedora-setup
Bunch of shell scripts to setup my fedora env. It can be used for any Fedora environment and it may work for any other environment with dnf depending on pkgs naming compatibility. Beware that some archs (ARM) may not have all pkgs available.

## How to use

To see what exactly will script do type following into terminal:
```
./control.sh print | less
```

If everything seems to be reasonable you may execute the script:
```
./control.sh
```
else customize it as necessary.

If something is wrong:
1. Comment what is already done
2. Edit SCRIPTS_ORDER to have only unfinished scripts
3. Fix the problematic script
4. Execute **./control.sh** again

## Customization
1. You may comment out everything you don't need or like in scripts folder
2. You may edit SCRIPTS_ORDER variable to have only steps you are interested in
3. You may add whatever is needed to execute in new environment
4. You may execution only specific script `./conrol.sh <script>`

## scripts/env.sh
There is one exception which is not executed by default and that is overriding configuration files of your user. If you know what you are doing just change variable **OVERWRITE=Y** in `scripts/env.sh`

