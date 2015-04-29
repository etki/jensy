#!/bin/bash

echo "CREATE DATABASE redmine" | gosu postgres postgres --single
