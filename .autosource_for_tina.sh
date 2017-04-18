export TinaDir_file=build/envsetup.sh

function expect_open_tina_dir_execuld()
{
        builtin cd $1
        source $TinaDir_file
        export tina_dir=${PWD}
        echo "tina into $tina_dir"

}
function expect_open_tina_dir()
{
        expect -c "
                spawn $SHELL
                send \"expect_open_tina_dir_execuld $1\n\"
                send_user \"tina_dir source $1/$TinaDir_file \n\"
                interact
        "
}

function cd()
{
        p=$(realpath $1)

        if [ "$tina_dir"x != ""x ] && [ "$(echo $p|grep $tina_dir)"x == ""x ]
        then
                echo "tina exit $tina_dir"
                exit
        fi

        if [ -f "$p/$TinaDir_file" ] && [ "$tina_dir"x != "$p"x ]
        then
                expect_open_tina_dir $p
        else
                builtin cd $p
        fi

}
