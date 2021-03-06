#!/bin/sh

SCRIPT_NAME=decrypt.sh
EXECUTABLE_CLASS=org.jasypt.intf.cli.JasyptPBEStringDecryptionCLI
CURRENT_DIR=$PWD
EXEC_CLASSPATH=.:$CURRENT_DIR/jasypt-cli-bundle.jar:$JASYPT_CLASSPATH

JAVA_EXECUTABLE=java
if [ "$JAVA_HOME" != "" ]
then
  JAVA_EXECUTABLE=$JAVA_HOME/bin/java
fi

$JAVA_EXECUTABLE -classpath $EXEC_CLASSPATH $EXECUTABLE_CLASS $SCRIPT_NAME "$@"

