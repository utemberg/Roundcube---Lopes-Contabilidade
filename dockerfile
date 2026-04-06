FROM roundcube/roundcubemail:latest

COPY assets/logo.png /var/www/html/program/resources/skins/elastic/images/logo.png
COPY assets/favicon.ico /var/www/html/program/resources/skins/elastic/images/favicon.ico

RUN grep -rl "Roundcube Webmail" /var/www/html 2>/dev/null | head -n 50 | xargs -r sed -i 's/Roundcube Webmail/Webmail - Lopes Contabilidade/g'
