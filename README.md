# Matrix Synapse - K8s optimized

Fast prototype of matrix-synapse, which already contain some library for K8s usage.  
Next to the base matrix-synapse, the following additions are done: 

  - Added https://github.com//ma1uta/matrix-synapse-rest-password-provider
  - Added https://github.com/matrix-org/synapse-s3-storage-provider
    - Added boto3 dependency
  - Create /data/media