path = /data/backup
find $path type -f -mtime +2 -exec rm -f {}\;
# can also use find $path type -f -mtime +2 -delete
echo "Deleted directories older than 2 days from $backup_dir"