ARG SYNAPSE_VERSION="1.70.1"
FROM matrixdotorg/synapse:v${SYNAPSE_VERSION}

ADD --chmod=755 https://raw.githubusercontent.com/ma1uta/matrix-synapse-rest-password-provider/ed377fb70513c2e51b42055eb364195af1ccaf33/rest_auth_provider.py /usr/local/lib/python3.9/site-packages/rest_auth_provider.py
ADD --chmod=755 https://raw.githubusercontent.com/matrix-org/synapse-s3-storage-provider/fd1e12385ddc7cca7d9bf3cf7cbcff1c35c42f21/s3_storage_provider.py /usr/local/lib/python3.9/site-packages/s3_storage_provider.py

RUN pip install --no-deps --no-warn-script-location boto3 botocore humanize jmespath s3transfer tqdm typing-extensions && \
    mkdir -p /matrix-media-store-parent/media/local_content && \
    chmod 777 /matrix-media-store-parent && \
    chmod 777 /matrix-media-store-parent/media && \
    chmod 777 /matrix-media-store-parent/media/local_content

EXPOSE 8008/tcp 8448/tcp
