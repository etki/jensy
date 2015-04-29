#!/bin/bash

echo "CREATE DATABASE gitlab" | gosu postgres postgres --single
