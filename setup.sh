#!/bin/bash

createuser -s mydatabaseuser
createdb -O mydatabaseuser mysite
