#!/bin/bash

cd $(basename $0)
docker build -t composer .
