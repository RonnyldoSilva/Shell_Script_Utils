#!/bin/bash

sh example.sh & echo $!

sleep 20
kill $!
