{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf600
{\fonttbl\f0\fnil\fcharset0 Menlo-Bold;\f1\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red252\green95\blue163;\red31\green31\blue36;\red255\green255\blue255;
\red65\green161\blue192;\red208\green191\blue105;\red108\green121\blue134;\red103\green183\blue164;\red161\green103\blue230;
\red252\green106\blue93;}
{\*\expandedcolortbl;;\csgenericrgb\c98839\c37355\c63833;\csgenericrgb\c12054\c12284\c14131;\csgenericrgb\c100000\c100000\c100000\c85000;
\csgenericrgb\c25490\c63137\c75294;\csgenericrgb\c81498\c74939\c41233;\csgenericrgb\c42394\c47462\c52518;\csgenericrgb\c40538\c71705\c64209;\csgenericrgb\c63137\c40392\c90196;
\csgenericrgb\c98912\c41558\c36568;}
\margl1440\margr1440\vieww12780\viewh11840\viewkind0
\deftab593
\pard\tx593\pardeftab593\pardirnatural\partightenfactor0

\f0\b\fs24 \cf2 \cb3 import
\f1\b0 \cf4 \'a0UIKit\

\f0\b \cf2 let
\f1\b0 \cf4 \'a0\cf5 input\cf4  =\'a0\cf6 17\cf4 \'a0\cf7 //value\cf4 \

\f0\b \cf2 var
\f1\b0 \cf4 \'a0\cf5 prime\cf4  =\'a0\cf6 1\cf4 \
\cf7 //throw error if less than 2 entered\cf4 \

\f0\b \cf2 if
\f1\b0 \cf4 \'a0\cf8 \cb3 input\cf4 \cb3 \'a0\cf9 \cb3 <\cf4 \cb3 \'a0\cf6 2\cf4 \'a0\{\
\'a0 \'a0\'a0\cf9 \cb3 assertionFailure\cf4 \cb3 (\cf10 "number should be 2 or greater"\cf4 )\
\}\
\cf7 //loop from 2 to input iterating by 1\cf4 \

\f0\b \cf2 for
\f1\b0 \cf4 \'a0i\'a0
\f0\b \cf2 in
\f1\b0 \cf4 \'a0\cf9 \cb3 stride\cf4 \cb3 (from:\'a0\cf6 2\cf4 , to:\'a0\cf8 \cb3 input\cf4 \cb3 , by:\'a0\cf6 1\cf4 ) \{\
\'a0 \'a0\'a0
\f0\b \cf2 if
\f1\b0 \cf4 \'a0\cf8 \cb3 input\cf4 \cb3 \'a0\cf9 \cb3 %\cf4 \cb3  i \cf9 \cb3 ==\cf4 \cb3 \'a0\cf6 0\cf4 \{\
\'a0 \'a0 \'a0 \'a0\'a0\cf8 \cb3 prime\cf4 \cb3 \'a0=\'a0\cf6 0\cf4 \
\'a0 \'a0\'a0\}\
\}\

\f0\b \cf2 if
\f1\b0 \cf4 \'a0\cf8 \cb3 prime\cf4 \cb3 \'a0\cf9 \cb3 ==\cf4 \cb3 \'a0\cf6 1\cf4 \'a0\{\
\'a0 \'a0\'a0\cf9 \cb3 print\cf4 \cb3 (\cf10 "\cf4 \\(\cf8 \cb3 input\cf4 \cb3 )\cf10  number is prime"\cf4 )\
\}\'a0
\f0\b \cf2 else
\f1\b0 \cf4 \'a0\{\
\'a0 \'a0\'a0\cf9 \cb3 print\cf4 \cb3 (\cf10 "\cf4 \\(\cf8 \cb3 input\cf4 \cb3 )\cf10  number is not prime"\cf4 )\
\}}