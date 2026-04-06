FROM roundcube/roundcubemail:latest

COPY assets/logo.png /var/www/html/program/resources/skins/elastic/images/logo.png
COPY assets/favicon.ico /var/www/html/program/resources/skins/elastic/images/favicon.ico

RUN sed -i 's/Roundcube Webmail/Webmail - Lopes Contabilidade/g' \
 /var/www/html/program/resources/skins/elastic/templates/login.html \
 /var/www/html/program/resources/skins/elastic/templates/layout.html
