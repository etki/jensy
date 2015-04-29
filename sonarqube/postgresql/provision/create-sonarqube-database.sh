#!/bin/bash

echo "CREATE DATABASE sonarqube" | gosu postgres postgres --single
