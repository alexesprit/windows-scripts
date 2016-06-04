@echo off
"%JAVA_HOME%\bin\jarsigner" -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore %USERPROFILE%\Documents\Keystore\android-key %* esprit