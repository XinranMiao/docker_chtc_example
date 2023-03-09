
log-in
```{bash}
ssh username@submit.chtc.wisc.edu
# or submit2.chtc.wisc.edu
```
transfer files from your local machines and chtc
```{bash}
# from one's laptop to chtc
scp local/directory/file username@submit2.chtc.wisc.edu:file
# for example,
# scp ~/Downloads/test.sub xmiao27@submit2.chtc.wisc.edu:.

# from chtc to one's laptop
scp username@submit2.chtc.wisc.edu:remote/directory/file .
```


jobs
```{bash}
# submit a job
condor_submit r-example.sub

# check all my jobs in queue
condor_q 

# analyze a job (why a job keeps idle)
condor_q -better-analyze 9644580 

# log into a job
condor_ssh_to_job auto-retry 9644580 # 9644580 is the job id

# change requested resources
# use it when a job is held due to insufficient resources
condor_qedit 9644580 RequestMemory 2200

# remove a job
condor_rm 9644580
```


```{bash}
# check machines satisfying certain requirements
condor_status -compact -constraint 'TotalGpus > 0' -constraint 'CUDACapability > 7 && HasCHTCStaging == true'
```

check quota
```{bash}
# check quota for chtc
quota -vs

# check quota for staging folder
get_quotas /staging/xmiao27
```
