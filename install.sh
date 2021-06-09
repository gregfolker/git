#!/usr/bin/env bash

INSTALL_SCRIPT="${0}"
INSTALL_DIR="${0%/*}"

GITCONFIG="$HOME/.gitconfig"

echo "Running ${INSTALL_SCRIPT}..."

if [[ -e ${GITCONFIG} ]] ; then
   echo "Creating a backup of ${GITCONFIG} as ${GITCONFIG}-old..."
   mv ${GITCONFIG} ${GITCONFIG}-old
fi

touch ${GITCONFIG} && ln -sf "${PWD}/.gitconfig" ${GITCONFIG} && echo "Successfully installed global git configuration"
