FROM rockylinux:8.9

ENV HOME "/root"

RUN 
RUN <<EOF
  dnf -y update && dnf -y groupinstall "Development Tools"  && dnf -y install gcc-gfortran
  echo "alias ll='ls -l'" >> ${HOME}/.bashrc
  echo "alias python='python3'" >> ${HOME}/.bashrc
  echo "alias pip='pip3'" >> ${HOME}/.bashrc
  # echo "eval \"\$(direnv hook bash)\"" >> ${HOME}/.bashrc
EOF