#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY|�*  ���Dp}���>nގ����       @[��R5�S� ��z�ѣ#5=L�@�hڀ5
mO(D 4 4     S�H�OPC@�M�@z���$�	��S&��4<�zA������C�![9!���s�gbN<qF�tJS��!]�  �m�f��ĀR����ԭa�qy�Ec��2*�rX睴�'�j<�SjI��?������f�c
�&�2�V${L�OY�Qg[=��e���)�1���B���.eu�M��bc�s�;<�F@L�՗��}�5X�#=�_���zIلb��mt�!z9b�.b�&Hr#"�ɷrC��I���hN_F��f���Yn#fǟprv��8d#Tw8���8�Jр�i�D�S�[�8p�ئ��*�=��+d�Tt_Qgr{�/�c49�aJ�D�b�%Ս�th�E�)�2dl,uz�TF)�9��"cx�a`]����i�MD�LT�����-/X���m%�B�\ؓ�l�4f�S2�Z�]��nZ�?C=�4�`�l�9���s��$�u4E��G���
��1geD�e�f�Ԭ�;U裉�*�o�}��]��|f55֧ �,R�`��6�GL7�A���pS�!*\1%$�Wz%����/�OU����0�Ԝ�-��D�^I/=�䄖��rE8P�|�*