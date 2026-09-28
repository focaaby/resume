# pandoc/latex ships a minimal TeX Live; the -ubuntu tag also provides an arm64 build
FROM pandoc/latex:latest-ubuntu

RUN apt-get update \
 && apt-get install -y --no-install-recommends make \
 && rm -rf /var/lib/apt/lists/*

# LaTeX packages used by resume.tex and deedy-resume-openfont.cls
RUN tlmgr update --self \
 && tlmgr install textpos isodate substr titlesec fancyhdr xecjk ctex cite

WORKDIR /data
ENTRYPOINT []
CMD ["make"]
