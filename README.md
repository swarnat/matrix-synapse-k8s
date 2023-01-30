# Matrix Synapse - K8s optimized

Fast prototype of matrix-synapse, which already contain some library for K8s usage.  
Next to the base matrix-synapse, the following additions are done: 

  - Integrate https://github.com//ma1uta/matrix-synapse-rest-password-provider
  - Integrate https://github.com/devture/matrix-synapse-shared-secret-auth
  - Integrate https://github.com/matrix-org/synapse-s3-storage-provider
    - Added boto3 dependency
  - Create /data/media
