#!/bin/bash
if command -v systemctl >/dev/null 2>&1; then
  systemctl enable httpd
  systemctl restart httpd || systemctl start httpd
else
  service httpd restart || service httpd start
fi
