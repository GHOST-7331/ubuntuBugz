#!/bin/bash

# Ensure the script is run as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script as root."
  exit 1
fi

# Update package list and upgrade system packages
apt-get update -y
apt-get upgrade -y

# Install basic dependencies
apt-get install -y build-essential git

# Install Go
apt-get install -y golang-go

# Network scanner
apt-get install -y nmap masscan

# Subdomain Enumeration and DNS Resolver
go get -u github.com/projectdiscovery/massdns/cmd/massdns
go get -u github.com/projectdiscovery/subfinder/v2/cmd/subfinder
go get -u github.com/guelfoweb/knock/cmd/knock
go get -u github.com/AdrK/github-subdomains
go get -u github.com/aboul3la/Sublist3r/v2/cmd/sublist3r
go get -u github.com/nsonaniya2010/pnrd
go get -u github.com/OWASP/Amass/v3/cmd/amass
go get -u github.com/OWASP/Amass/v3/...
go get -u github.com/hakt0r/fuckallyall
go get -u github.com/dwisiswant0/crtndstry
go get -u github.com/tomnomnom/assetfinder
go get -u github.com/projectdiscovery/dnsx/cmd/dnsx
go get -u github.com/ProjectAnte/dnsgen/cmd/dnsgen

# Subdomain Takeovers
go get -u github.com/Ice3man543/SubOver
go get -u github.com/maaaaz/webscreenshot
go get -u github.com/ffuf/ffuf

# Web Fuzzer
go get -u github.com/maurosoria/dirsearch
go get -u github.com/ffuf/ffuf

# Wordlists
apt-get install -y seclists

# Scanner CMS
apt-get install -y wpscan droopescan

# Vuln SQL
apt-get install -y sqlmap
go get -u github.com/codingo/noSQLMap

# Enumeration Javascript
go get -u github.com/GerbenJavado/LinkFinder
go get -u github.com/m4ll0k/SecretFinder
go get -u github.com/antichown/jsparser/cmd/jsparser

# Visual Recon
go get -u github.com/michenriksen/aquatone
go get -u github.com/003random/getJS
go get -u github.com/jaeles-project/gospider
go get -u github.com/hakluke/hakrawler
go get -u github.com/bugscatcher/katana

# Vuln XSS
go get -u github.com/s0md3v/XSStrike
go get -u github.com/mandatoryprogrammer/xss-loader
go get -u github.com/odedshimon/XSS-Freak
go get -u github.com/m4ll0k/GXSS

# Vuln SSRF
go get -u github.com/swisskyrepo/SSRFmap
go get -u github.com/tarunkant/Gopherus

# Vulnerability Scanner
go get -u github.com/projectdiscovery/nuclei/v2/cmd/nuclei

# Virtual Host Discovery
go get -u github.com/jobertabma/virtual-host-discovery

# Useful Tools
go get -u github.com/tomnomnom/anew
go get -u github.com/stefanprodan/unew
go get -u github.com/tomnomnom/gf
go get -u github.com/tomnomnom/httprobe
go get -u github.com/projectdiscovery/httpx/cmd/httpx
go get -u github.com/tomnomnom/waybackurls
go get -u github.com/chenjiandongx/Arjun
go get -u github.com/lc/gau
go get -u github.com/1ndianl33t/urlclone/cmd/uro
go get -u github.com/tomnomnom/qsreplace
go get -u github.com/laramies/theHarvester
