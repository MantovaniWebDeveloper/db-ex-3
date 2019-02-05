{\rtf1\ansi\ansicpg1252\cocoartf1561\cocoasubrtf600
{\fonttbl\f0\fswiss\fcharset0 Helvetica;\f1\fnil\fcharset0 Lato-Regular;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 /*
\f1\fs37\fsmilli18667 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Seleziona tutti gli ospiti che sono stati identificati con la carta di identit\'e0
\f0\fs24 \cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 */\
\
SELECT *\
FROM ospiti\
WHERE document_type = "CI"\
\
/*
\f1\fs37\fsmilli18667 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Seleziona tutti gli ospiti che sono nati dopo il 1988
\f0\fs24 \cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 */\
\
SELECT *\
FROM ospiti\
WHERE date_of_birth > "1988"\
\
/*
\f1\fs37\fsmilli18667 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Seleziona tutti gli ospiti il cui nome inizia con la D
\f0\fs24 \cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 */\
\
SELECT *\
FROM ospiti\
WHERE name LIKE "D%"\
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 /*
\f1\fs37\fsmilli18667 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Calcola il totale degli ordini accepted
\f0\fs24 \cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 */\
\
SELECT  COUNT(status)\
FROM pagamenti\
where status = "accepted"\
\
SELECT  MAX(price)\
FROM pagamenti\
\
SELECT  * \
FROM ospiti\
where document_type = "Driver License"\
and date_of_birth = "1975"\
\
\
SELECT count(ospite_id) \
FROM paganti\
where ospite_id IS NOT NULL\
\
SELECT SUM(beds)\
FROM stanze\
}