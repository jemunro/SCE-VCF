FROM debian:trixie

RUN apt-get update && apt-get install -y --no-install-recommends procps && rm -rf /var/lib/apt/lists/*

ADD --chmod=755 https://github.com/HTGenomeAnalysisUnit/SCE-VCF/releases/download/v0.1.3/sceVCF /usr/local/bin/sceVCF

ENTRYPOINT ["sceVCF"]
