FROM ubuntu:latest

WORKDIR /trabajo_practico_edp_2022
ADD . /trabajo_practico_edp_2022

ENTRYPOINT ["/trabajo_practico_edp_2022/menu.sh"]
