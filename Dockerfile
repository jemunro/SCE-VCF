FROM debian:trixie

ADD --chmod=755 https://github.com/HTGenomeAnalysisUnit/SCE-VCF/releases/download/v0.1.3/sceVCF /usr/local/bin/sceVCF

ENTRYPOINT ["sceVCF"]
