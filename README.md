# MS-VSCode Extensions
- mtxr.sqltools
- mtxr.sqltools-driver-pg

# same database for PHP and nodejs
psql -U postgres -d knex-test -f database-dump.sql # restore postgres dump

# php version of querying
php pdo.php # pdo test script

# IMPORTANT : nodejs version of querying
node index.js # knex.js test script

NOTE: this is not a complete setup guide, it's a minimalistic list of key points of a personal exploration. learning how to install and setup the database server, the php and nodejs interpreters, etc (other setup requirements for this to work)

# on my Fedora 34 this was needed (self-explanatory)
sudo dnf install php-cli php-pgsql php-json

