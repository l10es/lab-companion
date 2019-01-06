#! /usr/bin/env bash
echo "Lab-companion setup"

bundle install && \
rake db:migrate && \
rake db:seed && \

echo "Set-up has been compleated."
echo ""
echo "NOTICE: Database has been set development environment"