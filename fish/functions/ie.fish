function ie
    set IE_VERSION $argv[1]
    set VNCBIN "/Applications/Chicken of the VNC.app/Contents/MacOS/Chicken of the VNC"
    set JOB "http://jenkins.youdevise.com/job/qa-browsers-vnc-report/lastBuild/logText/progressiveText"
    set TARGET (curl -s $JOB | grep "qa-a-ie"$IE_VERSION"-001" | rev | cut -d " " -f 1 | rev)
    echo "Found $TARGET"
    eval \"$VNCBIN\" $TARGET
end
