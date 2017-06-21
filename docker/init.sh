#!/bin/bash
[[ -z "${1}" ]] && echo "Cluster name must be specified" && exit 1;

echo "Generating '/journald-cloudwatch-logs.conf'..."
echo "log_group = \"${1}\"" > /journald-cloudwatch-logs.conf
echo "state_file = \"/var/journald-cloudwatch-logs/state\"" >> /journald-cloudwatch-logs.conf

echo "Executing '/journald-cloudwatch-logs'..."
/journald-cloudwatch-logs "/journald-cloudwatch-logs.conf"
