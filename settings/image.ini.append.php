<?php /* #?ini charset="utf-8"?

# It is better to change PNG transparent backgrounds to a solid color

[ImageMagick]
Filters[]=background=-background %1
Filters[]=flatten=-flatten

[AliasSettings]
AliasList[]=sample_pdf_image

[sample_pdf_image]
Filters[]
Filters[]=background=#eee
Filters[]=flatten

*/ ?>
