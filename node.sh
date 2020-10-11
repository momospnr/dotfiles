#!/bin/bash

echo "installing node"
which nodebrew >/dev/null 2>&1 && nodebrew install-bainary stable

echo "select node"
which nodebrew >/dev/null 2>&1 && nodebrew use stable

#global_packages = (
#  eslint
#  prettier
#  gulp
#  create-react-app
#)
#
#echo "installing packages globally"
#for global-packages in "${global_packages[@]}"; do
#  yarn global add $global_package
#done
#
#cat << END
#
