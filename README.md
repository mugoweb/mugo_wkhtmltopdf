Mugo wkhtmltopdf
================

Installation
------------

    1) Extract the contents under the extension/ directory of your
    eZ Publish installation and activate it for all siteaccesses.
    2) Regenerate the autoloads array

You can test it by accessing http://siteURL/wkhtmltopdf/node/2

Note:

    The extension uses the SiteURL in site.ini setting to generate the pdf, please make sure it is correct pointing to the current host url.

Installing wkhtmltopdf on CentOS
--------------------------------

    yum install fontconfig libXrender libXext xorg-x11-fonts-Type1 xorg-x11-fonts-75dpi freetype libpng zlib libjpeg-turbo openssl
    wget http://downloads.sourceforge.net/project/wkhtmltopdf/0.12.2.1/wkhtmltox-0.12.2.1_linux-centos6-amd64.rpm
    rpm -ivh wkhtmltox-0.12.2.1_linux-centos6-amd64.rpm
    ln -s /usr/local/bin/wkhtmltopdf /usr/bin/

If SELinux is running, this must be enabled or wkhtmltopdf will segfault: setsebool -P httpd_execmem 1

Install this file at /etc/fonts/conf.d/10-wkhtmltopdf.conf to improve text quality


    <?xml version='1.0'?>
    <!DOCTYPE fontconfig SYSTEM 'fonts.dtd'>
    <!-- Improve kerning and spacing for wkhtmltopdf as per https://github.com/wkhtmltopdf/wkhtmltopdf/issues/45#issuecomment-53485578 -->
    <fontconfig>
     <match target="font">
      <edit mode="assign" name="rgba">
       <const>rgb</const>
      </edit>
     </match>
     <match target="font">
      <edit mode="assign" name="hinting">
       <bool>true</bool>
      </edit>
     </match>
     <match target="font">
      <edit mode="assign" name="hintstyle">
       <const>hintslight</const>
      </edit>
     </match>
     <match target="font">
      <edit mode="assign" name="antialias">
       <bool>true</bool>
      </edit>
     </match>
      <match target="font">
        <edit mode="assign" name="lcdfilter">
          <const>lcddefault</const>
        </edit>
      </match>
    </fontconfig>


-
We need to use high resolutions images, we can also improve the quality by changing the transparent to a solid color:

image.ini.append.php


    [ImageMagick]
    ...
    Filters[]=background=-background %1
    Filters[]=flatten=-flatten
    ...
    [sample_pdf_image]
    Filters[]
    Filters[]=background=#eee
    Filters[]=flatten
