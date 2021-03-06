# frozen_string_literal: true
RSpec.configure do |config|
  config.before do |example|
    mime_type = if example.metadata[:is_song]
                  'audio/mp3'
                else
                  'image/tiff'
                end
    output = '{"Bits Per Sample":"8 8 8 bits/component/pixel","Compression":"Uncompressed","Content-Length":"196882","Content-Type":"' + mime_type + '","Creation-Date":"2014-12-03T12:40:50","Date/Time":"2014:12:03 12:40:50","Document Name":"color_200.tif","File Modified Date":"Thu Jul 13 17:34:57 PDT 2017","File Name":"example.tif20170713-88893-1cirjkm","File Size":"196882 bytes","Fill Order":"Normal","Image Height":"287 pixels","Image Width":"200 pixels","Inter Color Profile":"[560 bytes]","Last-Modified":"2014-12-03T12:40:50","Last-Save-Date":"2014-12-03T12:40:50","Make":"Phase One","Model":"P65+","Orientation":"Top, left side (Horizontal / normal)","Photometric Interpretation":"RGB","Planar Configuration":"Chunky (contiguous for each subsampling pixel)","Primary Chromaticities":"2748779008/4294967295 1417339264/4294967295 1288490240/4294967295 2576980480/4294967295 644245120/4294967295 257698032/4294967295","Resolution Unit":"Inch","Rows Per Strip":"13 rows/strip","Samples Per Pixel":"3 samples/pixel","Software":"Adobe Photoshop CS5.1 Macintosh","Strip Byte Counts":"7800 7800 7800 7800 7800 7800 7800 7800 7800 7800 7800 7800 7800 7800 7800 7800 7800 7800 7800 7800 7800 7800 600 bytes","Strip Offsets":"[23 longs]","Unknown tag (0x0129)":"0 1","Unknown tag (0x02bc)":"[14622 shorts]","Unknown tag (0x8649)":"[8822 shorts]","White Point":"1343036288/4294967295 1413044224/4294967295","X Resolution":"1120 dots per inch","X-Parsed-By":["org.apache.tika.parser.DefaultParser","org.apache.tika.parser.image.TiffParser"],"Y Resolution":"1120 dots per inch","date":"2014-12-03T12:40:50","dcterms:created":"2014-12-03T12:40:50","dcterms:modified":"2014-12-03T12:40:50","meta:creation-date":"2014-12-03T12:40:50","meta:save-date":"2014-12-03T12:40:50","modified":"2014-12-03T12:40:50","resourceName":"example.tif20170713-88893-1cirjkm","tiff:BitsPerSample":"8","tiff:ImageLength":"287","tiff:ImageWidth":"200","tiff:Make":"Phase One","tiff:Model":"P65+","tiff:Orientation":"1","tiff:ResolutionUnit":"Inch","tiff:SamplesPerPixel":"3","tiff:Software":"Adobe Photoshop CS5.1 Macintosh","tiff:XResolution":"1120.0","tiff:YResolution":"1120.0"}'
    ruby_mock = instance_double(RubyTikaApp, to_json: output)
    allow(RubyTikaApp).to receive(:new).and_return(ruby_mock)
  end
end
