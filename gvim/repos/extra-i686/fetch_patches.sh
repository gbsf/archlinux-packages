# the external logic for pulling in patches

get_patches() {
  _patchdir=${startdir}/src/patches
  cd ${startdir}/src/vim$(echo ${_srcver} | sed "s/\.//")
  if [ -d ${_patchdir} ]; then
    rm -rf ${_patchdir}
    echo -e "\tremove patches from old build"
  fi
  mkdir ${_patchdir} && cd ${_patchdir}
  _rpath=ftp://ftp.vim.org/pub/vim/patches/${_srcver}

  # change IFS to loop line-by-line
  _OLDIFS=$IFS
  IFS="
"
  echo -e "\tfetching checksumfile for patches"
  wget ${_rpath}/MD5SUMS >/dev/null 2>&1

  downloads=0
  for _line in $(/bin/cat MD5SUMS); do
    downloads=$((${downloads} + 1))
    _md5=$(echo $_line | cut -d ' ' -f1)
    _file=$(echo $_line | cut -d ' ' -f3)
    if [ -f ${SRCDEST}/vim-${_srcver}/${_file} ]; then
      echo -e "\thaving patch file:${_file}"
      cp ${SRCDEST}/vim-${_srcver}/${_file} ./
    else
      echo -n -e "\t... fetching patch file: ${_file} ..."
      wget ${_rpath}/${_file} >/dev/null 2>&1
      if [ -w ${SRCDEST} ]; then
        if [ ! -d ${SRCDEST}/vim-${_srcver} ]; then
          mkdir -p ${SRCDEST}/vim-${_srcver}
        fi
        cp ${_file} ${SRCDEST}/vim-${_srcver}/
        echo " done!"
      fi
    fi

    if [ $(echo "${_md5}  ${_file}" | md5sum --status -c -) ]; then
      echo ${_file} md5sums do not match
      return 1
    fi
  done

  ## TEMPFIX stupid fuckup upstream
  mv ./7.1.126ne ./7.1.126
  (( downloads=${downloads} - 1 ))
  ########

  if [ ${downloads} != ${_patchlevel} ]; then
    echo -e "Number of patches does not match the patchlevel!\nEdit the PKGBUILD accordingly!"
    return 1
  fi
  IFS=$_OLDIFS
  rm MD5SUMS
  cd ${startdir}/src/vim$(echo ${_srcver} | sed "s/\.//")
  for _patch in $(/bin/ls ${_patchdir}); do
    patch -Np0 -i ${_patchdir}/${_patch} || return 1
  done
  rm -rf ${_patchdir}
  return 0
}
