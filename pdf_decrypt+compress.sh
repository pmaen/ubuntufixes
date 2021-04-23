#!/bin/bash
read -p "Please enter the full path of the PDF file without the extension!     " filename
read -p "Please enter the file password!     " pw
filepdf="$filename.pdf"
fileps="$filename.ps"
fileconv="$filename-dec.pdf"
pdftops -upw $pw $filepdf $fileps
ps2pdf -dOptimize=true -dUseFlateCompression=true -dPDFSETTINGS=/screen $fileps $fileconv
rm $fileps
