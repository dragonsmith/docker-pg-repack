# Image of Postgres with pg_repack

## K8s example

```shell

# run pod
kubectl run repack --image dragonsmith/pg-repack:1.4.7-13.5 -n your-namespace

# enter the pod
kubectl exec -it -n your-namespace repack -- /bin/bash

# run tmux if you want
tmux

# execute pg_repack against desired db/table
/usr/lib/postgresql/13/bin/pg_repack -h dbhost -U postgres -d dbname -t tablename -k
```

Delete the pod from above after it is no longer needed:

```shell
kubectl delete po -n your-namespace repack
```
