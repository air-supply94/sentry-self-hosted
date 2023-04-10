cd /data/sentry-self-hosted/
docker compose run --rm -T -e SENTRY_LOG_LEVEL=CRITICAL web export > backup.json
git add ./backup.json
git commit -m "chore(*): 备份配置文件"
git pull --rebase origin master
git push origin master

