# mars helm charts

> [xuanji golang version](https://github.com/DuC-cnZj/xuanji)

1. `helm repo add mars-charts https://duc-cnzj.github.io/mars-charts/`
2. `helm upgrade --install mars-charts/mars`


## configure

```yaml
debug: false
profile_enabled: false

# 'sqlite' or 'mysql'
db_driver: 'sqlite'
# if 'mysql' 外部数据库必填项
db_database: mars
db_host: xx.xx.xx.xx
db_port: 3306
db_username: root
db_password: ""

# 通配符域名，自动生成对应命名空间下的 https 域名
wildcard_domain: "*.test.local"
# cert-manager 的 cluster_issuer 名称
cluster_issuer: "prod"
# 集群lb ip
external_ip: "10.88.56.105"

# imagepullsecrets: docker 私有镜像仓库需要配置相关的账号密码以及仓库地址
imagepullsecrets:
- username: "jack"
    password: "12345"
    email: "jack@example.com"
    server: "registry.cn-hangzhou.aliyuncs.com"
- username: "john"
    password: "12345"
    email: "john@example.com"
    server: "registry.cn-hangzhou.aliyuncs.com"
```
