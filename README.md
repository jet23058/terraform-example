# 使用 AWS provider 的 terraform 練習
## 安裝 homebrew hashicorp/tap/terraform
```shell
$ brew install hashicorp/tap/terraform
```

### 相關語法
```shell
# 初始化
$ terraform init

# 檢查語法
$ terraform validate

# 預覽
$ terraform plan

# 建立資源
$ terraform apply

# 刪除資源
$ terraform destroy
```

## AWS 設定
### 修改 `~/.aws/config`
```conf
[profile jet-oneself]
region=ap-northeast-1
output=json

[profile jet-oneself-staging]
role_arn=arn:aws:iam::<role_id>:role/<role_name> # aws iam role
source_profile=jet-oneself
```

### 修改 `~/.aws/credentials`
```conf
[jet-oneself]
aws_access_key_id = <PUT YOUR ACCESS KEY>
aws_secret_access_key = <PUT YOUR SECRET ACCESS KEY>
```

## Kubernetes
### 建立了 Cluster 後記得跑
```shell
$ aws eks update-kubeconfig --region ap-northeast-1 --name <cluster_name> --profile <aws_credentials_name>
```

| 如果遇到了 `Error: Kubernetes cluster unreachable: invalid configuration: no configuration has been provided, try setting KUBERNETES_MASTER environment variable`
則執行：
```shell
$ export KUBE_CONFIG_PATH=~/.kube/config
```

## argocd
### port-forward
```shell
$ kubectl get pods -n argocd
$ kubectl port-forward svc/argocd-server -n argocd 8080:80
```

### 取得預設帳密
username: `admin`

password: 
```shell
	$ kubectl get secrets argocd-initial-admin-secret -o yaml -n argocd

	# without `%`
	$ kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
```

### 取得 argocd application 的權限 (因為都沒有設定，所以是全允許 eks)
$ kubectl get clusterrole | grep argo
$ kubectl describe clusterrole argocd-application-controller