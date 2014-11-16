#!/bin/sh

CMDNAME=`basename $0` # 解説 1
if [ $# -lt 1 ]; then
  echo "Usage: $CMDNAME RAILS_VERSION(4.1.0)" 1>&2 # spec_parameter(:models)" 1>&2
  exit 1
fi

#export RAILS_ENV=$1
pushd spec/dummy/app_$1
bundle exec rspec
popd

