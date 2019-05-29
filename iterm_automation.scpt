tell application "iTerm2"
  tell current window
    create tab with default profile
  end tell
  tell first session of current tab of current window
    write text "cd ~/GIT/crypho.backend"
    write text "./bin/supervisord"
    write text "./bin/supervisorctl"
  end tell

  tell current window
    create tab with default profile
  end tell
  tell first session of current tab of current window
    write text "cd ~/GIT/crypho.tests"
    write text "code ."
    write text "./bin/supervisord"
    write text "./bin/supervisorctl"
  end tell

  tell current window
    create tab with default profile
  end tell
  tell first session of current tab of current window
    write text "cd ~/GIT/crypho.tests/src/behaving"
  end tell

  tell current window
    create tab with default profile
  end tell
  tell first session of current tab of current window
    write text "cd ~/GIT/crypho.native"
    write text "code ."
  end tell
end tell