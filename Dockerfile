FROM matrixdotorg/synapse:v1.89.0

ADD --chmod=755 https://raw.githubusercontent.com/ma1uta/matrix-synapse-rest-password-provider/ed377fb70513c2e51b42055eb364195af1ccaf33/rest_auth_provider.py /usr/local/lib/python3.11/site-packages/rest_auth_provider.py
ADD --chmod=755 https://raw.githubusercontent.com/devture/matrix-synapse-shared-secret-auth/2.0.2/shared_secret_authenticator.py /usr/local/lib/python3.11/site-packages/shared_secret_authenticator.py

RUN pip install --no-deps --no-warn-script-location boto3 botocore humanize jmespath s3transfer tqdm typing-extensions synapse-s3-storage-provider==1.2.0 && \
    mkdir -p /matrix-media-store-parent/media/local_content && \
    chmod 777 /matrix-media-store-parent && \
    chmod 777 /matrix-media-store-parent/media && \
    chmod 777 /matrix-media-store-parent/media/local_content

EXPOSE 8008/tcp 8448/tcp
