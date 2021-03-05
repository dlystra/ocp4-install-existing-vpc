#!/bin/bash

DEPLOY_DIR=$1
ACTION=$2

${HOME}/openshift-install ${ACTION} cluster --dir=${DEPLOY_DIR} --log-level=info