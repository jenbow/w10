

awk -F $'\t' ' NR > 1 { if ( min == "") { min = max = $9 } ;\
                        if ( $9 > max ) { max = $9 } ;\
                        if ($9 < min ) { min = $9 } ;\
sum += $9 } END { print "min " min " max " max " avg " sum / ( NR - 1 ) } ' ../amazon_reviews_us_Books_v1_02.tsv
