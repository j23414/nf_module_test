# Nextflow module test

```
nextflow run main.nf

N E X T F L O W  ~  version 21.04.3
Launching `main.nf` [soggy_perlman] - revision: e4ac58ad40
executor >  local (4)
[11/fb44b4] process > w1:say_hi  [100%] 1 of 1 ✔
[b4/661db3] process > w1:say_hi2 [100%] 1 of 1 ✔
[b0/c2f19e] process > w2:say_hi  [100%] 1 of 1 ✔
[74/3cee0e] process > w2:say_hi2 [100%] 1 of 1 ✔
hi!
; other

hi!
; other
```

* Which means nextflow subworkflows can be imported (w1, w2) without being redefined :)
