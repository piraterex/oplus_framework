.class public Landroid/media/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ExifInterface$ByteOrderedDataOutputStream;,
        Landroid/media/ExifInterface$ByteOrderedDataInputStream;,
        Landroid/media/ExifInterface$IfdType;,
        Landroid/media/ExifInterface$ExifTag;,
        Landroid/media/ExifInterface$ExifAttribute;,
        Landroid/media/ExifInterface$Rational;,
        Landroid/media/ExifInterface$ExifStreamType;
    }
.end annotation


# static fields
.field private static final greylist-max-o ASCII:Ljava/nio/charset/Charset;

.field private static final greylist-max-o BITS_PER_SAMPLE_GREYSCALE_1:[I

.field private static final greylist-max-o BITS_PER_SAMPLE_GREYSCALE_2:[I

.field private static final greylist-max-o BITS_PER_SAMPLE_RGB:[I

.field private static final greylist-max-o BYTE_ALIGN_II:S = 0x4949s

.field private static final greylist-max-o BYTE_ALIGN_MM:S = 0x4d4ds

.field private static final greylist-max-o DATA_DEFLATE_ZIP:I = 0x8

.field private static final greylist-max-o DATA_HUFFMAN_COMPRESSED:I = 0x2

.field private static final greylist-max-o DATA_JPEG:I = 0x6

.field private static final greylist-max-o DATA_JPEG_COMPRESSED:I = 0x7

.field private static final greylist-max-o DATA_LOSSY_JPEG:I = 0x884c

.field private static final greylist-max-o DATA_PACK_BITS_COMPRESSED:I = 0x8005

.field private static final greylist-max-o DATA_UNCOMPRESSED:I = 0x1

.field private static final greylist-max-o DEBUG:Z

.field private static final greylist-max-o EXIF_ASCII_PREFIX:[B

.field private static final greylist-max-o EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

.field private static final blacklist HEIF_BRAND_AVIF:[B

.field private static final blacklist HEIF_BRAND_AVIS:[B

.field private static final greylist-max-o HEIF_BRAND_HEIC:[B

.field private static final greylist-max-o HEIF_BRAND_MIF1:[B

.field private static final greylist-max-o HEIF_TYPE_FTYP:[B

.field private static final greylist-max-o IDENTIFIER_EXIF_APP1:[B

.field private static final blacklist IDENTIFIER_XMP_APP1:[B

.field private static final greylist-max-o IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o IFD_FORMAT_BYTE:I = 0x1

.field private static final greylist-max-o IFD_FORMAT_BYTES_PER_FORMAT:[I

.field private static final greylist-max-o IFD_FORMAT_DOUBLE:I = 0xc

.field private static final greylist-max-o IFD_FORMAT_IFD:I = 0xd

.field private static final greylist-max-o IFD_FORMAT_NAMES:[Ljava/lang/String;

.field private static final greylist-max-o IFD_FORMAT_SBYTE:I = 0x6

.field private static final greylist-max-o IFD_FORMAT_SINGLE:I = 0xb

.field private static final greylist-max-o IFD_FORMAT_SLONG:I = 0x9

.field private static final greylist-max-o IFD_FORMAT_SRATIONAL:I = 0xa

.field private static final greylist-max-o IFD_FORMAT_SSHORT:I = 0x8

.field private static final greylist-max-o IFD_FORMAT_STRING:I = 0x2

.field private static final greylist-max-o IFD_FORMAT_ULONG:I = 0x4

.field private static final greylist-max-o IFD_FORMAT_UNDEFINED:I = 0x7

.field private static final greylist-max-o IFD_FORMAT_URATIONAL:I = 0x5

.field private static final greylist-max-o IFD_FORMAT_USHORT:I = 0x3

.field private static final greylist-max-o IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o IFD_OFFSET:I = 0x8

.field private static final greylist-max-o IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o IFD_TYPE_EXIF:I = 0x1

.field private static final greylist-max-o IFD_TYPE_GPS:I = 0x2

.field private static final greylist-max-o IFD_TYPE_INTEROPERABILITY:I = 0x3

.field private static final greylist-max-o IFD_TYPE_ORF_CAMERA_SETTINGS:I = 0x7

.field private static final greylist-max-o IFD_TYPE_ORF_IMAGE_PROCESSING:I = 0x8

.field private static final greylist-max-o IFD_TYPE_ORF_MAKER_NOTE:I = 0x6

.field private static final greylist-max-o IFD_TYPE_PEF:I = 0x9

.field private static final greylist-max-o IFD_TYPE_PREVIEW:I = 0x5

.field private static final greylist-max-o IFD_TYPE_PRIMARY:I = 0x0

.field private static final greylist-max-o IFD_TYPE_THUMBNAIL:I = 0x4

.field private static final greylist-max-o IMAGE_TYPE_ARW:I = 0x1

.field private static final greylist-max-o IMAGE_TYPE_CR2:I = 0x2

.field private static final greylist-max-o IMAGE_TYPE_DNG:I = 0x3

.field private static final greylist-max-o IMAGE_TYPE_HEIF:I = 0xc

.field private static final greylist-max-o IMAGE_TYPE_JPEG:I = 0x4

.field private static final greylist-max-o IMAGE_TYPE_NEF:I = 0x5

.field private static final greylist-max-o IMAGE_TYPE_NRW:I = 0x6

.field private static final greylist-max-o IMAGE_TYPE_ORF:I = 0x7

.field private static final greylist-max-o IMAGE_TYPE_PEF:I = 0x8

.field private static final blacklist IMAGE_TYPE_PNG:I = 0xd

.field private static final greylist-max-o IMAGE_TYPE_RAF:I = 0x9

.field private static final greylist-max-o IMAGE_TYPE_RW2:I = 0xa

.field private static final greylist-max-o IMAGE_TYPE_SRW:I = 0xb

.field private static final greylist-max-o IMAGE_TYPE_UNKNOWN:I = 0x0

.field private static final blacklist IMAGE_TYPE_WEBP:I = 0xe

.field private static final greylist-max-o JPEG_SIGNATURE:[B

.field private static final greylist-max-o MARKER:B = -0x1t

.field private static final greylist-max-o MARKER_APP1:B = -0x1ft

.field private static final greylist-max-o MARKER_COM:B = -0x2t

.field private static final greylist-max-o MARKER_EOI:B = -0x27t

.field private static final greylist-max-o MARKER_SOF0:B = -0x40t

.field private static final greylist-max-o MARKER_SOF1:B = -0x3ft

.field private static final greylist-max-o MARKER_SOF10:B = -0x36t

.field private static final greylist-max-o MARKER_SOF11:B = -0x35t

.field private static final greylist-max-o MARKER_SOF13:B = -0x33t

.field private static final greylist-max-o MARKER_SOF14:B = -0x32t

.field private static final greylist-max-o MARKER_SOF15:B = -0x31t

.field private static final greylist-max-o MARKER_SOF2:B = -0x3et

.field private static final greylist-max-o MARKER_SOF3:B = -0x3dt

.field private static final greylist-max-o MARKER_SOF5:B = -0x3bt

.field private static final greylist-max-o MARKER_SOF6:B = -0x3at

.field private static final greylist-max-o MARKER_SOF7:B = -0x39t

.field private static final greylist-max-o MARKER_SOF9:B = -0x37t

.field private static final greylist-max-o MARKER_SOI:B = -0x28t

.field private static final greylist-max-o MARKER_SOS:B = -0x26t

.field private static final greylist-max-o MAX_THUMBNAIL_SIZE:I = 0x200

.field private static final greylist-max-o ORF_CAMERA_SETTINGS_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o ORF_IMAGE_PROCESSING_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o ORF_MAKER_NOTE_HEADER_1:[B

.field private static final greylist-max-o ORF_MAKER_NOTE_HEADER_1_SIZE:I = 0x8

.field private static final greylist-max-o ORF_MAKER_NOTE_HEADER_2:[B

.field private static final greylist-max-o ORF_MAKER_NOTE_HEADER_2_SIZE:I = 0xc

.field private static final greylist-max-o ORF_MAKER_NOTE_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o ORF_SIGNATURE_1:S = 0x4f52s

.field private static final greylist-max-o ORF_SIGNATURE_2:S = 0x5352s

.field public static final whitelist ORIENTATION_FLIP_HORIZONTAL:I = 0x2

.field public static final whitelist ORIENTATION_FLIP_VERTICAL:I = 0x4

.field public static final whitelist ORIENTATION_NORMAL:I = 0x1

.field public static final whitelist ORIENTATION_ROTATE_180:I = 0x3

.field public static final whitelist ORIENTATION_ROTATE_270:I = 0x8

.field public static final whitelist ORIENTATION_ROTATE_90:I = 0x6

.field public static final whitelist ORIENTATION_TRANSPOSE:I = 0x5

.field public static final whitelist ORIENTATION_TRANSVERSE:I = 0x7

.field public static final whitelist ORIENTATION_UNDEFINED:I = 0x0

.field private static final greylist-max-o ORIGINAL_RESOLUTION_IMAGE:I = 0x0

.field private static final greylist-max-o PEF_MAKER_NOTE_SKIP_SIZE:I = 0x6

.field private static final greylist-max-o PEF_SIGNATURE:Ljava/lang/String; = "PENTAX"

.field private static final greylist-max-o PEF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o PHOTOMETRIC_INTERPRETATION_BLACK_IS_ZERO:I = 0x1

.field private static final greylist-max-o PHOTOMETRIC_INTERPRETATION_RGB:I = 0x2

.field private static final greylist-max-o PHOTOMETRIC_INTERPRETATION_WHITE_IS_ZERO:I = 0x0

.field private static final greylist-max-o PHOTOMETRIC_INTERPRETATION_YCBCR:I = 0x6

.field private static final blacklist PNG_CHUNK_CRC_BYTE_LENGTH:I = 0x4

.field private static final blacklist PNG_CHUNK_TYPE_BYTE_LENGTH:I = 0x4

.field private static final blacklist PNG_CHUNK_TYPE_EXIF:[B

.field private static final blacklist PNG_CHUNK_TYPE_IEND:[B

.field private static final blacklist PNG_CHUNK_TYPE_IHDR:[B

.field private static final blacklist PNG_SIGNATURE:[B

.field private static final greylist-max-o RAF_INFO_SIZE:I = 0xa0

.field private static final greylist-max-o RAF_JPEG_LENGTH_VALUE_SIZE:I = 0x4

.field private static final greylist-max-o RAF_OFFSET_TO_JPEG_IMAGE_OFFSET:I = 0x54

.field private static final greylist-max-o RAF_SIGNATURE:Ljava/lang/String; = "FUJIFILMCCD-RAW"

.field private static final blacklist READ_IMAGE_DIRECTORY_COUNT:I = 0x200

.field private static final greylist-max-o REDUCED_RESOLUTION_IMAGE:I = 0x1

.field private static final greylist-max-o RW2_SIGNATURE:S = 0x55s

.field private static final greylist-max-o SIGNATURE_CHECK_SIZE:I = 0x1388

.field private static final greylist-max-o START_CODE:B = 0x2at

.field public static final whitelist STREAM_TYPE_EXIF_DATA_ONLY:I = 0x1

.field public static final whitelist STREAM_TYPE_FULL_IMAGE_DATA:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ExifInterface"

.field public static final whitelist TAG_APERTURE:Ljava/lang/String; = "FNumber"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TAG_APERTURE_VALUE:Ljava/lang/String; = "ApertureValue"

.field public static final whitelist TAG_ARTIST:Ljava/lang/String; = "Artist"

.field public static final whitelist TAG_BITS_PER_SAMPLE:Ljava/lang/String; = "BitsPerSample"

.field public static final whitelist TAG_BRIGHTNESS_VALUE:Ljava/lang/String; = "BrightnessValue"

.field public static final whitelist TAG_CFA_PATTERN:Ljava/lang/String; = "CFAPattern"

.field public static final whitelist TAG_COLOR_SPACE:Ljava/lang/String; = "ColorSpace"

.field public static final whitelist TAG_COMPONENTS_CONFIGURATION:Ljava/lang/String; = "ComponentsConfiguration"

.field public static final whitelist TAG_COMPRESSED_BITS_PER_PIXEL:Ljava/lang/String; = "CompressedBitsPerPixel"

.field public static final whitelist TAG_COMPRESSION:Ljava/lang/String; = "Compression"

.field public static final whitelist TAG_CONTRAST:Ljava/lang/String; = "Contrast"

.field public static final whitelist TAG_COPYRIGHT:Ljava/lang/String; = "Copyright"

.field public static final whitelist TAG_CUSTOM_RENDERED:Ljava/lang/String; = "CustomRendered"

.field public static final whitelist TAG_DATETIME:Ljava/lang/String; = "DateTime"

.field public static final whitelist TAG_DATETIME_DIGITIZED:Ljava/lang/String; = "DateTimeDigitized"

.field public static final whitelist TAG_DATETIME_ORIGINAL:Ljava/lang/String; = "DateTimeOriginal"

.field public static final whitelist TAG_DEFAULT_CROP_SIZE:Ljava/lang/String; = "DefaultCropSize"

.field public static final whitelist TAG_DEVICE_SETTING_DESCRIPTION:Ljava/lang/String; = "DeviceSettingDescription"

.field public static final whitelist TAG_DIGITAL_ZOOM_RATIO:Ljava/lang/String; = "DigitalZoomRatio"

.field public static final whitelist TAG_DNG_VERSION:Ljava/lang/String; = "DNGVersion"

.field private static final greylist-max-o TAG_EXIF_IFD_POINTER:Ljava/lang/String; = "ExifIFDPointer"

.field public static final whitelist TAG_EXIF_VERSION:Ljava/lang/String; = "ExifVersion"

.field public static final whitelist TAG_EXPOSURE_BIAS_VALUE:Ljava/lang/String; = "ExposureBiasValue"

.field public static final whitelist TAG_EXPOSURE_INDEX:Ljava/lang/String; = "ExposureIndex"

.field public static final whitelist TAG_EXPOSURE_MODE:Ljava/lang/String; = "ExposureMode"

.field public static final whitelist TAG_EXPOSURE_PROGRAM:Ljava/lang/String; = "ExposureProgram"

.field public static final whitelist TAG_EXPOSURE_TIME:Ljava/lang/String; = "ExposureTime"

.field public static final whitelist TAG_FILE_SOURCE:Ljava/lang/String; = "FileSource"

.field public static final whitelist TAG_FLASH:Ljava/lang/String; = "Flash"

.field public static final whitelist TAG_FLASHPIX_VERSION:Ljava/lang/String; = "FlashpixVersion"

.field public static final whitelist TAG_FLASH_ENERGY:Ljava/lang/String; = "FlashEnergy"

.field public static final whitelist TAG_FOCAL_LENGTH:Ljava/lang/String; = "FocalLength"

.field public static final whitelist TAG_FOCAL_LENGTH_IN_35MM_FILM:Ljava/lang/String; = "FocalLengthIn35mmFilm"

.field public static final whitelist TAG_FOCAL_PLANE_RESOLUTION_UNIT:Ljava/lang/String; = "FocalPlaneResolutionUnit"

.field public static final whitelist TAG_FOCAL_PLANE_X_RESOLUTION:Ljava/lang/String; = "FocalPlaneXResolution"

.field public static final whitelist TAG_FOCAL_PLANE_Y_RESOLUTION:Ljava/lang/String; = "FocalPlaneYResolution"

.field public static final whitelist TAG_F_NUMBER:Ljava/lang/String; = "FNumber"

.field public static final whitelist TAG_GAIN_CONTROL:Ljava/lang/String; = "GainControl"

.field public static final whitelist TAG_GPS_ALTITUDE:Ljava/lang/String; = "GPSAltitude"

.field public static final whitelist TAG_GPS_ALTITUDE_REF:Ljava/lang/String; = "GPSAltitudeRef"

.field public static final whitelist TAG_GPS_AREA_INFORMATION:Ljava/lang/String; = "GPSAreaInformation"

.field public static final whitelist TAG_GPS_DATESTAMP:Ljava/lang/String; = "GPSDateStamp"

.field public static final whitelist TAG_GPS_DEST_BEARING:Ljava/lang/String; = "GPSDestBearing"

.field public static final whitelist TAG_GPS_DEST_BEARING_REF:Ljava/lang/String; = "GPSDestBearingRef"

.field public static final whitelist TAG_GPS_DEST_DISTANCE:Ljava/lang/String; = "GPSDestDistance"

.field public static final whitelist TAG_GPS_DEST_DISTANCE_REF:Ljava/lang/String; = "GPSDestDistanceRef"

.field public static final whitelist TAG_GPS_DEST_LATITUDE:Ljava/lang/String; = "GPSDestLatitude"

.field public static final whitelist TAG_GPS_DEST_LATITUDE_REF:Ljava/lang/String; = "GPSDestLatitudeRef"

.field public static final whitelist TAG_GPS_DEST_LONGITUDE:Ljava/lang/String; = "GPSDestLongitude"

.field public static final whitelist TAG_GPS_DEST_LONGITUDE_REF:Ljava/lang/String; = "GPSDestLongitudeRef"

.field public static final whitelist TAG_GPS_DIFFERENTIAL:Ljava/lang/String; = "GPSDifferential"

.field public static final whitelist TAG_GPS_DOP:Ljava/lang/String; = "GPSDOP"

.field public static final whitelist TAG_GPS_IMG_DIRECTION:Ljava/lang/String; = "GPSImgDirection"

.field public static final whitelist TAG_GPS_IMG_DIRECTION_REF:Ljava/lang/String; = "GPSImgDirectionRef"

.field private static final greylist-max-o TAG_GPS_INFO_IFD_POINTER:Ljava/lang/String; = "GPSInfoIFDPointer"

.field public static final whitelist TAG_GPS_LATITUDE:Ljava/lang/String; = "GPSLatitude"

.field public static final whitelist TAG_GPS_LATITUDE_REF:Ljava/lang/String; = "GPSLatitudeRef"

.field public static final whitelist TAG_GPS_LONGITUDE:Ljava/lang/String; = "GPSLongitude"

.field public static final whitelist TAG_GPS_LONGITUDE_REF:Ljava/lang/String; = "GPSLongitudeRef"

.field public static final whitelist TAG_GPS_MAP_DATUM:Ljava/lang/String; = "GPSMapDatum"

.field public static final whitelist TAG_GPS_MEASURE_MODE:Ljava/lang/String; = "GPSMeasureMode"

.field public static final whitelist TAG_GPS_PROCESSING_METHOD:Ljava/lang/String; = "GPSProcessingMethod"

.field public static final whitelist TAG_GPS_SATELLITES:Ljava/lang/String; = "GPSSatellites"

.field public static final whitelist TAG_GPS_SPEED:Ljava/lang/String; = "GPSSpeed"

.field public static final whitelist TAG_GPS_SPEED_REF:Ljava/lang/String; = "GPSSpeedRef"

.field public static final whitelist TAG_GPS_STATUS:Ljava/lang/String; = "GPSStatus"

.field public static final whitelist TAG_GPS_TIMESTAMP:Ljava/lang/String; = "GPSTimeStamp"

.field public static final whitelist TAG_GPS_TRACK:Ljava/lang/String; = "GPSTrack"

.field public static final whitelist TAG_GPS_TRACK_REF:Ljava/lang/String; = "GPSTrackRef"

.field public static final whitelist TAG_GPS_VERSION_ID:Ljava/lang/String; = "GPSVersionID"

.field private static final greylist-max-o TAG_HAS_THUMBNAIL:Ljava/lang/String; = "HasThumbnail"

.field public static final whitelist TAG_IMAGE_DESCRIPTION:Ljava/lang/String; = "ImageDescription"

.field public static final whitelist TAG_IMAGE_LENGTH:Ljava/lang/String; = "ImageLength"

.field public static final whitelist TAG_IMAGE_UNIQUE_ID:Ljava/lang/String; = "ImageUniqueID"

.field public static final whitelist TAG_IMAGE_WIDTH:Ljava/lang/String; = "ImageWidth"

.field private static final greylist-max-o TAG_INTEROPERABILITY_IFD_POINTER:Ljava/lang/String; = "InteroperabilityIFDPointer"

.field public static final whitelist TAG_INTEROPERABILITY_INDEX:Ljava/lang/String; = "InteroperabilityIndex"

.field public static final whitelist TAG_ISO:Ljava/lang/String; = "ISOSpeedRatings"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TAG_ISO_SPEED_RATINGS:Ljava/lang/String; = "ISOSpeedRatings"

.field public static final whitelist TAG_JPEG_INTERCHANGE_FORMAT:Ljava/lang/String; = "JPEGInterchangeFormat"

.field public static final whitelist TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:Ljava/lang/String; = "JPEGInterchangeFormatLength"

.field public static final whitelist TAG_LIGHT_SOURCE:Ljava/lang/String; = "LightSource"

.field public static final whitelist TAG_MAKE:Ljava/lang/String; = "Make"

.field public static final whitelist TAG_MAKER_NOTE:Ljava/lang/String; = "MakerNote"

.field public static final whitelist TAG_MAX_APERTURE_VALUE:Ljava/lang/String; = "MaxApertureValue"

.field public static final whitelist TAG_METERING_MODE:Ljava/lang/String; = "MeteringMode"

.field public static final whitelist TAG_MODEL:Ljava/lang/String; = "Model"

.field public static final whitelist TAG_NEW_SUBFILE_TYPE:Ljava/lang/String; = "NewSubfileType"

.field public static final whitelist TAG_OECF:Ljava/lang/String; = "OECF"

.field public static final whitelist TAG_OFFSET_TIME:Ljava/lang/String; = "OffsetTime"

.field public static final whitelist TAG_OFFSET_TIME_DIGITIZED:Ljava/lang/String; = "OffsetTimeDigitized"

.field public static final whitelist TAG_OFFSET_TIME_ORIGINAL:Ljava/lang/String; = "OffsetTimeOriginal"

.field public static final whitelist TAG_ORF_ASPECT_FRAME:Ljava/lang/String; = "AspectFrame"

.field private static final greylist-max-o TAG_ORF_CAMERA_SETTINGS_IFD_POINTER:Ljava/lang/String; = "CameraSettingsIFDPointer"

.field private static final greylist-max-o TAG_ORF_IMAGE_PROCESSING_IFD_POINTER:Ljava/lang/String; = "ImageProcessingIFDPointer"

.field public static final whitelist TAG_ORF_PREVIEW_IMAGE_LENGTH:Ljava/lang/String; = "PreviewImageLength"

.field public static final whitelist TAG_ORF_PREVIEW_IMAGE_START:Ljava/lang/String; = "PreviewImageStart"

.field public static final whitelist TAG_ORF_THUMBNAIL_IMAGE:Ljava/lang/String; = "ThumbnailImage"

.field public static final whitelist TAG_ORIENTATION:Ljava/lang/String; = "Orientation"

.field public static final whitelist TAG_PHOTOMETRIC_INTERPRETATION:Ljava/lang/String; = "PhotometricInterpretation"

.field public static final whitelist TAG_PIXEL_X_DIMENSION:Ljava/lang/String; = "PixelXDimension"

.field public static final whitelist TAG_PIXEL_Y_DIMENSION:Ljava/lang/String; = "PixelYDimension"

.field public static final whitelist TAG_PLANAR_CONFIGURATION:Ljava/lang/String; = "PlanarConfiguration"

.field public static final whitelist TAG_PRIMARY_CHROMATICITIES:Ljava/lang/String; = "PrimaryChromaticities"

.field private static final greylist-max-o TAG_RAF_IMAGE_SIZE:Landroid/media/ExifInterface$ExifTag;

.field public static final whitelist TAG_REFERENCE_BLACK_WHITE:Ljava/lang/String; = "ReferenceBlackWhite"

.field public static final whitelist TAG_RELATED_SOUND_FILE:Ljava/lang/String; = "RelatedSoundFile"

.field public static final whitelist TAG_RESOLUTION_UNIT:Ljava/lang/String; = "ResolutionUnit"

.field public static final whitelist TAG_ROWS_PER_STRIP:Ljava/lang/String; = "RowsPerStrip"

.field public static final whitelist TAG_RW2_ISO:Ljava/lang/String; = "ISO"

.field public static final whitelist TAG_RW2_JPG_FROM_RAW:Ljava/lang/String; = "JpgFromRaw"

.field public static final whitelist TAG_RW2_SENSOR_BOTTOM_BORDER:Ljava/lang/String; = "SensorBottomBorder"

.field public static final whitelist TAG_RW2_SENSOR_LEFT_BORDER:Ljava/lang/String; = "SensorLeftBorder"

.field public static final whitelist TAG_RW2_SENSOR_RIGHT_BORDER:Ljava/lang/String; = "SensorRightBorder"

.field public static final whitelist TAG_RW2_SENSOR_TOP_BORDER:Ljava/lang/String; = "SensorTopBorder"

.field public static final whitelist TAG_SAMPLES_PER_PIXEL:Ljava/lang/String; = "SamplesPerPixel"

.field public static final whitelist TAG_SATURATION:Ljava/lang/String; = "Saturation"

.field public static final whitelist TAG_SCENE_CAPTURE_TYPE:Ljava/lang/String; = "SceneCaptureType"

.field public static final whitelist TAG_SCENE_TYPE:Ljava/lang/String; = "SceneType"

.field public static final whitelist TAG_SENSING_METHOD:Ljava/lang/String; = "SensingMethod"

.field public static final whitelist TAG_SHARPNESS:Ljava/lang/String; = "Sharpness"

.field public static final whitelist TAG_SHUTTER_SPEED_VALUE:Ljava/lang/String; = "ShutterSpeedValue"

.field public static final whitelist TAG_SOFTWARE:Ljava/lang/String; = "Software"

.field public static final whitelist TAG_SPATIAL_FREQUENCY_RESPONSE:Ljava/lang/String; = "SpatialFrequencyResponse"

.field public static final whitelist TAG_SPECTRAL_SENSITIVITY:Ljava/lang/String; = "SpectralSensitivity"

.field public static final whitelist TAG_STRIP_BYTE_COUNTS:Ljava/lang/String; = "StripByteCounts"

.field public static final whitelist TAG_STRIP_OFFSETS:Ljava/lang/String; = "StripOffsets"

.field public static final whitelist TAG_SUBFILE_TYPE:Ljava/lang/String; = "SubfileType"

.field public static final whitelist TAG_SUBJECT_AREA:Ljava/lang/String; = "SubjectArea"

.field public static final whitelist TAG_SUBJECT_DISTANCE:Ljava/lang/String; = "SubjectDistance"

.field public static final whitelist TAG_SUBJECT_DISTANCE_RANGE:Ljava/lang/String; = "SubjectDistanceRange"

.field public static final whitelist TAG_SUBJECT_LOCATION:Ljava/lang/String; = "SubjectLocation"

.field public static final whitelist TAG_SUBSEC_TIME:Ljava/lang/String; = "SubSecTime"

.field public static final whitelist TAG_SUBSEC_TIME_DIG:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final whitelist TAG_SUBSEC_TIME_DIGITIZED:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final whitelist TAG_SUBSEC_TIME_ORIG:Ljava/lang/String; = "SubSecTimeOriginal"

.field public static final whitelist TAG_SUBSEC_TIME_ORIGINAL:Ljava/lang/String; = "SubSecTimeOriginal"

.field private static final greylist-max-o TAG_SUB_IFD_POINTER:Ljava/lang/String; = "SubIFDPointer"

.field private static final greylist-max-o TAG_THUMBNAIL_DATA:Ljava/lang/String; = "ThumbnailData"

.field public static final whitelist TAG_THUMBNAIL_IMAGE_LENGTH:Ljava/lang/String; = "ThumbnailImageLength"

.field public static final whitelist TAG_THUMBNAIL_IMAGE_WIDTH:Ljava/lang/String; = "ThumbnailImageWidth"

.field private static final greylist-max-o TAG_THUMBNAIL_LENGTH:Ljava/lang/String; = "ThumbnailLength"

.field private static final greylist-max-o TAG_THUMBNAIL_OFFSET:Ljava/lang/String; = "ThumbnailOffset"

.field public static final whitelist TAG_THUMBNAIL_ORIENTATION:Ljava/lang/String; = "ThumbnailOrientation"

.field public static final whitelist TAG_TRANSFER_FUNCTION:Ljava/lang/String; = "TransferFunction"

.field public static final whitelist TAG_USER_COMMENT:Ljava/lang/String; = "UserComment"

.field public static final whitelist TAG_WHITE_BALANCE:Ljava/lang/String; = "WhiteBalance"

.field public static final whitelist TAG_WHITE_POINT:Ljava/lang/String; = "WhitePoint"

.field public static final whitelist TAG_XMP:Ljava/lang/String; = "Xmp"

.field public static final whitelist TAG_X_RESOLUTION:Ljava/lang/String; = "XResolution"

.field public static final whitelist TAG_Y_CB_CR_COEFFICIENTS:Ljava/lang/String; = "YCbCrCoefficients"

.field public static final whitelist TAG_Y_CB_CR_POSITIONING:Ljava/lang/String; = "YCbCrPositioning"

.field public static final whitelist TAG_Y_CB_CR_SUB_SAMPLING:Ljava/lang/String; = "YCbCrSubSampling"

.field public static final whitelist TAG_Y_RESOLUTION:Ljava/lang/String; = "YResolution"

.field private static final blacklist WEBP_CHUNK_SIZE_BYTE_LENGTH:I = 0x4

.field private static final blacklist WEBP_CHUNK_TYPE_ANIM:[B

.field private static final blacklist WEBP_CHUNK_TYPE_ANMF:[B

.field private static final blacklist WEBP_CHUNK_TYPE_BYTE_LENGTH:I = 0x4

.field private static final blacklist WEBP_CHUNK_TYPE_EXIF:[B

.field private static final blacklist WEBP_CHUNK_TYPE_VP8:[B

.field private static final blacklist WEBP_CHUNK_TYPE_VP8L:[B

.field private static final blacklist WEBP_CHUNK_TYPE_VP8X:[B

.field private static final blacklist WEBP_CHUNK_TYPE_VP8X_DEFAULT_LENGTH:I = 0xa

.field private static final blacklist WEBP_FILE_SIZE_BYTE_LENGTH:I = 0x4

.field private static final blacklist WEBP_SIGNATURE_1:[B

.field private static final blacklist WEBP_SIGNATURE_2:[B

.field private static final blacklist WEBP_VP8L_SIGNATURE:B = 0x2ft

.field private static final blacklist WEBP_VP8_SIGNATURE:[B

.field public static final whitelist WHITEBALANCE_AUTO:I = 0x0

.field public static final whitelist WHITEBALANCE_MANUAL:I = 0x1

.field private static final greylist-max-o sExifPointerTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sExifTagMapsForReading:[Ljava/util/HashMap;

.field private static final greylist-max-o sExifTagMapsForWriting:[Ljava/util/HashMap;

.field private static blacklist sFormatter:Ljava/text/SimpleDateFormat;

.field private static blacklist sFormatterTz:Ljava/text/SimpleDateFormat;

.field private static final greylist-max-o sGpsTimestampPattern:Ljava/util/regex/Pattern;

.field private static final greylist-max-o sNonZeroTimePattern:Ljava/util/regex/Pattern;

.field private static final greylist-max-o sTagSetForCompatibility:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAreThumbnailStripsConsecutive:Z

.field private greylist-max-o mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field private final greylist mAttributes:[Ljava/util/HashMap;

.field private greylist-max-o mExifByteOrder:Ljava/nio/ByteOrder;

.field private greylist-max-o mExifOffset:I

.field private blacklist mFilename:Ljava/lang/String;

.field private blacklist mHandledIfdOffsets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHasThumbnail:Z

.field private blacklist mHasThumbnailStrips:Z

.field private blacklist mIsExifDataOnly:Z

.field private greylist-max-o mIsInputStream:Z

.field private greylist-max-o mIsSupportedFile:Z

.field private greylist-max-o mMimeType:I

.field private blacklist mModified:Z

.field private greylist-max-o mOrfMakerNoteOffset:I

.field private greylist-max-o mOrfThumbnailLength:I

.field private greylist-max-o mOrfThumbnailOffset:I

.field private blacklist mReadImageFileDirectoryCount:I

.field private greylist-max-o mRw2JpgFromRawOffset:I

.field private greylist-max-o mSeekableFileDescriptor:Ljava/io/FileDescriptor;

.field private greylist-max-o mThumbnailBytes:[B

.field private greylist-max-o mThumbnailCompression:I

.field private greylist-max-o mThumbnailLength:I

.field private greylist-max-o mThumbnailOffset:I

.field private blacklist mXmpIsFromSeparateMarker:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetASCII()Ljava/nio/charset/Charset;
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetEXIF_ASCII_PREFIX()[B
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetIFD_FORMAT_NAMES()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 38

    .line 99
    const-string v0, "ExifInterface"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    .line 542
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/ExifInterface;->JPEG_SIGNATURE:[B

    .line 548
    const/4 v0, 0x4

    new-array v2, v0, [B

    fill-array-data v2, :array_1

    sput-object v2, Landroid/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    .line 549
    new-array v2, v0, [B

    fill-array-data v2, :array_2

    sput-object v2, Landroid/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    .line 550
    new-array v2, v0, [B

    fill-array-data v2, :array_3

    sput-object v2, Landroid/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    .line 551
    new-array v2, v0, [B

    fill-array-data v2, :array_4

    sput-object v2, Landroid/media/ExifInterface;->HEIF_BRAND_AVIF:[B

    .line 552
    new-array v2, v0, [B

    fill-array-data v2, :array_5

    sput-object v2, Landroid/media/ExifInterface;->HEIF_BRAND_AVIS:[B

    .line 560
    const/4 v2, 0x6

    new-array v3, v2, [B

    fill-array-data v3, :array_6

    sput-object v3, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    .line 562
    const/16 v3, 0xa

    new-array v4, v3, [B

    fill-array-data v4, :array_7

    sput-object v4, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    .line 578
    const/16 v4, 0x8

    new-array v5, v4, [B

    fill-array-data v5, :array_8

    sput-object v5, Landroid/media/ExifInterface;->PNG_SIGNATURE:[B

    .line 582
    new-array v5, v0, [B

    fill-array-data v5, :array_9

    sput-object v5, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    .line 584
    new-array v5, v0, [B

    fill-array-data v5, :array_a

    sput-object v5, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_IHDR:[B

    .line 586
    new-array v5, v0, [B

    fill-array-data v5, :array_b

    sput-object v5, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_IEND:[B

    .line 592
    new-array v5, v0, [B

    fill-array-data v5, :array_c

    sput-object v5, Landroid/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    .line 593
    new-array v5, v0, [B

    fill-array-data v5, :array_d

    sput-object v5, Landroid/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    .line 595
    new-array v5, v0, [B

    fill-array-data v5, :array_e

    sput-object v5, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    .line 597
    new-array v5, v1, [B

    fill-array-data v5, :array_f

    sput-object v5, Landroid/media/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    .line 600
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    const-string v6, "VP8X"

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    sput-object v5, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8X:[B

    .line 601
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    const-string v6, "VP8L"

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    sput-object v5, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    .line 602
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    const-string v6, "VP8 "

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    sput-object v5, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    .line 603
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    const-string v6, "ANIM"

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    sput-object v5, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_ANIM:[B

    .line 604
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    const-string v6, "ANMF"

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    sput-object v5, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_ANMF:[B

    .line 643
    const-string v6, ""

    const-string v7, "BYTE"

    const-string v8, "STRING"

    const-string v9, "USHORT"

    const-string v10, "ULONG"

    const-string v11, "URATIONAL"

    const-string v12, "SBYTE"

    const-string v13, "UNDEFINED"

    const-string v14, "SSHORT"

    const-string v15, "SLONG"

    const-string v16, "SRATIONAL"

    const-string v17, "SINGLE"

    const-string v18, "DOUBLE"

    const-string v19, "IFD"

    filled-new-array/range {v6 .. v19}, [Ljava/lang/String;

    move-result-object v5

    sput-object v5, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    .line 648
    const/16 v5, 0xe

    new-array v6, v5, [I

    fill-array-data v6, :array_10

    sput-object v6, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 651
    new-array v6, v4, [B

    fill-array-data v6, :array_11

    sput-object v6, Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    .line 679
    new-array v6, v1, [I

    fill-array-data v6, :array_12

    sput-object v6, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    .line 680
    const/4 v6, 0x1

    new-array v7, v6, [I

    const/4 v8, 0x0

    aput v0, v7, v8

    sput-object v7, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_1:[I

    .line 681
    new-array v7, v6, [I

    aput v4, v7, v8

    sput-object v7, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 1112
    const/16 v7, 0x2a

    new-array v7, v7, [Landroid/media/ExifInterface$ExifTag;

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v10, "NewSubfileType"

    const/16 v11, 0xfe

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v8

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v10, "SubfileType"

    const/16 v11, 0xff

    invoke-direct {v9, v10, v11, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v6

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "ImageWidth"

    const/16 v15, 0x100

    const/16 v16, 0x3

    const/16 v17, 0x4

    const/16 v18, 0x0

    move-object v13, v9

    invoke-direct/range {v13 .. v18}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/4 v10, 0x2

    aput-object v9, v7, v10

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "ImageLength"

    const/16 v15, 0x101

    move-object v13, v9

    invoke-direct/range {v13 .. v18}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v1

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "BitsPerSample"

    const/16 v13, 0x102

    invoke-direct {v9, v11, v13, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v0

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "Compression"

    const/16 v13, 0x103

    invoke-direct {v9, v11, v13, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/4 v11, 0x5

    aput-object v9, v7, v11

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "PhotometricInterpretation"

    const/16 v14, 0x106

    invoke-direct {v9, v13, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v2

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "ImageDescription"

    const/16 v14, 0x10e

    invoke-direct {v9, v13, v14, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/4 v13, 0x7

    aput-object v9, v7, v13

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "Make"

    const/16 v15, 0x10f

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v4

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "Model"

    const/16 v15, 0x110

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x9

    aput-object v9, v7, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v16, "StripOffsets"

    const/16 v17, 0x111

    const/16 v18, 0x3

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object v15, v9

    invoke-direct/range {v15 .. v20}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v3

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "Orientation"

    const/16 v3, 0x112

    invoke-direct {v9, v15, v3, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v3, 0xb

    aput-object v9, v7, v3

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "SamplesPerPixel"

    const/16 v3, 0x115

    invoke-direct {v9, v15, v3, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v3, 0xc

    aput-object v9, v7, v3

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v19, "RowsPerStrip"

    const/16 v20, 0x116

    const/16 v21, 0x3

    const/16 v22, 0x4

    const/16 v23, 0x0

    move-object/from16 v18, v9

    invoke-direct/range {v18 .. v23}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v15, 0xd

    aput-object v9, v7, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v19, "StripByteCounts"

    const/16 v20, 0x117

    move-object/from16 v18, v9

    invoke-direct/range {v18 .. v23}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v5

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "XResolution"

    const/16 v15, 0x11a

    invoke-direct {v9, v5, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0xf

    aput-object v9, v7, v5

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "YResolution"

    const/16 v5, 0x11b

    invoke-direct {v9, v15, v5, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x10

    aput-object v9, v7, v5

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "PlanarConfiguration"

    const/16 v5, 0x11c

    invoke-direct {v9, v15, v5, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x11

    aput-object v9, v7, v5

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "ResolutionUnit"

    const/16 v5, 0x128

    invoke-direct {v9, v15, v5, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x12

    aput-object v9, v7, v5

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "TransferFunction"

    const/16 v5, 0x12d

    invoke-direct {v9, v15, v5, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x13

    aput-object v9, v7, v5

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "Software"

    const/16 v5, 0x131

    invoke-direct {v9, v15, v5, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x14

    aput-object v9, v7, v5

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "DateTime"

    const/16 v15, 0x132

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x15

    aput-object v5, v7, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "Artist"

    const/16 v15, 0x13b

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x16

    aput-object v5, v7, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "WhitePoint"

    const/16 v15, 0x13e

    invoke-direct {v5, v9, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x17

    aput-object v5, v7, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "PrimaryChromaticities"

    const/16 v3, 0x13f

    invoke-direct {v5, v15, v3, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v3, 0x18

    aput-object v5, v7, v3

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "SubIFDPointer"

    const/16 v15, 0x14a

    invoke-direct {v3, v5, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x19

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "JPEGInterchangeFormat"

    const/16 v15, 0x201

    invoke-direct {v3, v5, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x1a

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "JPEGInterchangeFormatLength"

    const/16 v15, 0x202

    invoke-direct {v3, v5, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x1b

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "YCbCrCoefficients"

    const/16 v15, 0x211

    invoke-direct {v3, v5, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x1c

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "YCbCrSubSampling"

    const/16 v15, 0x212

    invoke-direct {v3, v5, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x1d

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "YCbCrPositioning"

    const/16 v15, 0x213

    invoke-direct {v3, v5, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x1e

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "ReferenceBlackWhite"

    const/16 v15, 0x214

    invoke-direct {v3, v5, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x1f

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "Copyright"

    const v15, 0x8298

    invoke-direct {v3, v5, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x20

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "ExifIFDPointer"

    const v15, 0x8769

    invoke-direct {v3, v5, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x21

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "GPSInfoIFDPointer"

    const v15, 0x8825

    invoke-direct {v3, v5, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x22

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "SensorTopBorder"

    invoke-direct {v3, v5, v0, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x23

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "SensorLeftBorder"

    invoke-direct {v3, v5, v11, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x24

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "SensorBottomBorder"

    invoke-direct {v3, v5, v2, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x25

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "SensorRightBorder"

    invoke-direct {v3, v5, v13, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x26

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "ISO"

    invoke-direct {v3, v5, v9, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x27

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "JpgFromRaw"

    const/16 v15, 0x2e

    invoke-direct {v3, v5, v15, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x28

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "Xmp"

    const/16 v15, 0x2bc

    invoke-direct {v3, v5, v15, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x29

    aput-object v3, v7, v5

    sput-object v7, Landroid/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1162
    const/16 v3, 0x3e

    new-array v3, v3, [Landroid/media/ExifInterface$ExifTag;

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "ExposureTime"

    const v9, 0x829a

    invoke-direct {v5, v15, v9, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v8

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FNumber"

    const v15, 0x829d

    invoke-direct {v5, v9, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v6

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ExposureProgram"

    const v15, 0x8822

    invoke-direct {v5, v9, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v10

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SpectralSensitivity"

    const v15, 0x8824

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v1

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ISOSpeedRatings"

    const v15, 0x8827

    invoke-direct {v5, v9, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v0

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "OECF"

    const v15, 0x8828

    invoke-direct {v5, v9, v15, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v11

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ExifVersion"

    const v15, 0x9000

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v2

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "DateTimeOriginal"

    const v15, 0x9003

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v13

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "DateTimeDigitized"

    const v15, 0x9004

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v4

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "OffsetTime"

    const v15, 0x9010

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v14

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "OffsetTimeOriginal"

    const v15, 0x9011

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0xa

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "OffsetTimeDigitized"

    const v15, 0x9012

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0xb

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ComponentsConfiguration"

    const v15, 0x9101

    invoke-direct {v5, v9, v15, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0xc

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "CompressedBitsPerPixel"

    const v15, 0x9102

    invoke-direct {v5, v9, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0xd

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ShutterSpeedValue"

    const v15, 0x9201

    const/16 v14, 0xa

    invoke-direct {v5, v9, v15, v14, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0xe

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ApertureValue"

    const v15, 0x9202

    invoke-direct {v5, v9, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0xf

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "BrightnessValue"

    const v15, 0x9203

    invoke-direct {v5, v9, v15, v14, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x10

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ExposureBiasValue"

    const v15, 0x9204

    invoke-direct {v5, v9, v15, v14, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x11

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "MaxApertureValue"

    const v14, 0x9205

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x12

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SubjectDistance"

    const v14, 0x9206

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x13

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "MeteringMode"

    const v14, 0x9207

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x14

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "LightSource"

    const v14, 0x9208

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x15

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "Flash"

    const v14, 0x9209

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x16

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FocalLength"

    const v14, 0x920a

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x17

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SubjectArea"

    const v14, 0x9214

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x18

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "MakerNote"

    const v14, 0x927c

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x19

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "UserComment"

    const v14, 0x9286

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x1a

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SubSecTime"

    const v14, 0x9290

    invoke-direct {v5, v9, v14, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x1b

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SubSecTimeOriginal"

    const v14, 0x9291

    invoke-direct {v5, v9, v14, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x1c

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SubSecTimeDigitized"

    const v14, 0x9292

    invoke-direct {v5, v9, v14, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x1d

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FlashpixVersion"

    const v14, 0xa000

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x1e

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ColorSpace"

    const v14, 0xa001

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x1f

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v25, "PixelXDimension"

    const v26, 0xa002

    const/16 v27, 0x3

    const/16 v28, 0x4

    const/16 v29, 0x0

    move-object/from16 v24, v5

    invoke-direct/range {v24 .. v29}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x20

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v25, "PixelYDimension"

    const v26, 0xa003

    move-object/from16 v24, v5

    invoke-direct/range {v24 .. v29}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x21

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "RelatedSoundFile"

    const v14, 0xa004

    invoke-direct {v5, v9, v14, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x22

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "InteroperabilityIFDPointer"

    const v14, 0xa005

    invoke-direct {v5, v9, v14, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x23

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FlashEnergy"

    const v14, 0xa20b

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x24

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SpatialFrequencyResponse"

    const v14, 0xa20c

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x25

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FocalPlaneXResolution"

    const v14, 0xa20e

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x26

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FocalPlaneYResolution"

    const v14, 0xa20f

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x27

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FocalPlaneResolutionUnit"

    const v14, 0xa210

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x28

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SubjectLocation"

    const v14, 0xa214

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x29

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ExposureIndex"

    const v14, 0xa215

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x2a

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SensingMethod"

    const v14, 0xa217

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x2b

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FileSource"

    const v14, 0xa300

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x2c

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SceneType"

    const v14, 0xa301

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x2d

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "CFAPattern"

    const v14, 0xa302

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x2e

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "CustomRendered"

    const v14, 0xa401

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x2f

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ExposureMode"

    const v14, 0xa402

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x30

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "WhiteBalance"

    const v14, 0xa403

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x31

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "DigitalZoomRatio"

    const v14, 0xa404

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x32

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FocalLengthIn35mmFilm"

    const v14, 0xa405

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x33

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SceneCaptureType"

    const v14, 0xa406

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x34

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "GainControl"

    const v14, 0xa407

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x35

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "Contrast"

    const v14, 0xa408

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x36

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "Saturation"

    const v14, 0xa409

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x37

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "Sharpness"

    const v14, 0xa40a

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x38

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "DeviceSettingDescription"

    const v14, 0xa40b

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x39

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SubjectDistanceRange"

    const v14, 0xa40c

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x3a

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ImageUniqueID"

    const v14, 0xa420

    invoke-direct {v5, v9, v14, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x3b

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "DNGVersion"

    const v14, 0xc612

    invoke-direct {v5, v9, v14, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x3c

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v25, "DefaultCropSize"

    const v26, 0xc620

    move-object/from16 v24, v5

    invoke-direct/range {v24 .. v29}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x3d

    aput-object v5, v3, v9

    sput-object v3, Landroid/media/ExifInterface;->IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1228
    const/16 v5, 0x1f

    new-array v5, v5, [Landroid/media/ExifInterface$ExifTag;

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSVersionID"

    invoke-direct {v9, v14, v8, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v8

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSLatitudeRef"

    invoke-direct {v9, v14, v6, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v6

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSLatitude"

    invoke-direct {v9, v14, v10, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v10

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSLongitudeRef"

    invoke-direct {v9, v14, v1, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v1

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSLongitude"

    invoke-direct {v9, v14, v0, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v0

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSAltitudeRef"

    invoke-direct {v9, v14, v11, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v11

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSAltitude"

    invoke-direct {v9, v14, v2, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v2

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSTimeStamp"

    invoke-direct {v9, v14, v13, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v13

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSSatellites"

    invoke-direct {v9, v14, v4, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v4

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSStatus"

    const/16 v15, 0x9

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSMeasureMode"

    const/16 v15, 0xa

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDOP"

    const/16 v15, 0xb

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSSpeedRef"

    const/16 v15, 0xc

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSSpeed"

    const/16 v15, 0xd

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSTrackRef"

    const/16 v15, 0xe

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSTrack"

    const/16 v15, 0xf

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSImgDirectionRef"

    const/16 v15, 0x10

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSImgDirection"

    const/16 v15, 0x11

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSMapDatum"

    const/16 v15, 0x12

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestLatitudeRef"

    const/16 v15, 0x13

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestLatitude"

    const/16 v15, 0x14

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x14

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestLongitudeRef"

    const/16 v15, 0x15

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x15

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestLongitude"

    const/16 v15, 0x16

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x16

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestBearingRef"

    const/16 v15, 0x17

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestBearing"

    const/16 v15, 0x18

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x18

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestDistanceRef"

    const/16 v15, 0x19

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x19

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestDistance"

    const/16 v15, 0x1a

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x1a

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSProcessingMethod"

    const/16 v15, 0x1b

    invoke-direct {v9, v14, v15, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x1b

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSAreaInformation"

    const/16 v15, 0x1c

    invoke-direct {v9, v14, v15, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x1c

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDateStamp"

    const/16 v15, 0x1d

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x1d

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDifferential"

    const/16 v15, 0x1e

    invoke-direct {v9, v14, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x1e

    aput-object v9, v5, v14

    sput-object v5, Landroid/media/ExifInterface;->IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1262
    new-array v9, v6, [Landroid/media/ExifInterface$ExifTag;

    new-instance v14, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "InteroperabilityIndex"

    invoke-direct {v14, v15, v6, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v14, v9, v8

    sput-object v9, Landroid/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1266
    const/16 v14, 0x26

    new-array v14, v14, [Landroid/media/ExifInterface$ExifTag;

    new-instance v15, Landroid/media/ExifInterface$ExifTag;

    const-string v4, "NewSubfileType"

    const/16 v13, 0xfe

    invoke-direct {v15, v4, v13, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v15, v14, v8

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "SubfileType"

    const/16 v15, 0xff

    invoke-direct {v4, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v4, v14, v6

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v27, "ThumbnailImageWidth"

    const/16 v28, 0x100

    const/16 v29, 0x3

    const/16 v30, 0x4

    const/16 v31, 0x0

    move-object/from16 v26, v4

    invoke-direct/range {v26 .. v31}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v4, v14, v10

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v33, "ThumbnailImageLength"

    const/16 v34, 0x101

    const/16 v35, 0x3

    const/16 v36, 0x4

    const/16 v37, 0x0

    move-object/from16 v32, v4

    invoke-direct/range {v32 .. v37}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v4, v14, v1

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "BitsPerSample"

    const/16 v15, 0x102

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v4, v14, v0

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "Compression"

    const/16 v15, 0x103

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v4, v14, v11

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "PhotometricInterpretation"

    const/16 v15, 0x106

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v4, v14, v2

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "ImageDescription"

    const/16 v15, 0x10e

    invoke-direct {v4, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/4 v13, 0x7

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "Make"

    const/16 v15, 0x10f

    invoke-direct {v4, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x8

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "Model"

    const/16 v15, 0x110

    invoke-direct {v4, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x9

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v27, "StripOffsets"

    const/16 v28, 0x111

    move-object/from16 v26, v4

    invoke-direct/range {v26 .. v31}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0xa

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "ThumbnailOrientation"

    const/16 v15, 0x112

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0xb

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "SamplesPerPixel"

    const/16 v15, 0x115

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0xc

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v27, "RowsPerStrip"

    const/16 v28, 0x116

    move-object/from16 v26, v4

    invoke-direct/range {v26 .. v31}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0xd

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v27, "StripByteCounts"

    const/16 v28, 0x117

    move-object/from16 v26, v4

    invoke-direct/range {v26 .. v31}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0xe

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "XResolution"

    const/16 v15, 0x11a

    invoke-direct {v4, v13, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0xf

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "YResolution"

    const/16 v15, 0x11b

    invoke-direct {v4, v13, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x10

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "PlanarConfiguration"

    const/16 v15, 0x11c

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x11

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "ResolutionUnit"

    const/16 v15, 0x128

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x12

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "TransferFunction"

    const/16 v15, 0x12d

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x13

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "Software"

    const/16 v15, 0x131

    invoke-direct {v4, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x14

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "DateTime"

    const/16 v15, 0x132

    invoke-direct {v4, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x15

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "Artist"

    const/16 v15, 0x13b

    invoke-direct {v4, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x16

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "WhitePoint"

    const/16 v15, 0x13e

    invoke-direct {v4, v13, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x17

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "PrimaryChromaticities"

    const/16 v15, 0x13f

    invoke-direct {v4, v13, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x18

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "SubIFDPointer"

    const/16 v15, 0x14a

    invoke-direct {v4, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x19

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "JPEGInterchangeFormat"

    const/16 v15, 0x201

    invoke-direct {v4, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x1a

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "JPEGInterchangeFormatLength"

    const/16 v15, 0x202

    invoke-direct {v4, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x1b

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "YCbCrCoefficients"

    const/16 v15, 0x211

    invoke-direct {v4, v13, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x1c

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "YCbCrSubSampling"

    const/16 v15, 0x212

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x1d

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "YCbCrPositioning"

    const/16 v15, 0x213

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x1e

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "ReferenceBlackWhite"

    const/16 v15, 0x214

    invoke-direct {v4, v13, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x1f

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "Xmp"

    const/16 v15, 0x2bc

    invoke-direct {v4, v13, v15, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x20

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "Copyright"

    const v15, 0x8298

    invoke-direct {v4, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x21

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "ExifIFDPointer"

    const v15, 0x8769

    invoke-direct {v4, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x22

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "GPSInfoIFDPointer"

    const v15, 0x8825

    invoke-direct {v4, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x23

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "DNGVersion"

    const v15, 0xc612

    invoke-direct {v4, v13, v15, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x24

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v18, "DefaultCropSize"

    const v19, 0xc620

    const/16 v20, 0x3

    const/16 v21, 0x4

    const/16 v22, 0x0

    move-object/from16 v17, v4

    invoke-direct/range {v17 .. v22}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x25

    aput-object v4, v14, v13

    sput-object v14, Landroid/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1310
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "StripOffsets"

    const/16 v15, 0x111

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    sput-object v4, Landroid/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroid/media/ExifInterface$ExifTag;

    .line 1314
    new-array v4, v1, [Landroid/media/ExifInterface$ExifTag;

    new-instance v13, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "ThumbnailImage"

    const/16 v2, 0x100

    const/4 v11, 0x7

    invoke-direct {v13, v15, v2, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v13, v4, v8

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "CameraSettingsIFDPointer"

    const/16 v13, 0x2020

    invoke-direct {v2, v11, v13, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v2, v4, v6

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "ImageProcessingIFDPointer"

    const/16 v13, 0x2040

    invoke-direct {v2, v11, v13, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v2, v4, v10

    sput-object v4, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1319
    new-array v2, v10, [Landroid/media/ExifInterface$ExifTag;

    new-instance v11, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "PreviewImageStart"

    const/16 v15, 0x101

    invoke-direct {v11, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v11, v2, v8

    new-instance v11, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "PreviewImageLength"

    const/16 v15, 0x102

    invoke-direct {v11, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v11, v2, v6

    sput-object v2, Landroid/media/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1323
    new-array v11, v6, [Landroid/media/ExifInterface$ExifTag;

    new-instance v13, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "AspectFrame"

    const/16 v0, 0x1113

    invoke-direct {v13, v15, v0, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v13, v11, v8

    sput-object v11, Landroid/media/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1327
    new-array v0, v6, [Landroid/media/ExifInterface$ExifTag;

    new-instance v13, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "ColorSpace"

    const/16 v10, 0x37

    invoke-direct {v13, v15, v10, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v13, v0, v8

    sput-object v0, Landroid/media/ExifInterface;->PEF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1354
    const/16 v10, 0xa

    new-array v10, v10, [[Landroid/media/ExifInterface$ExifTag;

    aput-object v7, v10, v8

    aput-object v3, v10, v6

    const/4 v3, 0x2

    aput-object v5, v10, v3

    aput-object v9, v10, v1

    const/4 v3, 0x4

    aput-object v14, v10, v3

    const/4 v3, 0x5

    aput-object v7, v10, v3

    const/4 v3, 0x6

    aput-object v4, v10, v3

    const/4 v4, 0x7

    aput-object v2, v10, v4

    const/16 v2, 0x8

    aput-object v11, v10, v2

    const/16 v2, 0x9

    aput-object v0, v10, v2

    sput-object v10, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    .line 1360
    new-array v0, v3, [Landroid/media/ExifInterface$ExifTag;

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v3, "SubIFDPointer"

    const/16 v4, 0x14a

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v2, v0, v8

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v3, "ExifIFDPointer"

    const v4, 0x8769

    invoke-direct {v2, v3, v4, v5, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v2, v0, v6

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v3, "GPSInfoIFDPointer"

    const v4, 0x8825

    invoke-direct {v2, v3, v4, v5, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v3, "InteroperabilityIFDPointer"

    const v4, 0xa005

    invoke-direct {v2, v3, v4, v5, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v2, v0, v1

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v3, "CameraSettingsIFDPointer"

    const/16 v4, 0x2020

    invoke-direct {v2, v3, v4, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v2, v0, v5

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v3, "ImageProcessingIFDPointer"

    const/16 v4, 0x2040

    invoke-direct {v2, v3, v4, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/4 v3, 0x5

    aput-object v2, v0, v3

    sput-object v0, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1370
    array-length v0, v10

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 1372
    array-length v0, v10

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 1373
    new-instance v0, Ljava/util/HashSet;

    const-string v2, "FNumber"

    const-string v3, "DigitalZoomRatio"

    const-string v4, "ExposureTime"

    const-string v5, "SubjectDistance"

    const-string v7, "GPSTimeStamp"

    filled-new-array {v2, v3, v4, v5, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 1377
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    .line 1384
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    .line 1386
    const-string v2, "Exif\u0000\u0000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    sput-object v2, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 1388
    const-string v2, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    .line 1430
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 1431
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1432
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "yyyy:MM:dd HH:mm:ss XXX"

    invoke-direct {v0, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/media/ExifInterface;->sFormatterTz:Ljava/text/SimpleDateFormat;

    .line 1433
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1436
    const/4 v0, 0x0

    .local v0, "ifdType":I
    :goto_0
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 1437
    sget-object v3, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    aput-object v4, v3, v0

    .line 1438
    sget-object v3, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    aput-object v4, v3, v0

    .line 1439
    aget-object v2, v2, v0

    array-length v3, v2

    move v4, v8

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 1440
    .local v5, "tag":Landroid/media/ExifInterface$ExifTag;
    sget-object v7, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v7, v7, v0

    iget v9, v5, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    sget-object v7, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v7, v7, v0

    iget-object v9, v5, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v7, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    .end local v5    # "tag":Landroid/media/ExifInterface$ExifTag;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1436
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1446
    .end local v0    # "ifdType":I
    :cond_1
    sget-object v0, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v2, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v3, v2, v8

    iget v3, v3, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    aget-object v3, v2, v6

    iget v3, v3, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    const/4 v3, 0x2

    aget-object v4, v2, v3

    iget v4, v4, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    aget-object v3, v2, v1

    iget v3, v3, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    const/4 v1, 0x4

    aget-object v1, v2, v1

    iget v1, v1, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    const/4 v1, 0x5

    aget-object v1, v2, v1

    iget v1, v1, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1485
    const-string v0, ".*[1-9].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 1487
    nop

    .line 1488
    const-string v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    .line 1487
    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    :array_2
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    :array_3
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    :array_4
    .array-data 1
        0x61t
        0x76t
        0x69t
        0x66t
    .end array-data

    :array_5
    .array-data 1
        0x61t
        0x76t
        0x69t
        0x73t
    .end array-data

    :array_6
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_8
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_9
    .array-data 1
        0x65t
        0x58t
        0x49t
        0x66t
    .end array-data

    :array_a
    .array-data 1
        0x49t
        0x48t
        0x44t
        0x52t
    .end array-data

    :array_b
    .array-data 1
        0x49t
        0x45t
        0x4et
        0x44t
    .end array-data

    :array_c
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_d
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data

    :array_e
    .array-data 1
        0x45t
        0x58t
        0x49t
        0x46t
    .end array-data

    :array_f
    .array-data 1
        -0x63t
        0x1t
        0x2at
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_11
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_12
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data
.end method

.method public constructor whitelist <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/ExifInterface;->mReadImageFileDirectoryCount:I

    .line 1460
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 1463
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    .line 1464
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1499
    if-eqz p1, :cond_0

    .line 1502
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->initForFilename(Ljava/lang/String;)V

    .line 1503
    return-void

    .line 1500
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/io/FileDescriptor;)V
    .locals 5
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/ExifInterface;->mReadImageFileDirectoryCount:I

    .line 1460
    sget-object v1, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v1

    new-array v2, v2, [Ljava/util/HashMap;

    iput-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 1463
    new-instance v2, Ljava/util/HashSet;

    array-length v1, v1

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v2, p0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    .line 1464
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1531
    if-eqz p1, :cond_6

    .line 1540
    invoke-static {p1}, Landroid/os/FileUtils;->convertToModernFd(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1541
    .local v1, "modernFd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_0

    .line 1542
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 1545
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1546
    iput-object v2, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 1548
    const/4 v3, 0x0

    .line 1551
    .local v3, "isFdDuped":Z
    invoke-static {p1}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    .line 1552
    iput-object p1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 1557
    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v2
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    .line 1558
    const/4 v3, 0x1

    .line 1561
    goto :goto_0

    .line 1559
    :catch_0
    move-exception v0

    .line 1560
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 1563
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_1
    iput-object v2, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 1565
    :goto_0
    iput-boolean v0, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    .line 1566
    const/4 v2, 0x0

    .line 1570
    .local v2, "in":Ljava/io/FileInputStream;
    iput v0, p0, Landroid/media/ExifInterface;->mReadImageFileDirectoryCount:I

    .line 1573
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v2, v0

    .line 1574
    invoke-direct {p0, v2}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1576
    invoke-static {v2}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1577
    if-eqz v3, :cond_2

    .line 1578
    invoke-static {p1}, Landroid/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1580
    :cond_2
    if-eqz v1, :cond_3

    .line 1581
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1584
    :cond_3
    return-void

    .line 1576
    :catchall_0
    move-exception v0

    invoke-static {v2}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1577
    if-eqz v3, :cond_4

    .line 1578
    invoke-static {p1}, Landroid/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1580
    :cond_4
    if-eqz v1, :cond_5

    .line 1581
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1583
    :cond_5
    throw v0

    .line 1532
    .end local v1    # "modernFd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "isFdDuped":Z
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "fileDescriptor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1596
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;Z)V

    .line 1597
    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "streamType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1613
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;Z)V

    .line 1614
    return-void
.end method

.method private constructor blacklist <init>(Ljava/io/InputStream;Z)V
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "shouldBeExifDataOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/ExifInterface;->mReadImageFileDirectoryCount:I

    .line 1460
    sget-object v1, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v1

    new-array v2, v2, [Ljava/util/HashMap;

    iput-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 1463
    new-instance v2, Ljava/util/HashSet;

    array-length v1, v1

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v2, p0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    .line 1464
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1618
    if-eqz p1, :cond_4

    .line 1621
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 1623
    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 1624
    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v4, 0x1388

    invoke-direct {v3, p1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v3

    .line 1625
    move-object v3, p1

    check-cast v3, Ljava/io/BufferedInputStream;

    invoke-static {v3}, Landroid/media/ExifInterface;->isExifDataOnly(Ljava/io/BufferedInputStream;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1626
    const-string v0, "ExifInterface"

    const-string v1, "Given data does not follow the structure of an Exif-only data."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    return-void

    .line 1629
    :cond_0
    iput-boolean v2, p0, Landroid/media/ExifInterface;->mIsExifDataOnly:Z

    .line 1630
    iput-object v1, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1631
    iput-object v1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 1633
    :cond_1
    instance-of v3, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v3, :cond_2

    .line 1634
    move-object v3, p1

    check-cast v3, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v3, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1635
    iput-object v1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 1636
    :cond_2
    instance-of v3, p1, Ljava/io/FileInputStream;

    if-eqz v3, :cond_3

    move-object v3, p1

    check-cast v3, Ljava/io/FileInputStream;

    .line 1637
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1638
    iput-object v1, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1639
    move-object v1, p1

    check-cast v1, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 1641
    :cond_3
    iput-object v1, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1642
    iput-object v1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 1645
    :goto_0
    iput-boolean v2, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    .line 1649
    iput v0, p0, Landroid/media/ExifInterface;->mReadImageFileDirectoryCount:I

    .line 1651
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V

    .line 1652
    return-void

    .line 1619
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inputStream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/ExifInterface;->mReadImageFileDirectoryCount:I

    .line 1460
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 1463
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    .line 1464
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1514
    if-eqz p1, :cond_0

    .line 1517
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->initForFilename(Ljava/lang/String;)V

    .line 1518
    return-void

    .line 1515
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "filename cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o addDefaultValuesForCompatibility()V
    .locals 7

    .line 3976
    const-string v0, "DateTimeOriginal"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3977
    .local v0, "valueOfDateTimeOriginal":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "DateTime"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3978
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    .line 3979
    invoke-static {v0}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 3978
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3983
    :cond_0
    const-string v2, "ImageWidth"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_1

    .line 3984
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3985
    invoke-static {v4, v5, v6}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v6

    .line 3984
    invoke-virtual {v3, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3987
    :cond_1
    const-string v2, "ImageLength"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 3988
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3989
    invoke-static {v4, v5, v6}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v6

    .line 3988
    invoke-virtual {v3, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3991
    :cond_2
    const-string v2, "Orientation"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 3992
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3993
    invoke-static {v1, v6}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v1

    .line 3992
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3995
    :cond_3
    const-string v1, "LightSource"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 3996
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3997
    invoke-static {v4, v5, v3}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 3996
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3999
    :cond_4
    return-void
.end method

.method public static blacklist convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F
    .locals 13
    .param p0, "rationalString"    # Ljava/lang/String;
    .param p1, "ref"    # Ljava/lang/String;

    .line 2552
    const-string v0, "/"

    :try_start_0
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2555
    .local v1, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2556
    .local v3, "pair":[Ljava/lang/String;
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v6, 0x1

    aget-object v7, v3, v6

    .line 2557
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    div-double/2addr v4, v7

    .line 2559
    .local v4, "degrees":D
    aget-object v7, v1, v6

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 2560
    aget-object v7, v3, v2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    aget-object v9, v3, v6

    .line 2561
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    div-double/2addr v7, v9

    .line 2563
    .local v7, "minutes":D
    const/4 v9, 0x2

    aget-object v9, v1, v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2564
    .end local v3    # "pair":[Ljava/lang/String;
    .local v0, "pair":[Ljava/lang/String;
    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    aget-object v6, v0, v6

    .line 2565
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    div-double/2addr v2, v9

    .line 2567
    .local v2, "seconds":D
    const-wide/high16 v9, 0x404e000000000000L    # 60.0

    div-double v9, v7, v9

    add-double/2addr v9, v4

    const-wide v11, 0x40ac200000000000L    # 3600.0

    div-double v11, v2, v11

    add-double/2addr v9, v11

    .line 2568
    .local v9, "result":D
    const-string v6, "S"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "W"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_0

    goto :goto_0

    .line 2571
    :cond_0
    double-to-float v6, v9

    return v6

    .line 2569
    :cond_1
    :goto_0
    neg-double v11, v9

    double-to-float v6, v11

    return v6

    .line 2572
    .end local v0    # "pair":[Ljava/lang/String;
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v2    # "seconds":D
    .end local v4    # "degrees":D
    .end local v7    # "minutes":D
    .end local v9    # "result":D
    :catch_0
    move-exception v0

    .line 2574
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private blacklist copyChunksUpToGivenChunkType(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Landroid/media/ExifInterface$ByteOrderedDataOutputStream;[B[B)V
    .locals 6
    .param p1, "inputStream"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "outputStream"    # Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .param p3, "firstGivenType"    # [B
    .param p4, "secondGivenType"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3938
    :goto_0
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 3939
    .local v0, "type":[B
    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v1

    array-length v2, v0

    if-eq v1, v2, :cond_1

    .line 3940
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered invalid length while copying WebP chunks up tochunk type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    sget-object v4, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, p3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3942
    if-nez p4, :cond_0

    const-string v3, ""

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " or "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p4, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3945
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Landroid/media/ExifInterface;->copyWebPChunk(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Landroid/media/ExifInterface$ByteOrderedDataOutputStream;[B)V

    .line 3946
    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p4, :cond_2

    .line 3947
    invoke-static {v0, p4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3948
    goto :goto_2

    .line 3950
    .end local v0    # "type":[B
    :cond_2
    goto :goto_0

    .line 3951
    :cond_3
    :goto_2
    return-void
.end method

.method private blacklist copyWebPChunk(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Landroid/media/ExifInterface$ByteOrderedDataOutputStream;[B)V
    .locals 3
    .param p1, "inputStream"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "outputStream"    # Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .param p3, "type"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3955
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    .line 3956
    .local v0, "size":I
    invoke-virtual {p2, p3}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3957
    invoke-virtual {p2, v0}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 3959
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {p1, p2, v1}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3960
    return-void
.end method

.method private greylist-max-o getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 1694
    if-eqz p1, :cond_2

    .line 1699
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1700
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1701
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1702
    move-object v2, v1

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    return-object v2

    .line 1699
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1705
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 1695
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getHeifAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 27
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3088
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "Xmp"

    const-string/jumbo v3, "yes"

    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 3090
    .local v4, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    new-instance v5, Landroid/media/ExifInterface$1;

    invoke-direct {v5, v1, v2}, Landroid/media/ExifInterface$1;-><init>(Landroid/media/ExifInterface;Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 3141
    const/16 v5, 0x21

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    .line 3143
    .local v5, "exifOffsetStr":Ljava/lang/String;
    const/16 v6, 0x22

    invoke-virtual {v4, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    .line 3145
    .local v6, "exifLengthStr":Ljava/lang/String;
    const/16 v7, 0x1a

    invoke-virtual {v4, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    .line 3147
    .local v7, "hasImage":Ljava/lang/String;
    const/16 v8, 0x11

    invoke-virtual {v4, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    .line 3150
    .local v8, "hasVideo":Ljava/lang/String;
    const/4 v9, 0x0

    .line 3151
    .local v9, "width":Ljava/lang/String;
    const/4 v10, 0x0

    .line 3152
    .local v10, "height":Ljava/lang/String;
    const/4 v11, 0x0

    .line 3153
    .local v11, "rotation":Ljava/lang/String;
    move-object v12, v3

    .line 3157
    .local v12, "METADATA_VALUE_YES":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 3158
    const/16 v3, 0x1d

    invoke-virtual {v4, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    .line 3160
    const/16 v3, 0x1e

    invoke-virtual {v4, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    .line 3162
    const/16 v3, 0x1f

    invoke-virtual {v4, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto :goto_0

    .line 3164
    :cond_0
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3165
    const/16 v3, 0x12

    invoke-virtual {v4, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    .line 3167
    const/16 v3, 0x13

    invoke-virtual {v4, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    .line 3169
    const/16 v3, 0x18

    invoke-virtual {v4, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    .line 3173
    :cond_1
    :goto_0
    const/4 v3, 0x0

    if-eqz v9, :cond_2

    .line 3174
    iget-object v13, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v13, v13, v3

    const-string v14, "ImageWidth"

    .line 3175
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    iget-object v3, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v15, v3}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 3174
    invoke-virtual {v13, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3178
    :cond_2
    if-eqz v10, :cond_3

    .line 3179
    iget-object v3, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x0

    aget-object v3, v3, v13

    const-string v13, "ImageLength"

    .line 3180
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iget-object v15, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v14, v15}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v14

    .line 3179
    invoke-virtual {v3, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3183
    :cond_3
    if-eqz v11, :cond_4

    .line 3184
    const/4 v3, 0x1

    .line 3187
    .local v3, "orientation":I
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    goto :goto_1

    .line 3195
    :sswitch_0
    const/16 v3, 0x8

    goto :goto_1

    .line 3192
    :sswitch_1
    const/4 v3, 0x3

    .line 3193
    goto :goto_1

    .line 3189
    :sswitch_2
    const/4 v3, 0x6

    .line 3190
    nop

    .line 3199
    :goto_1
    iget-object v13, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const-string v14, "Orientation"

    iget-object v15, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3200
    invoke-static {v3, v15}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v15

    .line 3199
    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3203
    .end local v3    # "orientation":I
    :cond_4
    if-eqz v5, :cond_9

    if-eqz v6, :cond_9

    .line 3204
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3205
    .local v3, "offset":I
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 3206
    .local v13, "length":I
    const/4 v14, 0x6

    if-le v13, v14, :cond_8

    .line 3209
    int-to-long v14, v3

    invoke-virtual {v2, v14, v15}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3210
    const/4 v14, 0x6

    new-array v15, v14, [B

    .line 3211
    .local v15, "identifier":[B
    invoke-virtual {v2, v15}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v14

    move-object/from16 v18, v5

    const/4 v5, 0x6

    .end local v5    # "exifOffsetStr":Ljava/lang/String;
    .local v18, "exifOffsetStr":Ljava/lang/String;
    if-ne v14, v5, :cond_7

    .line 3214
    add-int/2addr v3, v5

    .line 3215
    add-int/lit8 v13, v13, -0x6

    .line 3216
    sget-object v5, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v15, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3221
    new-array v5, v13, [B

    .line 3222
    .local v5, "bytes":[B
    invoke-virtual {v2, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v14

    if-ne v14, v13, :cond_5

    .line 3226
    iput v3, v1, Landroid/media/ExifInterface;->mExifOffset:I

    .line 3227
    const/4 v14, 0x0

    invoke-direct {v1, v5, v14}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    goto :goto_2

    .line 3223
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v14, "Can\'t read exif"

    invoke-direct {v0, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v0

    .line 3217
    .end local v5    # "bytes":[B
    .restart local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v5, "Invalid identifier"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v0

    .line 3212
    .restart local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v5, "Can\'t read identifier"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v0

    .line 3207
    .end local v15    # "identifier":[B
    .end local v18    # "exifOffsetStr":Ljava/lang/String;
    .restart local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .local v5, "exifOffsetStr":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_8
    move-object/from16 v18, v5

    .end local v5    # "exifOffsetStr":Ljava/lang/String;
    .restart local v18    # "exifOffsetStr":Ljava/lang/String;
    new-instance v0, Ljava/io/IOException;

    const-string v5, "Invalid exif length"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v0

    .line 3203
    .end local v3    # "offset":I
    .end local v13    # "length":I
    .end local v18    # "exifOffsetStr":Ljava/lang/String;
    .restart local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v5    # "exifOffsetStr":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_9
    move-object/from16 v18, v5

    .line 3230
    .end local v5    # "exifOffsetStr":Ljava/lang/String;
    .restart local v18    # "exifOffsetStr":Ljava/lang/String;
    :goto_2
    const/16 v3, 0x29

    invoke-virtual {v4, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 3232
    .local v3, "xmpOffsetStr":Ljava/lang/String;
    const/16 v5, 0x2a

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    .line 3234
    .local v5, "xmpLengthStr":Ljava/lang/String;
    if-eqz v3, :cond_c

    if-eqz v5, :cond_c

    .line 3235
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 3236
    .local v13, "offset":I
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 3237
    .local v14, "length":I
    move-object/from16 v17, v5

    move-object v15, v6

    .end local v5    # "xmpLengthStr":Ljava/lang/String;
    .end local v6    # "exifLengthStr":Ljava/lang/String;
    .local v15, "exifLengthStr":Ljava/lang/String;
    .local v17, "xmpLengthStr":Ljava/lang/String;
    int-to-long v5, v13

    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3238
    new-array v5, v14, [B

    .line 3239
    .local v5, "xmpBytes":[B
    invoke-virtual {v2, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v6

    if-ne v6, v14, :cond_b

    .line 3242
    invoke-virtual {v1, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_a

    .line 3243
    iget-object v6, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v16, 0x0

    aget-object v6, v6, v16

    new-instance v1, Landroid/media/ExifInterface$ExifAttribute;

    const/16 v20, 0x1

    array-length v2, v5

    move-object/from16 v16, v7

    move-object/from16 v26, v8

    .end local v7    # "hasImage":Ljava/lang/String;
    .end local v8    # "hasVideo":Ljava/lang/String;
    .local v16, "hasImage":Ljava/lang/String;
    .local v26, "hasVideo":Ljava/lang/String;
    int-to-long v7, v13

    const/16 v25, 0x0

    move-object/from16 v19, v1

    move/from16 v21, v2

    move-wide/from16 v22, v7

    move-object/from16 v24, v5

    invoke-direct/range {v19 .. v25}, Landroid/media/ExifInterface$ExifAttribute;-><init>(IIJ[BLandroid/media/ExifInterface$ExifAttribute-IA;)V

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 3242
    .end local v16    # "hasImage":Ljava/lang/String;
    .end local v26    # "hasVideo":Ljava/lang/String;
    .restart local v7    # "hasImage":Ljava/lang/String;
    .restart local v8    # "hasVideo":Ljava/lang/String;
    :cond_a
    move-object/from16 v16, v7

    move-object/from16 v26, v8

    .end local v7    # "hasImage":Ljava/lang/String;
    .end local v8    # "hasVideo":Ljava/lang/String;
    .restart local v16    # "hasImage":Ljava/lang/String;
    .restart local v26    # "hasVideo":Ljava/lang/String;
    goto :goto_3

    .line 3240
    .end local v16    # "hasImage":Ljava/lang/String;
    .end local v26    # "hasVideo":Ljava/lang/String;
    .restart local v7    # "hasImage":Ljava/lang/String;
    .restart local v8    # "hasVideo":Ljava/lang/String;
    :cond_b
    move-object/from16 v16, v7

    move-object/from16 v26, v8

    .end local v7    # "hasImage":Ljava/lang/String;
    .end local v8    # "hasVideo":Ljava/lang/String;
    .restart local v16    # "hasImage":Ljava/lang/String;
    .restart local v26    # "hasVideo":Ljava/lang/String;
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to read XMP from HEIF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v0

    .line 3234
    .end local v13    # "offset":I
    .end local v14    # "length":I
    .end local v15    # "exifLengthStr":Ljava/lang/String;
    .end local v16    # "hasImage":Ljava/lang/String;
    .end local v17    # "xmpLengthStr":Ljava/lang/String;
    .end local v26    # "hasVideo":Ljava/lang/String;
    .restart local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .local v5, "xmpLengthStr":Ljava/lang/String;
    .restart local v6    # "exifLengthStr":Ljava/lang/String;
    .restart local v7    # "hasImage":Ljava/lang/String;
    .restart local v8    # "hasVideo":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_c
    move-object/from16 v17, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v26, v8

    .line 3248
    .end local v5    # "xmpLengthStr":Ljava/lang/String;
    .end local v6    # "exifLengthStr":Ljava/lang/String;
    .end local v7    # "hasImage":Ljava/lang/String;
    .end local v8    # "hasVideo":Ljava/lang/String;
    .restart local v15    # "exifLengthStr":Ljava/lang/String;
    .restart local v16    # "hasImage":Ljava/lang/String;
    .restart local v17    # "xmpLengthStr":Ljava/lang/String;
    .restart local v26    # "hasVideo":Ljava/lang/String;
    :goto_3
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_d

    .line 3249
    const-string v0, "ExifInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Heif meta: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rotation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3252
    .end local v3    # "xmpOffsetStr":Ljava/lang/String;
    .end local v9    # "width":Ljava/lang/String;
    .end local v10    # "height":Ljava/lang/String;
    .end local v11    # "rotation":Ljava/lang/String;
    .end local v12    # "METADATA_VALUE_YES":Ljava/lang/String;
    .end local v15    # "exifLengthStr":Ljava/lang/String;
    .end local v16    # "hasImage":Ljava/lang/String;
    .end local v17    # "xmpLengthStr":Ljava/lang/String;
    .end local v18    # "exifOffsetStr":Ljava/lang/String;
    .end local v26    # "hasVideo":Ljava/lang/String;
    :cond_d
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 3253
    nop

    .line 3254
    return-void

    .line 3252
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 3253
    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V
    .locals 24
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "jpegOffset"    # I
    .param p3, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2856
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    sget-boolean v3, Landroid/media/ExifInterface;->DEBUG:Z

    const-string v4, "ExifInterface"

    if-eqz v3, :cond_0

    .line 2857
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getJpegAttributes starting with: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    :cond_0
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2864
    move/from16 v3, p2

    int-to-long v5, v3

    invoke-virtual {v1, v5, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 2865
    move/from16 v5, p2

    .line 2868
    .local v5, "bytesRead":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v6

    move v7, v6

    .local v7, "marker":B
    const-string v8, "Invalid marker: "

    const/4 v9, -0x1

    if-ne v6, v9, :cond_12

    .line 2871
    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 2872
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v10

    const/16 v11, -0x28

    if-ne v10, v11, :cond_11

    .line 2875
    add-int/2addr v5, v6

    .line 2877
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v7

    .line 2878
    if-ne v7, v9, :cond_10

    .line 2881
    add-int/lit8 v5, v5, 0x1

    .line 2882
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v7

    .line 2883
    sget-boolean v8, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 2884
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found JPEG segment indicator: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    and-int/lit16 v11, v7, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    :cond_1
    add-int/2addr v5, v6

    .line 2890
    const/16 v10, -0x27

    if-eq v7, v10, :cond_f

    const/16 v10, -0x26

    if-ne v7, v10, :cond_2

    .line 2891
    goto/16 :goto_5

    .line 2893
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    .line 2894
    .local v10, "length":I
    add-int/lit8 v5, v5, 0x2

    .line 2895
    if-eqz v8, :cond_3

    .line 2896
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "JPEG segment: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    and-int/lit16 v11, v7, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " (length: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v11, v10, 0x2

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ")"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    :cond_3
    const-string v8, "Invalid length"

    if-ltz v10, :cond_e

    .line 2902
    sparse-switch v7, :sswitch_data_0

    move-object/from16 v23, v4

    move v3, v6

    goto/16 :goto_4

    .line 2934
    :sswitch_0
    new-array v11, v10, [B

    .line 2935
    .local v11, "bytes":[B
    invoke-virtual {v1, v11}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v12

    if-ne v12, v10, :cond_5

    .line 2938
    const/4 v10, 0x0

    .line 2939
    const-string v12, "UserComment"

    invoke-virtual {v0, v12}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_4

    .line 2940
    iget-object v13, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v13, v13, v6

    new-instance v14, Ljava/lang/String;

    sget-object v15, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v14, v11, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v14}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v14

    invoke-virtual {v13, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2976
    .end local v11    # "bytes":[B
    :cond_4
    move-object/from16 v23, v4

    move v3, v6

    goto/16 :goto_4

    .line 2936
    .restart local v11    # "bytes":[B
    :cond_5
    new-instance v4, Ljava/io/IOException;

    const-string v6, "Invalid exif"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2904
    .end local v11    # "bytes":[B
    :sswitch_1
    move v11, v5

    .line 2905
    .local v11, "start":I
    new-array v12, v10, [B

    .line 2906
    .local v12, "bytes":[B
    invoke-virtual {v1, v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 2907
    add-int/2addr v5, v10

    .line 2908
    const/4 v10, 0x0

    .line 2910
    sget-object v13, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v12, v13}, Landroid/media/ExifInterfaceUtils;->startsWith([B[B)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 2911
    array-length v14, v13

    add-int/2addr v14, v11

    int-to-long v14, v14

    .line 2912
    .local v14, "offset":J
    array-length v13, v13

    array-length v9, v12

    invoke-static {v12, v13, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 2915
    .local v9, "value":[B
    long-to-int v13, v14

    iput v13, v0, Landroid/media/ExifInterface;->mExifOffset:I

    .line 2916
    invoke-direct {v0, v9, v2}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    .line 2917
    .end local v9    # "value":[B
    .end local v14    # "offset":J
    move-object/from16 v23, v4

    move v3, v6

    goto/16 :goto_4

    :cond_6
    sget-object v9, Landroid/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    invoke-static {v12, v9}, Landroid/media/ExifInterfaceUtils;->startsWith([B[B)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 2919
    array-length v13, v9

    add-int/2addr v13, v11

    int-to-long v13, v13

    .line 2920
    .local v13, "offset":J
    array-length v9, v9

    array-length v15, v12

    invoke-static {v12, v9, v15}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 2924
    .restart local v9    # "value":[B
    const-string v15, "Xmp"

    invoke-virtual {v0, v15}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_7

    .line 2925
    iget-object v6, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v16, 0x0

    aget-object v6, v6, v16

    new-instance v3, Landroid/media/ExifInterface$ExifAttribute;

    const/16 v17, 0x1

    move-object/from16 v23, v4

    array-length v4, v9

    const/16 v22, 0x0

    move-object/from16 v16, v3

    move/from16 v18, v4

    move-wide/from16 v19, v13

    move-object/from16 v21, v9

    invoke-direct/range {v16 .. v22}, Landroid/media/ExifInterface$ExifAttribute;-><init>(IIJ[BLandroid/media/ExifInterface$ExifAttribute-IA;)V

    invoke-virtual {v6, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2927
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/media/ExifInterface;->mXmpIsFromSeparateMarker:Z

    goto :goto_1

    .line 2924
    :cond_7
    move-object/from16 v23, v4

    move v3, v6

    .line 2929
    .end local v9    # "value":[B
    .end local v13    # "offset":J
    :goto_1
    goto :goto_4

    .line 2917
    :cond_8
    move-object/from16 v23, v4

    move v3, v6

    goto :goto_4

    .line 2959
    .end local v11    # "start":I
    .end local v12    # "bytes":[B
    :sswitch_2
    move-object/from16 v23, v4

    move v3, v6

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v4

    if-ne v4, v3, :cond_b

    .line 2962
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v2

    const/4 v6, 0x4

    if-eq v2, v6, :cond_9

    .line 2963
    const-string v9, "ImageLength"

    goto :goto_2

    :cond_9
    const-string v9, "ThumbnailImageLength"

    .line 2964
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v11

    int-to-long v11, v11

    iget-object v13, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v11, v12, v13}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v11

    .line 2962
    invoke-virtual {v4, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2965
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v2

    if-eq v2, v6, :cond_a

    .line 2966
    const-string v6, "ImageWidth"

    goto :goto_3

    :cond_a
    const-string v6, "ThumbnailImageWidth"

    .line 2967
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v9

    int-to-long v11, v9

    iget-object v9, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v11, v12, v9}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 2965
    invoke-virtual {v4, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2968
    add-int/lit8 v10, v10, -0x5

    .line 2969
    goto :goto_4

    .line 2960
    :cond_b
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid SOFx"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2976
    :goto_4
    if-ltz v10, :cond_d

    .line 2979
    invoke-virtual {v1, v10}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v4

    if-ne v4, v10, :cond_c

    .line 2982
    add-int/2addr v5, v10

    .line 2983
    .end local v10    # "length":I
    move v6, v3

    move-object/from16 v4, v23

    const/4 v9, -0x1

    move/from16 v3, p2

    goto/16 :goto_0

    .line 2980
    .restart local v10    # "length":I
    :cond_c
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid JPEG segment"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2977
    :cond_d
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2900
    :cond_e
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2985
    .end local v10    # "length":I
    :cond_f
    :goto_5
    iget-object v3, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2986
    return-void

    .line 2879
    :cond_10
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid marker:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v6, v7, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2873
    :cond_11
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v6, v7, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2869
    :cond_12
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v6, v7, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_data_0
    .sparse-switch
        -0x40 -> :sswitch_2
        -0x3f -> :sswitch_2
        -0x3e -> :sswitch_2
        -0x3d -> :sswitch_2
        -0x3b -> :sswitch_2
        -0x3a -> :sswitch_2
        -0x39 -> :sswitch_2
        -0x37 -> :sswitch_2
        -0x36 -> :sswitch_2
        -0x35 -> :sswitch_2
        -0x33 -> :sswitch_2
        -0x32 -> :sswitch_2
        -0x31 -> :sswitch_2
        -0x1f -> :sswitch_1
        -0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o getMimeType(Ljava/io/BufferedInputStream;)I
    .locals 2
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2611
    const/16 v0, 0x1388

    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 2612
    new-array v0, v0, [B

    .line 2613
    .local v0, "signatureCheckBytes":[B
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 2614
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    .line 2615
    invoke-static {v0}, Landroid/media/ExifInterface;->isJpegFormat([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2616
    const/4 v1, 0x4

    return v1

    .line 2617
    :cond_0
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isRafFormat([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2618
    const/16 v1, 0x9

    return v1

    .line 2619
    :cond_1
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isHeifFormat([B)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2620
    const/16 v1, 0xc

    return v1

    .line 2621
    :cond_2
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isOrfFormat([B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2622
    const/4 v1, 0x7

    return v1

    .line 2623
    :cond_3
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isRw2Format([B)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2624
    const/16 v1, 0xa

    return v1

    .line 2625
    :cond_4
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isPngFormat([B)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2626
    const/16 v1, 0xd

    return v1

    .line 2627
    :cond_5
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isWebpFormat([B)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2628
    const/16 v1, 0xe

    return v1

    .line 2631
    :cond_6
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o getOrfAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 16
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3279
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Landroid/media/ExifInterface;->getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 3284
    iget-object v1, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 3285
    const-string v3, "MakerNote"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 3286
    .local v1, "makerNoteAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_4

    .line 3288
    new-instance v3, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v4, v1, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 3290
    .local v3, "makerNoteDataInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3294
    sget-object v4, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    array-length v5, v4

    new-array v5, v5, [B

    .line 3295
    .local v5, "makerNoteHeader1Bytes":[B
    invoke-virtual {v3, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 3296
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3297
    sget-object v6, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    array-length v7, v6

    new-array v7, v7, [B

    .line 3298
    .local v7, "makerNoteHeader2Bytes":[B
    invoke-virtual {v3, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 3300
    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3301
    const-wide/16 v8, 0x8

    invoke-virtual {v3, v8, v9}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_0

    .line 3302
    :cond_0
    invoke-static {v7, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3303
    const-wide/16 v8, 0xc

    invoke-virtual {v3, v8, v9}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3307
    :cond_1
    :goto_0
    const/4 v4, 0x6

    invoke-direct {v0, v3, v4}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 3310
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v6, 0x7

    aget-object v4, v4, v6

    .line 3311
    const-string v8, "PreviewImageStart"

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 3312
    .local v4, "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v8, v6

    .line 3313
    const-string v8, "PreviewImageLength"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/ExifInterface$ExifAttribute;

    .line 3315
    .local v6, "bitsPerSampleAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v4, :cond_2

    if-eqz v6, :cond_2

    .line 3316
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    const-string v10, "JPEGInterchangeFormat"

    invoke-virtual {v8, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3318
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v9

    const-string v9, "JPEGInterchangeFormatLength"

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3325
    :cond_2
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v9, 0x8

    aget-object v8, v8, v9

    .line 3326
    const-string v9, "AspectFrame"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/ExifInterface$ExifAttribute;

    .line 3327
    .local v8, "aspectFrameAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v8, :cond_4

    .line 3328
    const/4 v9, 0x4

    new-array v9, v9, [I

    .line 3329
    .local v9, "aspectFrameValues":[I
    iget-object v10, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v8, v10}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    check-cast v9, [I

    .line 3330
    const/4 v10, 0x2

    aget v11, v9, v10

    const/4 v12, 0x0

    aget v13, v9, v12

    if-le v11, v13, :cond_4

    const/4 v11, 0x3

    aget v13, v9, v11

    aget v14, v9, v2

    if-le v13, v14, :cond_4

    .line 3332
    aget v10, v9, v10

    aget v13, v9, v12

    sub-int/2addr v10, v13

    add-int/2addr v10, v2

    .line 3333
    .local v10, "primaryImageWidth":I
    aget v11, v9, v11

    aget v13, v9, v2

    sub-int/2addr v11, v13

    add-int/2addr v11, v2

    .line 3335
    .local v11, "primaryImageLength":I
    if-ge v10, v11, :cond_3

    .line 3336
    add-int/2addr v10, v11

    .line 3337
    sub-int v11, v10, v11

    .line 3338
    sub-int/2addr v10, v11

    .line 3340
    :cond_3
    iget-object v2, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3341
    invoke-static {v10, v2}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v2

    .line 3342
    .local v2, "primaryImageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v13, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3343
    invoke-static {v11, v13}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 3345
    .local v13, "primaryImageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v14, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v14, v14, v12

    const-string v15, "ImageWidth"

    invoke-virtual {v14, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3346
    iget-object v14, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v14, v12

    const-string v14, "ImageLength"

    invoke-virtual {v12, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3350
    .end local v2    # "primaryImageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v3    # "makerNoteDataInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v4    # "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v5    # "makerNoteHeader1Bytes":[B
    .end local v6    # "bitsPerSampleAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v7    # "makerNoteHeader2Bytes":[B
    .end local v8    # "aspectFrameAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v9    # "aspectFrameValues":[I
    .end local v10    # "primaryImageWidth":I
    .end local v11    # "primaryImageLength":I
    .end local v13    # "primaryImageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_4
    return-void
.end method

.method private blacklist getPngAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 10
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3379
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPngAttributes starting with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3386
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3388
    const/4 v0, 0x0

    .line 3391
    .local v0, "bytesRead":I
    sget-object v1, Landroid/media/ExifInterface;->PNG_SIGNATURE:[B

    array-length v2, v1

    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3392
    array-length v1, v1

    add-int/2addr v0, v1

    .line 3406
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v1

    .line 3407
    .local v1, "length":I
    add-int/lit8 v0, v0, 0x4

    .line 3409
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 3410
    .local v2, "type":[B
    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v3

    array-length v4, v2

    if-ne v3, v4, :cond_7

    .line 3414
    add-int/lit8 v0, v0, 0x4

    .line 3417
    const/16 v3, 0x10

    if-ne v0, v3, :cond_2

    sget-object v3, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_IHDR:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 3418
    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Encountered invalid PNG file--IHDR chunk should appearas the first chunk"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v3

    .line 3422
    .restart local v0    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_2
    :goto_1
    sget-object v3, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_IEND:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3424
    goto :goto_2

    .line 3425
    :cond_3
    sget-object v3, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3427
    new-array v3, v1, [B

    .line 3428
    .local v3, "data":[B
    invoke-virtual {p1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v4

    if-ne v4, v1, :cond_5

    .line 3434
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v4

    .line 3436
    .local v4, "dataCrcValue":I
    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    .line 3437
    .local v5, "crc":Ljava/util/zip/CRC32;
    invoke-virtual {v5, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 3438
    invoke-virtual {v5, v3}, Ljava/util/zip/CRC32;->update([B)V

    .line 3439
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    long-to-int v6, v6

    if-ne v6, v4, :cond_4

    .line 3445
    iput v0, p0, Landroid/media/ExifInterface;->mExifOffset:I

    .line 3446
    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    .line 3448
    invoke-direct {p0}, Landroid/media/ExifInterface;->validateImages()V

    .line 3449
    nop

    .line 3460
    .end local v1    # "length":I
    .end local v2    # "type":[B
    .end local v3    # "data":[B
    .end local v4    # "dataCrcValue":I
    .end local v5    # "crc":Ljava/util/zip/CRC32;
    :goto_2
    nop

    .line 3461
    return-void

    .line 3440
    .restart local v1    # "length":I
    .restart local v2    # "type":[B
    .restart local v3    # "data":[B
    .restart local v4    # "dataCrcValue":I
    .restart local v5    # "crc":Ljava/util/zip/CRC32;
    :cond_4
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", calculated CRC value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3442
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v6

    .line 3429
    .end local v4    # "dataCrcValue":I
    .end local v5    # "crc":Ljava/util/zip/CRC32;
    .restart local v0    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_5
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read given length for given PNG chunk type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3430
    invoke-static {v2}, Landroid/media/ExifInterfaceUtils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v4

    .line 3452
    .end local v3    # "data":[B
    .restart local v0    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_6
    add-int/lit8 v3, v1, 0x4

    invoke-virtual {p1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3453
    add-int/lit8 v3, v1, 0x4

    add-int/2addr v0, v3

    .line 3455
    .end local v1    # "length":I
    .end local v2    # "type":[B
    goto/16 :goto_0

    .line 3411
    .restart local v1    # "length":I
    .restart local v2    # "type":[B
    :cond_7
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Encountered invalid length while parsing PNG chunktype"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v3
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3456
    .end local v1    # "length":I
    .end local v2    # "type":[B
    .restart local v0    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :catch_0
    move-exception v1

    .line 3459
    .local v1, "e":Ljava/io/EOFException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Encountered corrupt PNG file."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o getRafAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 18
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3041
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3042
    const/4 v2, 0x4

    new-array v3, v2, [B

    .line 3043
    .local v3, "jpegOffsetBytes":[B
    new-array v4, v2, [B

    .line 3044
    .local v4, "cfaHeaderOffsetBytes":[B
    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 3046
    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3047
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 3048
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 3049
    .local v2, "rafJpegOffset":I
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 3052
    .local v5, "rafCfaHeaderOffset":I
    const/4 v6, 0x5

    invoke-direct {v0, v1, v2, v6}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 3055
    int-to-long v6, v5

    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3058
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3059
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    .line 3060
    .local v6, "numberOfDirectoryEntry":I
    sget-boolean v7, Landroid/media/ExifInterface;->DEBUG:Z

    const-string v8, "ExifInterface"

    if-eqz v7, :cond_0

    .line 3061
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "numberOfDirectoryEntry: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_3

    .line 3067
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v9

    .line 3068
    .local v9, "tagNumber":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v10

    .line 3069
    .local v10, "numberOfBytes":I
    sget-object v11, Landroid/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroid/media/ExifInterface$ExifTag;

    iget v11, v11, Landroid/media/ExifInterface$ExifTag;->number:I

    if-ne v9, v11, :cond_2

    .line 3070
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v11

    .line 3071
    .local v11, "imageLength":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v12

    .line 3072
    .local v12, "imageWidth":I
    iget-object v13, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3073
    invoke-static {v11, v13}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 3074
    .local v13, "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v14, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3075
    invoke-static {v12, v14}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v14

    .line 3076
    .local v14, "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v15, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    move/from16 v17, v2

    .end local v2    # "rafJpegOffset":I
    .local v17, "rafJpegOffset":I
    const-string v2, "ImageLength"

    invoke-virtual {v15, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3077
    iget-object v2, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v16

    const-string v15, "ImageWidth"

    invoke-virtual {v2, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3078
    sget-boolean v2, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 3079
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Updated to length: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ", width: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    :cond_1
    return-void

    .line 3083
    .end local v11    # "imageLength":I
    .end local v12    # "imageWidth":I
    .end local v13    # "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v14    # "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v17    # "rafJpegOffset":I
    .restart local v2    # "rafJpegOffset":I
    :cond_2
    move/from16 v17, v2

    .end local v2    # "rafJpegOffset":I
    .restart local v17    # "rafJpegOffset":I
    invoke-virtual {v1, v10}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3066
    .end local v9    # "tagNumber":I
    .end local v10    # "numberOfBytes":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3085
    .end local v7    # "i":I
    .end local v17    # "rafJpegOffset":I
    .restart local v2    # "rafJpegOffset":I
    :cond_3
    return-void
.end method

.method private greylist-max-o getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 6
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2990
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->parseTiffHeaders(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2993
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2996
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2997
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2998
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 3001
    invoke-direct {p0}, Landroid/media/ExifInterface;->validateImages()V

    .line 3003
    iget v0, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 3006
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 3007
    const-string v2, "MakerNote"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 3008
    .local v0, "makerNoteAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_0

    .line 3010
    new-instance v2, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v2, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 3012
    .local v2, "makerNoteDataInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3015
    const-wide/16 v3, 0x6

    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3018
    const/16 v3, 0x9

    invoke-direct {p0, v2, v3}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 3021
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v4, v3

    .line 3022
    const-string v4, "ColorSpace"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 3023
    .local v3, "colorSpaceAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v3, :cond_0

    .line 3024
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v5, v1

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3028
    .end local v0    # "makerNoteAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v2    # "makerNoteDataInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v3    # "colorSpaceAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_0
    return-void
.end method

.method private greylist-max-o getRw2Attributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 6
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3357
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 3360
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 3361
    const-string v2, "JpgFromRaw"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 3362
    .local v0, "jpgFromRawAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_0

    .line 3363
    iget v2, p0, Landroid/media/ExifInterface;->mRw2JpgFromRawOffset:I

    const/4 v3, 0x5

    invoke-direct {p0, p1, v2, v3}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 3367
    :cond_0
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    .line 3368
    const-string v2, "ISO"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 3369
    .local v1, "rw2IsoAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 3370
    const-string v4, "ISOSpeedRatings"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 3371
    .local v2, "exifIsoAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    .line 3373
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v5, v3

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3375
    :cond_1
    return-void
.end method

.method private blacklist getStandaloneAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 2
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3257
    sget-object v0, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3259
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 3260
    .local v1, "data":[B
    invoke-virtual {p1, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 3262
    array-length v0, v0

    iput v0, p0, Landroid/media/ExifInterface;->mExifOffset:I

    .line 3263
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    .line 3264
    return-void
.end method

.method private blacklist getWebpAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 8
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3467
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWebpAttributes starting with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3472
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3473
    sget-object v0, Landroid/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3476
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    .line 3477
    .local v0, "fileSize":I
    const/16 v1, 0x8

    .line 3478
    .local v1, "bytesRead":I
    sget-object v2, Landroid/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 3491
    :goto_0
    const/4 v2, 0x4

    :try_start_0
    new-array v2, v2, [B

    .line 3492
    .local v2, "code":[B
    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v3

    array-length v4, v2

    if-ne v3, v4, :cond_7

    .line 3496
    add-int/lit8 v1, v1, 0x4

    .line 3497
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v3

    .line 3498
    .local v3, "chunkSize":I
    add-int/lit8 v1, v1, 0x4

    .line 3499
    sget-object v4, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3501
    new-array v4, v3, [B

    .line 3502
    .local v4, "payload":[B
    invoke-virtual {p1, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 3507
    iput v1, p0, Landroid/media/ExifInterface;->mExifOffset:I

    .line 3508
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    .line 3511
    iput v1, p0, Landroid/media/ExifInterface;->mExifOffset:I

    .line 3512
    goto :goto_2

    .line 3503
    :cond_1
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read given length for given PNG chunk type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3504
    invoke-static {v2}, Landroid/media/ExifInterfaceUtils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fileSize":I
    .end local v1    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v5

    .line 3515
    .end local v4    # "payload":[B
    .restart local v0    # "fileSize":I
    .restart local v1    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_2
    rem-int/lit8 v4, v3, 0x2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    add-int/lit8 v4, v3, 0x1

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    move v3, v4

    .line 3517
    add-int v4, v1, v3

    if-ne v4, v0, :cond_4

    .line 3519
    nop

    .line 3535
    .end local v2    # "code":[B
    .end local v3    # "chunkSize":I
    :goto_2
    nop

    .line 3536
    return-void

    .line 3520
    .restart local v2    # "code":[B
    .restart local v3    # "chunkSize":I
    :cond_4
    add-int v4, v1, v3

    const-string v5, "Encountered WebP file with invalid chunk size"

    if-gt v4, v0, :cond_6

    .line 3524
    :try_start_1
    invoke-virtual {p1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v4

    .line 3525
    .local v4, "skipped":I
    if-ne v4, v3, :cond_5

    .line 3528
    add-int/2addr v1, v4

    .line 3530
    .end local v2    # "code":[B
    .end local v3    # "chunkSize":I
    .end local v4    # "skipped":I
    goto :goto_0

    .line 3526
    .restart local v2    # "code":[B
    .restart local v3    # "chunkSize":I
    .restart local v4    # "skipped":I
    :cond_5
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fileSize":I
    .end local v1    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v6

    .line 3521
    .end local v4    # "skipped":I
    .restart local v0    # "fileSize":I
    .restart local v1    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_6
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fileSize":I
    .end local v1    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v4

    .line 3493
    .end local v3    # "chunkSize":I
    .restart local v0    # "fileSize":I
    .restart local v1    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_7
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Encountered invalid length while parsing WebP chunktype"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fileSize":I
    .end local v1    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v3
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3531
    .end local v2    # "code":[B
    .restart local v0    # "fileSize":I
    .restart local v1    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :catch_0
    move-exception v2

    .line 3534
    .local v2, "e":Ljava/io/EOFException;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Encountered corrupt WebP file."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static greylist-max-o guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;
    .locals 13
    .param p0, "entryValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4869
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 4918
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4869
    const/4 v5, -0x1

    .line 4918
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 4869
    if-eqz v1, :cond_9

    .line 4870
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4871
    .local v0, "entryValues":[Ljava/lang/String;
    aget-object v1, v0, v2

    invoke-static {v1}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 4872
    .local v1, "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 4873
    return-object v1

    .line 4875
    :cond_0
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_8

    .line 4876
    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 4877
    .local v3, "guessDataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v7, -0x1

    .local v7, "first":I
    const/4 v8, -0x1

    .line 4878
    .local v8, "second":I
    iget-object v9, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eq v9, v10, :cond_1

    iget-object v9, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v9, v10, :cond_2

    .line 4880
    :cond_1
    iget-object v9, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 4882
    :cond_2
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v5, :cond_4

    iget-object v9, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v10, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eq v9, v10, :cond_3

    iget-object v9, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v10, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v9, v10, :cond_4

    .line 4884
    :cond_3
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 4886
    :cond_4
    if-ne v7, v5, :cond_5

    if-ne v8, v5, :cond_5

    .line 4887
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    .line 4889
    :cond_5
    if-ne v7, v5, :cond_6

    .line 4890
    new-instance v9, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v9

    .line 4891
    goto :goto_1

    .line 4893
    :cond_6
    if-ne v8, v5, :cond_7

    .line 4894
    new-instance v9, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v9

    .line 4875
    .end local v3    # "guessDataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v7    # "first":I
    .end local v8    # "second":I
    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4898
    .end local v2    # "i":I
    :cond_8
    return-object v1

    .line 4901
    .end local v0    # "entryValues":[Ljava/lang/String;
    .end local v1    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_9
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v7, 0x0

    if-eqz v1, :cond_f

    .line 4902
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4903
    .local v0, "rationalNumber":[Ljava/lang/String;
    array-length v1, v0

    if-ne v1, v3, :cond_e

    .line 4905
    :try_start_0
    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-long v1, v1

    .line 4906
    .local v1, "numerator":J
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-long v9, v9

    .line 4907
    .local v9, "denominator":J
    cmp-long v3, v1, v7

    const/16 v5, 0xa

    if-ltz v3, :cond_d

    cmp-long v3, v9, v7

    if-gez v3, :cond_a

    goto :goto_3

    .line 4910
    :cond_a
    const-wide/32 v7, 0x7fffffff

    cmp-long v3, v1, v7

    const/4 v11, 0x5

    if-gtz v3, :cond_c

    cmp-long v3, v9, v7

    if-lez v3, :cond_b

    goto :goto_2

    .line 4913
    :cond_b
    new-instance v3, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 4911
    :cond_c
    :goto_2
    new-instance v3, Landroid/util/Pair;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 4908
    :cond_d
    :goto_3
    new-instance v3, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 4914
    .end local v1    # "numerator":J
    .end local v9    # "denominator":J
    :catch_0
    move-exception v1

    .line 4918
    :cond_e
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 4921
    .end local v0    # "rationalNumber":[Ljava/lang/String;
    :cond_f
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4922
    .local v0, "longValue":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v7

    const/4 v2, 0x4

    if-ltz v1, :cond_10

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/32 v11, 0xffff

    cmp-long v1, v9, v11

    if-gtz v1, :cond_10

    .line 4923
    new-instance v1, Landroid/util/Pair;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 4925
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v1, v9, v7

    if-gez v1, :cond_11

    .line 4926
    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 4928
    :cond_11
    new-instance v1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 4929
    .end local v0    # "longValue":Ljava/lang/Long;
    :catch_1
    move-exception v0

    .line 4933
    :try_start_2
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 4934
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    .line 4935
    :catch_2
    move-exception v0

    .line 4938
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private greylist-max-o handleThumbnailFromJfif(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 8
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "thumbnailData"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4361
    nop

    .line 4362
    const-string v0, "JPEGInterchangeFormat"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 4363
    .local v0, "jpegInterchangeFormatAttribute":Landroid/media/ExifInterface$ExifAttribute;
    nop

    .line 4364
    const-string v1, "JPEGInterchangeFormatLength"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 4365
    .local v1, "jpegInterchangeFormatLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 4367
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    .line 4368
    .local v2, "thumbnailOffset":I
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    .line 4370
    .local v3, "thumbnailLength":I
    iget v4, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    .line 4372
    iget v4, p0, Landroid/media/ExifInterface;->mOrfMakerNoteOffset:I

    add-int/2addr v2, v4

    .line 4375
    :cond_0
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->getLength()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 4377
    if-lez v2, :cond_1

    if-lez v3, :cond_1

    .line 4378
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 4380
    iget v4, p0, Landroid/media/ExifInterface;->mExifOffset:I

    add-int/2addr v4, v2

    iput v4, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    .line 4381
    iput v3, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    .line 4382
    const/4 v5, 0x6

    iput v5, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    .line 4384
    iget-object v5, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v5, :cond_1

    .line 4388
    new-array v5, v3, [B

    .line 4389
    .local v5, "thumbnailBytes":[B
    int-to-long v6, v4

    invoke-virtual {p1, v6, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4390
    invoke-virtual {p1, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 4391
    iput-object v5, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 4394
    .end local v5    # "thumbnailBytes":[B
    :cond_1
    sget-boolean v4, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 4395
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting thumbnail attributes with offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ExifInterface"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4399
    .end local v2    # "thumbnailOffset":I
    .end local v3    # "thumbnailLength":I
    :cond_2
    return-void
.end method

.method private greylist-max-o handleThumbnailFromStrips(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 20
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "thumbnailData"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4404
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 4405
    const-string v3, "StripOffsets"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 4406
    .local v3, "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    nop

    .line 4407
    const-string v4, "StripByteCounts"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 4409
    .local v4, "stripByteCountsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v3, :cond_9

    if-eqz v4, :cond_9

    .line 4410
    iget-object v5, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4411
    invoke-static {v3, v5}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Landroid/media/ExifInterfaceUtils;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v5

    .line 4412
    .local v5, "stripOffsets":[J
    iget-object v6, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4413
    invoke-static {v4, v6}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Landroid/media/ExifInterfaceUtils;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v6

    .line 4415
    .local v6, "stripByteCounts":[J
    const-string v7, "ExifInterface"

    if-eqz v5, :cond_8

    array-length v8, v5

    if-nez v8, :cond_0

    move-object/from16 v17, v3

    goto/16 :goto_3

    .line 4419
    :cond_0
    if-eqz v6, :cond_7

    array-length v8, v6

    if-nez v8, :cond_1

    move-object/from16 v17, v3

    goto/16 :goto_2

    .line 4423
    :cond_1
    array-length v8, v5

    array-length v9, v6

    if-eq v8, v9, :cond_2

    .line 4424
    const-string v8, "stripOffsets and stripByteCounts should have same length."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4425
    return-void

    .line 4430
    :cond_2
    nop

    .line 4431
    invoke-static {v6}, Ljava/util/Arrays;->stream([J)Ljava/util/stream/LongStream;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v8, v8, [B

    .line 4433
    .local v8, "totalStripBytes":[B
    const/4 v9, 0x0

    .line 4434
    .local v9, "bytesRead":I
    const/4 v10, 0x0

    .line 4435
    .local v10, "bytesAdded":I
    const/4 v11, 0x1

    iput-boolean v11, v0, Landroid/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    iput-boolean v11, v0, Landroid/media/ExifInterface;->mHasThumbnailStrips:Z

    iput-boolean v11, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 4436
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v13, v5

    if-ge v12, v13, :cond_6

    .line 4437
    aget-wide v14, v5, v12

    long-to-int v14, v14

    .line 4438
    .local v14, "stripOffset":I
    move/from16 v16, v14

    .end local v14    # "stripOffset":I
    .local v16, "stripOffset":I
    aget-wide v13, v6, v12

    long-to-int v14, v13

    .line 4442
    .local v14, "stripByteCount":I
    array-length v13, v5

    sub-int/2addr v13, v11

    if-ge v12, v13, :cond_3

    add-int v13, v16, v14

    move-object/from16 v17, v3

    .end local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .local v17, "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    int-to-long v2, v13

    add-int/lit8 v13, v12, 0x1

    aget-wide v18, v5, v13

    cmp-long v2, v2, v18

    if-eqz v2, :cond_4

    .line 4444
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    goto :goto_1

    .line 4442
    .end local v17    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_3
    move-object/from16 v17, v3

    .line 4448
    .end local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v17    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_4
    :goto_1
    sub-int v2, v16, v9

    .line 4449
    .local v2, "skipBytes":I
    if-gez v2, :cond_5

    .line 4450
    const-string v3, "Invalid strip offset value"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4452
    :cond_5
    move v15, v12

    .end local v12    # "i":I
    .local v15, "i":I
    int-to-long v11, v2

    invoke-virtual {v1, v11, v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4453
    add-int/2addr v9, v2

    .line 4457
    new-array v11, v14, [B

    .line 4458
    .local v11, "stripBytes":[B
    invoke-virtual {v1, v11}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 4459
    add-int/2addr v9, v14

    .line 4462
    array-length v12, v11

    const/4 v13, 0x0

    invoke-static {v11, v13, v8, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4464
    array-length v12, v11

    add-int/2addr v10, v12

    .line 4436
    .end local v2    # "skipBytes":I
    .end local v11    # "stripBytes":[B
    .end local v14    # "stripByteCount":I
    .end local v16    # "stripOffset":I
    add-int/lit8 v12, v15, 0x1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    const/4 v11, 0x1

    .end local v15    # "i":I
    .restart local v12    # "i":I
    goto :goto_0

    .end local v17    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_6
    move-object/from16 v17, v3

    move v15, v12

    .line 4466
    .end local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v12    # "i":I
    .restart local v17    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iput-object v8, v0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 4468
    iget-boolean v2, v0, Landroid/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    if-eqz v2, :cond_a

    .line 4470
    const/4 v2, 0x0

    aget-wide v2, v5, v2

    long-to-int v2, v2

    iget v3, v0, Landroid/media/ExifInterface;->mExifOffset:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    .line 4471
    array-length v2, v8

    iput v2, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    goto :goto_4

    .line 4419
    .end local v8    # "totalStripBytes":[B
    .end local v9    # "bytesRead":I
    .end local v10    # "bytesAdded":I
    .end local v17    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_7
    move-object/from16 v17, v3

    .line 4420
    .end local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v17    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :goto_2
    const-string v2, "stripByteCounts should not be null or have zero length."

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4421
    return-void

    .line 4415
    .end local v17    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_8
    move-object/from16 v17, v3

    .line 4416
    .end local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v17    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :goto_3
    const-string v2, "stripOffsets should not be null or have zero length."

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4417
    return-void

    .line 4409
    .end local v5    # "stripOffsets":[J
    .end local v6    # "stripByteCounts":[J
    .end local v17    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_9
    move-object/from16 v17, v3

    .line 4474
    .end local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v17    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_a
    :goto_4
    return-void
.end method

.method private blacklist initForFilename(Ljava/lang/String;)V
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2579
    const/4 v0, 0x0

    .line 2580
    .local v0, "in":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 2581
    .local v1, "modernFd":Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 2582
    iput-object p1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 2583
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    .line 2587
    iput v3, p0, Landroid/media/ExifInterface;->mReadImageFileDirectoryCount:I

    .line 2590
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 2591
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Landroid/os/FileUtils;->convertToModernFd(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    move-object v1, v3

    .line 2592
    if-eqz v1, :cond_0

    .line 2593
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2594
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v3

    .line 2595
    iput-object v2, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 2596
    :cond_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2597
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 2599
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2601
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2602
    if-eqz v1, :cond_2

    .line 2603
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 2606
    :cond_2
    return-void

    .line 2601
    :catchall_0
    move-exception v2

    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2602
    if-eqz v1, :cond_3

    .line 2603
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 2605
    :cond_3
    throw v2
.end method

.method private static blacklist isExifDataOnly(Ljava/io/BufferedInputStream;)Z
    .locals 4
    .param p0, "in"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2831
    sget-object v0, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 2832
    array-length v0, v0

    new-array v0, v0, [B

    .line 2833
    .local v0, "signatureCheckBytes":[B
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 2834
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V

    .line 2835
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2836
    aget-byte v3, v0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    .line 2837
    const/4 v2, 0x0

    return v2

    .line 2835
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2840
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o isHeifFormat([B)Z
    .locals 21
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2664
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 2666
    .local v2, "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    move-object v2, v0

    .line 2668
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    int-to-long v4, v0

    .line 2669
    .local v4, "chunkSize":J
    const/4 v0, 0x4

    new-array v6, v0, [B

    .line 2670
    .local v6, "chunkType":[B
    invoke-virtual {v2, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 2672
    sget-object v7, Landroid/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    .line 2673
    nop

    .line 2730
    nop

    .line 2731
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2732
    const/4 v0, 0x0

    .line 2673
    .end local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .local v0, "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    return v3

    .line 2676
    .end local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_0
    const-wide/16 v7, 0x8

    .line 2677
    .local v7, "chunkDataOffset":J
    const-wide/16 v9, 0x1

    cmp-long v11, v4, v9

    const-wide/16 v12, 0x8

    if-nez v11, :cond_2

    .line 2680
    :try_start_1
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readLong()J

    move-result-wide v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v4, v14

    .line 2681
    const-wide/16 v14, 0x10

    cmp-long v11, v4, v14

    if-gez v11, :cond_1

    .line 2683
    nop

    .line 2730
    nop

    .line 2731
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2732
    const/4 v0, 0x0

    .line 2683
    .end local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    return v3

    .line 2685
    .end local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_1
    add-long/2addr v7, v12

    .line 2689
    :cond_2
    :try_start_2
    array-length v11, v1

    int-to-long v14, v11

    cmp-long v11, v4, v14

    if-lez v11, :cond_3

    .line 2690
    array-length v11, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v4, v11

    .line 2693
    :cond_3
    sub-long v14, v4, v7

    .line 2697
    .local v14, "chunkDataSize":J
    cmp-long v11, v14, v12

    if-gez v11, :cond_4

    .line 2698
    nop

    .line 2730
    nop

    .line 2731
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2732
    const/4 v0, 0x0

    .line 2698
    .end local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    return v3

    .line 2701
    .end local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_4
    :try_start_3
    new-array v0, v0, [B

    .line 2702
    .local v0, "brand":[B
    const/4 v11, 0x0

    .line 2703
    .local v11, "isMif1":Z
    const/4 v12, 0x0

    .line 2704
    .local v12, "isHeic":Z
    const/4 v13, 0x0

    .line 2705
    .local v13, "isAvif":Z
    const-wide/16 v16, 0x0

    .local v16, "i":J
    :goto_0
    const-wide/16 v18, 0x4

    div-long v18, v14, v18

    cmp-long v18, v16, v18

    if-gez v18, :cond_d

    .line 2706
    invoke-virtual {v2, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v9

    array-length v10, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v9, v10, :cond_5

    .line 2707
    nop

    .line 2730
    nop

    .line 2731
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2732
    const/4 v2, 0x0

    .line 2707
    return v3

    .line 2709
    :cond_5
    const-wide/16 v9, 0x1

    cmp-long v20, v16, v9

    if-nez v20, :cond_6

    .line 2711
    goto :goto_2

    .line 2713
    :cond_6
    :try_start_4
    sget-object v9, Landroid/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    invoke-static {v0, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2714
    const/4 v11, 0x1

    goto :goto_1

    .line 2715
    :cond_7
    sget-object v9, Landroid/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    invoke-static {v0, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2716
    const/4 v12, 0x1

    goto :goto_1

    .line 2717
    :cond_8
    sget-object v9, Landroid/media/ExifInterface;->HEIF_BRAND_AVIF:[B

    invoke-static {v0, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_9

    sget-object v9, Landroid/media/ExifInterface;->HEIF_BRAND_AVIS:[B

    .line 2718
    invoke-static {v0, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v9, :cond_a

    .line 2719
    :cond_9
    const/4 v13, 0x1

    .line 2721
    :cond_a
    :goto_1
    if-eqz v11, :cond_c

    if-nez v12, :cond_b

    if-eqz v13, :cond_c

    .line 2722
    :cond_b
    const/4 v3, 0x1

    .line 2730
    nop

    .line 2731
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2732
    const/4 v2, 0x0

    .line 2722
    return v3

    .line 2705
    :cond_c
    :goto_2
    const-wide/16 v9, 0x1

    add-long v16, v16, v9

    goto :goto_0

    .line 2730
    .end local v0    # "brand":[B
    .end local v4    # "chunkSize":J
    .end local v6    # "chunkType":[B
    .end local v7    # "chunkDataOffset":J
    .end local v11    # "isMif1":Z
    .end local v12    # "isHeic":Z
    .end local v13    # "isAvif":Z
    .end local v14    # "chunkDataSize":J
    .end local v16    # "i":J
    :cond_d
    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    .line 2725
    :catch_0
    move-exception v0

    .line 2726
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    sget-boolean v4, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v4, :cond_e

    .line 2727
    const-string v4, "ExifInterface"

    const-string v5, "Exception parsing HEIF file type box."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2730
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_e
    if-eqz v2, :cond_f

    .line 2731
    :goto_3
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2732
    const/4 v0, 0x0

    .end local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .local v0, "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    goto :goto_4

    .line 2730
    .end local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_f
    move-object v0, v2

    .line 2735
    .end local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :goto_4
    return v3

    .line 2730
    .end local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :goto_5
    if-eqz v2, :cond_10

    .line 2731
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2732
    const/4 v2, 0x0

    .line 2734
    :cond_10
    throw v0
.end method

.method private static greylist-max-o isJpegFormat([B)Z
    .locals 3
    .param p0, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2639
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/media/ExifInterface;->JPEG_SIGNATURE:[B

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2640
    aget-byte v2, p0, v0

    aget-byte v1, v1, v0

    if-eq v2, v1, :cond_0

    .line 2641
    const/4 v1, 0x0

    return v1

    .line 2639
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2644
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o isOrfFormat([B)Z
    .locals 4
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2747
    const/4 v0, 0x0

    .line 2750
    .local v0, "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v2, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    move-object v0, v2

    .line 2753
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v2

    iput-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2755
    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2757
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2758
    .local v2, "orfSignature":S
    const/16 v3, 0x4f52

    if-eq v2, v3, :cond_0

    const/16 v3, 0x5352

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 2762
    :cond_1
    nop

    .line 2763
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2758
    return v1

    .line 2762
    .end local v2    # "orfSignature":S
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 2763
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2765
    :cond_2
    throw v1

    .line 2759
    :catch_0
    move-exception v2

    .line 2762
    if-eqz v0, :cond_3

    .line 2763
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2766
    :cond_3
    return v1
.end method

.method private blacklist isPngFormat([B)Z
    .locals 3
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2802
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/media/ExifInterface;->PNG_SIGNATURE:[B

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2803
    aget-byte v2, p1, v0

    aget-byte v1, v1, v0

    if-eq v2, v1, :cond_0

    .line 2804
    const/4 v1, 0x0

    return v1

    .line 2802
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2807
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o isRafFormat([B)Z
    .locals 4
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2654
    const-string v0, "FUJIFILMCCD-RAW"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2655
    .local v0, "rafSignatureBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 2656
    aget-byte v2, p1, v1

    aget-byte v3, v0, v1

    if-eq v2, v3, :cond_0

    .line 2657
    const/4 v2, 0x0

    return v2

    .line 2655
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2660
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o isRw2Format([B)Z
    .locals 4
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2774
    const/4 v0, 0x0

    .line 2777
    .local v0, "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v2, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    move-object v0, v2

    .line 2780
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v2

    iput-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2782
    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2784
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v2

    .line 2785
    .local v2, "signatureByte":S
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2786
    const/16 v3, 0x55

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 2790
    :cond_0
    nop

    .line 2791
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2786
    return v1

    .line 2790
    .end local v2    # "signatureByte":S
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 2791
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2793
    :cond_1
    throw v1

    .line 2787
    :catch_0
    move-exception v2

    .line 2790
    if-eqz v0, :cond_2

    .line 2791
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2794
    :cond_2
    return v1
.end method

.method private static greylist-max-o isSeekableFD(Ljava/io/FileDescriptor;)Z
    .locals 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 2065
    const-wide/16 v0, 0x0

    :try_start_0
    sget v2, Landroid/system/OsConstants;->SEEK_CUR:I

    invoke-static {p0, v0, v1, v2}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2066
    const/4 v0, 0x1

    return v0

    .line 2067
    :catch_0
    move-exception v0

    .line 2068
    .local v0, "e":Landroid/system/ErrnoException;
    sget-boolean v1, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2069
    const-string v1, "ExifInterface"

    const-string v2, "The file descriptor for the given input is not seekable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o isSupportedDataType(Ljava/util/HashMap;)Z
    .locals 7
    .param p1, "thumbnailData"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4478
    nop

    .line 4479
    const-string v0, "BitsPerSample"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 4480
    .local v0, "bitsPerSampleAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_3

    .line 4481
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 4483
    .local v1, "bitsPerSampleValue":[I
    sget-object v2, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 4484
    return v4

    .line 4488
    :cond_0
    iget v3, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    .line 4489
    nop

    .line 4490
    const-string v3, "PhotometricInterpretation"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 4491
    .local v3, "photometricInterpretationAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v3, :cond_3

    .line 4492
    iget-object v5, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4493
    invoke-virtual {v3, v5}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v5

    .line 4494
    .local v5, "photometricInterpretationValue":I
    if-ne v5, v4, :cond_1

    sget-object v6, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 4495
    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    const/4 v6, 0x6

    if-ne v5, v6, :cond_3

    .line 4497
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4498
    :cond_2
    return v4

    .line 4505
    .end local v1    # "bitsPerSampleValue":[I
    .end local v3    # "photometricInterpretationAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v5    # "photometricInterpretationValue":I
    :cond_3
    sget-boolean v1, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 4506
    const-string v1, "ExifInterface"

    const-string v2, "Unsupported data type value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4508
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist isSupportedFormatForSavingAttributes()Z
    .locals 2

    .line 5306
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 5309
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 5311
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist isSupportedMimeType(Ljava/lang/String;)Z
    .locals 5
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 1661
    if-eqz p0, :cond_1

    .line 1665
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v2, "image/x-canon-cr2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "image/x-nikon-nrw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "image/x-nikon-nef"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "image/x-olympus-orf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "image/x-pentax-pef"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "image/png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xd

    goto :goto_0

    :sswitch_6
    const-string v2, "image/x-panasonic-rw2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "image/x-adobe-dng"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v4

    goto :goto_0

    :sswitch_8
    const-string v2, "image/webp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xe

    goto :goto_0

    :sswitch_9
    const-string v2, "image/jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v3

    goto :goto_0

    :sswitch_a
    const-string v2, "image/heif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xc

    goto :goto_0

    :sswitch_b
    const-string v2, "image/heic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xb

    goto :goto_0

    :sswitch_c
    const-string v2, "image/x-sony-arw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_d
    const-string v2, "image/x-samsung-srw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_e
    const-string v2, "image/x-fuji-raf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1683
    return v3

    .line 1681
    :pswitch_0
    return v4

    .line 1662
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mimeType shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x6fc6acff -> :sswitch_e
        -0x617ac9e4 -> :sswitch_d
        -0x5f082c57 -> :sswitch_c
        -0x58a8e8f5 -> :sswitch_b
        -0x58a8e8f2 -> :sswitch_a
        -0x58a7d764 -> :sswitch_9
        -0x58a21830 -> :sswitch_8
        -0x54d6098a -> :sswitch_7
        -0x3ab85cc1 -> :sswitch_6
        -0x34686c8b -> :sswitch_5
        -0x13d592a1 -> :sswitch_4
        0x52243d4a -> :sswitch_3
        0x7d1e84e8 -> :sswitch_2
        0x7d1e868c -> :sswitch_1
        0x7dd6e2bc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o isThumbnail(Ljava/util/HashMap;)Z
    .locals 5
    .param p1, "map"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4514
    const-string v0, "ImageLength"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 4515
    .local v0, "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    const-string v1, "ImageWidth"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 4517
    .local v1, "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 4518
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    .line 4519
    .local v2, "imageLengthValue":I
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    .line 4520
    .local v3, "imageWidthValue":I
    const/16 v4, 0x200

    if-gt v2, v4, :cond_0

    if-gt v3, v4, :cond_0

    .line 4521
    const/4 v4, 0x1

    return v4

    .line 4524
    .end local v2    # "imageLengthValue":I
    .end local v3    # "imageWidthValue":I
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist isWebpFormat([B)Z
    .locals 4
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2816
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    .line 2817
    aget-byte v2, p1, v0

    aget-byte v1, v1, v0

    if-eq v2, v1, :cond_0

    .line 2818
    return v3

    .line 2816
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2821
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    sget-object v1, Landroid/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 2822
    sget-object v2, Landroid/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v2, v2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x4

    aget-byte v2, p1, v2

    aget-byte v1, v1, v0

    if-eq v2, v1, :cond_2

    .line 2824
    return v3

    .line 2821
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2827
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o loadAttributes(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;

    .line 1978
    if-eqz p1, :cond_5

    .line 1983
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1984
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v0

    .line 1983
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1988
    .end local v0    # "i":I
    :cond_0
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mIsExifDataOnly:Z

    if-nez v0, :cond_1

    .line 1989
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {v0, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v0

    .line 1990
    move-object v0, p1

    check-cast v0, Ljava/io/BufferedInputStream;

    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getMimeType(Ljava/io/BufferedInputStream;)I

    move-result v0

    iput v0, p0, Landroid/media/ExifInterface;->mMimeType:I

    .line 1994
    :cond_1
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1996
    .local v0, "inputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    iget-boolean v2, p0, Landroid/media/ExifInterface;->mIsExifDataOnly:Z

    if-nez v2, :cond_2

    .line 1997
    iget v2, p0, Landroid/media/ExifInterface;->mMimeType:I

    packed-switch v2, :pswitch_data_0

    .line 2038
    goto :goto_1

    .line 2023
    :pswitch_0
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getWebpAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2024
    goto :goto_1

    .line 2019
    :pswitch_1
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getPngAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2020
    goto :goto_1

    .line 2007
    :pswitch_2
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getHeifAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2008
    goto :goto_1

    .line 2015
    :pswitch_3
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getRw2Attributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2016
    goto :goto_1

    .line 2003
    :pswitch_4
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getRafAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2004
    goto :goto_1

    .line 2011
    :pswitch_5
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getOrfAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2012
    goto :goto_1

    .line 1999
    :pswitch_6
    invoke-direct {p0, v0, v1, v1}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 2000
    goto :goto_1

    .line 2034
    :pswitch_7
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2035
    goto :goto_1

    .line 2042
    :cond_2
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getStandaloneAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2045
    :goto_1
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->setThumbnailData(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2046
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2055
    .end local v0    # "inputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 2057
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 2058
    :goto_2
    invoke-direct {p0}, Landroid/media/ExifInterface;->printAttributes()V

    goto :goto_3

    .line 2055
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 2047
    :catch_0
    move-exception v0

    .line 2050
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    iput-boolean v1, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z

    .line 2051
    const-string v1, "ExifInterface"

    const-string v2, "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2055
    nop

    .end local v0    # "e":Ljava/lang/Throwable;
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 2057
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 2058
    goto :goto_2

    .line 2061
    :cond_3
    :goto_3
    return-void

    .line 2055
    :goto_4
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 2057
    sget-boolean v1, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 2058
    invoke-direct {p0}, Landroid/media/ExifInterface;->printAttributes()V

    .line 2060
    :cond_4
    throw v0

    .line 1979
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inputstream shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 10
    .param p0, "dateTimeString"    # Ljava/lang/String;
    .param p1, "subSecs"    # Ljava/lang/String;
    .param p2, "offsetString"    # Ljava/lang/String;

    .line 2481
    const-wide/16 v0, -0x1

    if-eqz p0, :cond_5

    sget-object v2, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 2482
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 2484
    :cond_0
    new-instance v2, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2489
    .local v2, "pos":Ljava/text/ParsePosition;
    :try_start_0
    sget-object v4, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2490
    :try_start_1
    sget-object v5, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, p0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v5

    .line 2491
    .local v5, "datetime":Ljava/util/Date;
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2493
    if-eqz p2, :cond_1

    .line 2494
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object p0, v4

    .line 2495
    new-instance v4, Ljava/text/ParsePosition;

    invoke-direct {v4, v3}, Ljava/text/ParsePosition;-><init>(I)V

    move-object v3, v4

    .line 2496
    .local v3, "position":Ljava/text/ParsePosition;
    sget-object v4, Landroid/media/ExifInterface;->sFormatterTz:Ljava/text/SimpleDateFormat;

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2497
    :try_start_3
    sget-object v6, Landroid/media/ExifInterface;->sFormatterTz:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, p0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v6

    move-object v5, v6

    .line 2498
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v2    # "pos":Ljava/text/ParsePosition;
    .end local p0    # "dateTimeString":Ljava/lang/String;
    .end local p1    # "subSecs":Ljava/lang/String;
    .end local p2    # "offsetString":Ljava/lang/String;
    :try_start_4
    throw v6

    .line 2501
    .end local v3    # "position":Ljava/text/ParsePosition;
    .restart local v2    # "pos":Ljava/text/ParsePosition;
    .restart local p0    # "dateTimeString":Ljava/lang/String;
    .restart local p1    # "subSecs":Ljava/lang/String;
    .restart local p2    # "offsetString":Ljava/lang/String;
    :cond_1
    :goto_0
    if-nez v5, :cond_2

    return-wide v0

    .line 2502
    :cond_2
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v3
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2504
    .local v3, "msecs":J
    if-eqz p1, :cond_4

    .line 2506
    :try_start_5
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2507
    .local v6, "sub":J
    :goto_1
    const-wide/16 v8, 0x3e8

    cmp-long v8, v6, v8

    if-lez v8, :cond_3

    .line 2508
    const-wide/16 v8, 0xa

    div-long v8, v6, v8
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    move-wide v6, v8

    goto :goto_1

    .line 2510
    :cond_3
    add-long/2addr v3, v6

    .line 2513
    .end local v6    # "sub":J
    goto :goto_2

    .line 2511
    :catch_0
    move-exception v0

    .line 2515
    :cond_4
    :goto_2
    return-wide v3

    .line 2491
    .end local v3    # "msecs":J
    .end local v5    # "datetime":Ljava/util/Date;
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v2    # "pos":Ljava/text/ParsePosition;
    .end local p0    # "dateTimeString":Ljava/lang/String;
    .end local p1    # "subSecs":Ljava/lang/String;
    .end local p2    # "offsetString":Ljava/lang/String;
    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1

    .line 2516
    .restart local v2    # "pos":Ljava/text/ParsePosition;
    .restart local p0    # "dateTimeString":Ljava/lang/String;
    .restart local p1    # "subSecs":Ljava/lang/String;
    .restart local p2    # "offsetString":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 2517
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    return-wide v0

    .line 2482
    .end local v2    # "pos":Ljava/text/ParsePosition;
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_5
    :goto_3
    return-wide v0
.end method

.method private greylist-max-o parseTiffHeaders(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 5
    .param p1, "dataInputStream"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "exifBytesLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4024
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4026
    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 4029
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v0

    .line 4030
    .local v0, "startCode":I
    iget v1, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4031
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid start code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4035
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v1

    .line 4036
    .local v1, "firstIfdOffset":I
    const/16 v2, 0x8

    if-lt v1, v2, :cond_4

    if-ge v1, p2, :cond_4

    .line 4039
    add-int/lit8 v1, v1, -0x8

    .line 4040
    if-lez v1, :cond_3

    .line 4041
    invoke-virtual {p1, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v2

    if-ne v2, v1, :cond_2

    goto :goto_1

    .line 4042
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t jump to first Ifd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4048
    :cond_3
    :goto_1
    const/4 v2, 0x0

    iput v2, p0, Landroid/media/ExifInterface;->mReadImageFileDirectoryCount:I

    .line 4050
    return-void

    .line 4037
    :cond_4
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid first Ifd offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o printAttributes()V
    .locals 7

    .line 2077
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The size of tag group["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExifInterface"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2080
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 2081
    .local v4, "tagValue":Landroid/media/ExifInterface$ExifAttribute;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tagName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tagType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/media/ExifInterface$ExifAttribute;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tagValue: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2082
    invoke-virtual {v4, v6}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2081
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "tagValue":Landroid/media/ExifInterface$ExifAttribute;
    goto :goto_1

    .line 2077
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2085
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private greylist-max-o readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;
    .locals 4
    .param p1, "dataInputStream"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4004
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v0

    .line 4005
    .local v0, "byteOrder":S
    const-string v1, "ExifInterface"

    sparse-switch v0, :sswitch_data_0

    .line 4017
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid byte order: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4012
    :sswitch_0
    sget-boolean v2, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 4013
    const-string v2, "readExifSegment: Byte Align MM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4015
    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object v1

    .line 4007
    :sswitch_1
    sget-boolean v2, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 4008
    const-string v2, "readExifSegment: Byte Align II"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4010
    :cond_1
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x4949 -> :sswitch_1
        0x4d4d -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o readExifSegment([BI)V
    .locals 2
    .param p1, "exifBytes"    # [B
    .param p2, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3964
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 3968
    .local v0, "dataInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    array-length v1, p1

    invoke-direct {p0, v0, v1}, Landroid/media/ExifInterface;->parseTiffHeaders(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 3971
    invoke-direct {p0, v0, p2}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 3972
    return-void
.end method

.method private greylist-max-o readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 28
    .param p1, "dataInputStream"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "ifdType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4056
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmPosition(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4058
    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmPosition(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v3

    const/4 v4, 0x2

    add-int/2addr v3, v4

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v5

    if-le v3, v5, :cond_0

    .line 4060
    return-void

    .line 4063
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v3

    .line 4064
    .local v3, "numberOfDirectoryEntry":S
    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmPosition(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v5

    mul-int/lit8 v6, v3, 0xc

    add-int/2addr v5, v6

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v6

    if-gt v5, v6, :cond_2a

    if-gtz v3, :cond_1

    move/from16 v22, v3

    goto/16 :goto_f

    .line 4070
    :cond_1
    sget-boolean v5, Landroid/media/ExifInterface;->DEBUG:Z

    const-string v6, "ExifInterface"

    if-eqz v5, :cond_2

    .line 4071
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numberOfDirectoryEntry: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4076
    :cond_2
    iget v5, v0, Landroid/media/ExifInterface;->mReadImageFileDirectoryCount:I

    const/4 v7, 0x1

    add-int/2addr v5, v7

    iput v5, v0, Landroid/media/ExifInterface;->mReadImageFileDirectoryCount:I

    .line 4077
    const/16 v8, 0x200

    if-le v5, v8, :cond_3

    .line 4078
    const-string v4, "readImageFileDirectory maybe can\'t breakout, so return."

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4079
    return-void

    .line 4083
    :cond_3
    const/4 v5, 0x0

    .local v5, "i":S
    :goto_0
    const/4 v10, 0x0

    const/4 v11, 0x5

    const/4 v12, 0x4

    if-ge v5, v3, :cond_24

    .line 4084
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v13

    .line 4085
    .local v13, "tagNumber":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v15

    .line 4086
    .local v15, "dataFormat":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v14

    .line 4088
    .local v14, "numberOfComponents":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v16

    add-int/lit8 v8, v16, 0x4

    int-to-long v8, v8

    .line 4091
    .local v8, "nextEntryOffset":J
    sget-object v16, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v12, v16, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifTag;

    .line 4093
    .local v4, "tag":Landroid/media/ExifInterface$ExifTag;
    sget-boolean v12, Landroid/media/ExifInterface;->DEBUG:Z

    const/4 v7, 0x3

    if-eqz v12, :cond_5

    .line 4094
    new-array v11, v11, [Ljava/lang/Object;

    .line 4095
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v11, v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v20, 0x1

    aput-object v16, v11, v20

    .line 4096
    if-eqz v4, :cond_4

    iget-object v10, v4, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    :goto_1
    const/16 v20, 0x2

    aput-object v10, v11, v20

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v19, 0x4

    aput-object v10, v11, v19

    .line 4094
    const-string v10, "ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d"

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4099
    :cond_5
    const-wide/16 v10, 0x0

    .line 4100
    .local v10, "byteCount":J
    const/16 v20, 0x0

    .line 4101
    .local v20, "valid":Z
    if-nez v4, :cond_7

    .line 4102
    if-eqz v12, :cond_6

    .line 4103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v3

    .end local v3    # "numberOfDirectoryEntry":S
    .local v22, "numberOfDirectoryEntry":S
    const-string v3, "Skip the tag entry since tag number is not defined: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v23, v10

    goto :goto_4

    .line 4102
    .end local v22    # "numberOfDirectoryEntry":S
    .restart local v3    # "numberOfDirectoryEntry":S
    :cond_6
    move/from16 v22, v3

    .end local v3    # "numberOfDirectoryEntry":S
    .restart local v22    # "numberOfDirectoryEntry":S
    move-wide/from16 v23, v10

    goto :goto_4

    .line 4105
    .end local v22    # "numberOfDirectoryEntry":S
    .restart local v3    # "numberOfDirectoryEntry":S
    :cond_7
    move/from16 v22, v3

    .end local v3    # "numberOfDirectoryEntry":S
    .restart local v22    # "numberOfDirectoryEntry":S
    if-lez v15, :cond_c

    sget-object v3, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    array-length v7, v3

    if-lt v15, v7, :cond_8

    move-wide/from16 v23, v10

    goto :goto_3

    .line 4110
    :cond_8
    move-wide/from16 v23, v10

    .end local v10    # "byteCount":J
    .local v23, "byteCount":J
    int-to-long v10, v14

    aget v3, v3, v15

    int-to-long v2, v3

    mul-long/2addr v10, v2

    .line 4111
    .end local v23    # "byteCount":J
    .restart local v10    # "byteCount":J
    const-wide/16 v2, 0x0

    cmp-long v7, v10, v2

    if-ltz v7, :cond_a

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v10, v2

    if-lez v2, :cond_9

    goto :goto_2

    .line 4117
    :cond_9
    const/16 v20, 0x1

    move/from16 v2, v20

    goto :goto_5

    .line 4112
    :cond_a
    :goto_2
    if-eqz v12, :cond_b

    .line 4113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip the tag entry since the number of components is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4120
    :cond_b
    move/from16 v2, v20

    goto :goto_5

    .line 4105
    :cond_c
    move-wide/from16 v23, v10

    .line 4106
    .end local v10    # "byteCount":J
    .restart local v23    # "byteCount":J
    :goto_3
    if-eqz v12, :cond_d

    .line 4107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip the tag entry since data format is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4120
    .end local v23    # "byteCount":J
    .restart local v10    # "byteCount":J
    :cond_d
    :goto_4
    move/from16 v2, v20

    move-wide/from16 v10, v23

    .end local v20    # "valid":Z
    .local v2, "valid":Z
    :goto_5
    if-nez v2, :cond_e

    .line 4121
    invoke-virtual {v1, v8, v9}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4122
    move/from16 v24, v5

    const/4 v5, 0x2

    goto/16 :goto_d

    .line 4127
    :cond_e
    const-wide/16 v23, 0x4

    cmp-long v3, v10, v23

    const-string v7, "Compression"

    if-lez v3, :cond_16

    .line 4128
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v3

    .line 4129
    .local v3, "offset":I
    if-eqz v12, :cond_f

    .line 4130
    move/from16 v23, v2

    .end local v2    # "valid":Z
    .local v23, "valid":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v5

    .end local v5    # "i":S
    .local v24, "i":S
    const-string v5, "seek to data offset: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 4129
    .end local v23    # "valid":Z
    .end local v24    # "i":S
    .restart local v2    # "valid":Z
    .restart local v5    # "i":S
    :cond_f
    move/from16 v23, v2

    move/from16 v24, v5

    .line 4132
    .end local v2    # "valid":Z
    .end local v5    # "i":S
    .restart local v23    # "valid":Z
    .restart local v24    # "i":S
    :goto_6
    iget v2, v0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v5, 0x7

    if-ne v2, v5, :cond_12

    .line 4133
    iget-object v2, v4, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v5, "MakerNote"

    if-ne v2, v5, :cond_10

    .line 4135
    iput v3, v0, Landroid/media/ExifInterface;->mOrfMakerNoteOffset:I

    move/from16 v26, v13

    move/from16 v25, v14

    move/from16 v20, v15

    goto :goto_7

    .line 4136
    :cond_10
    const/4 v2, 0x6

    move/from16 v5, p2

    if-ne v5, v2, :cond_11

    iget-object v2, v4, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v5, "ThumbnailImage"

    if-ne v2, v5, :cond_11

    .line 4139
    iput v3, v0, Landroid/media/ExifInterface;->mOrfThumbnailOffset:I

    .line 4140
    iput v14, v0, Landroid/media/ExifInterface;->mOrfThumbnailLength:I

    .line 4142
    iget-object v2, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4143
    const/4 v5, 0x6

    invoke-static {v5, v2}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v2

    .line 4144
    .local v2, "compressionAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget v5, v0, Landroid/media/ExifInterface;->mOrfThumbnailOffset:I

    move/from16 v25, v14

    move/from16 v20, v15

    .end local v14    # "numberOfComponents":I
    .end local v15    # "dataFormat":I
    .local v20, "dataFormat":I
    .local v25, "numberOfComponents":I
    int-to-long v14, v5

    iget-object v5, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4145
    invoke-static {v14, v15, v5}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 4146
    .local v5, "jpegInterchangeFormatAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget v14, v0, Landroid/media/ExifInterface;->mOrfThumbnailLength:I

    int-to-long v14, v14

    move/from16 v26, v13

    .end local v13    # "tagNumber":I
    .local v26, "tagNumber":I
    iget-object v13, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4147
    invoke-static {v14, v15, v13}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 4149
    .local v13, "jpegInterchangeFormatLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v14, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v15, 0x4

    aget-object v14, v14, v15

    invoke-virtual {v14, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4150
    iget-object v14, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v14, v14, v15

    const-string v15, "JPEGInterchangeFormat"

    invoke-virtual {v14, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4152
    iget-object v14, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v15, 0x4

    aget-object v14, v14, v15

    const-string v15, "JPEGInterchangeFormatLength"

    invoke-virtual {v14, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4154
    .end local v2    # "compressionAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v5    # "jpegInterchangeFormatAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v13    # "jpegInterchangeFormatLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    goto :goto_7

    .line 4136
    .end local v20    # "dataFormat":I
    .end local v25    # "numberOfComponents":I
    .end local v26    # "tagNumber":I
    .local v13, "tagNumber":I
    .restart local v14    # "numberOfComponents":I
    .restart local v15    # "dataFormat":I
    :cond_11
    move/from16 v26, v13

    move/from16 v25, v14

    move/from16 v20, v15

    .end local v13    # "tagNumber":I
    .end local v14    # "numberOfComponents":I
    .end local v15    # "dataFormat":I
    .restart local v20    # "dataFormat":I
    .restart local v25    # "numberOfComponents":I
    .restart local v26    # "tagNumber":I
    goto :goto_7

    .line 4155
    .end local v20    # "dataFormat":I
    .end local v25    # "numberOfComponents":I
    .end local v26    # "tagNumber":I
    .restart local v13    # "tagNumber":I
    .restart local v14    # "numberOfComponents":I
    .restart local v15    # "dataFormat":I
    :cond_12
    move/from16 v26, v13

    move/from16 v25, v14

    move/from16 v20, v15

    .end local v13    # "tagNumber":I
    .end local v14    # "numberOfComponents":I
    .end local v15    # "dataFormat":I
    .restart local v20    # "dataFormat":I
    .restart local v25    # "numberOfComponents":I
    .restart local v26    # "tagNumber":I
    const/16 v5, 0xa

    if-ne v2, v5, :cond_13

    .line 4156
    iget-object v2, v4, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v5, "JpgFromRaw"

    if-ne v2, v5, :cond_13

    .line 4157
    iput v3, v0, Landroid/media/ExifInterface;->mRw2JpgFromRawOffset:I

    .line 4160
    :cond_13
    :goto_7
    int-to-long v13, v3

    add-long/2addr v13, v10

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v2

    move-object/from16 v27, v4

    .end local v4    # "tag":Landroid/media/ExifInterface$ExifTag;
    .local v27, "tag":Landroid/media/ExifInterface$ExifTag;
    int-to-long v4, v2

    cmp-long v2, v13, v4

    if-gtz v2, :cond_14

    .line 4161
    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_8

    .line 4164
    :cond_14
    if-eqz v12, :cond_15

    .line 4165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip the tag entry since data offset is invalid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4167
    :cond_15
    invoke-virtual {v1, v8, v9}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4168
    const/4 v5, 0x2

    goto/16 :goto_d

    .line 4127
    .end local v3    # "offset":I
    .end local v20    # "dataFormat":I
    .end local v23    # "valid":Z
    .end local v24    # "i":S
    .end local v25    # "numberOfComponents":I
    .end local v26    # "tagNumber":I
    .end local v27    # "tag":Landroid/media/ExifInterface$ExifTag;
    .local v2, "valid":Z
    .restart local v4    # "tag":Landroid/media/ExifInterface$ExifTag;
    .local v5, "i":S
    .restart local v13    # "tagNumber":I
    .restart local v14    # "numberOfComponents":I
    .restart local v15    # "dataFormat":I
    :cond_16
    move/from16 v23, v2

    move-object/from16 v27, v4

    move/from16 v24, v5

    move/from16 v26, v13

    move/from16 v25, v14

    move/from16 v20, v15

    .line 4173
    .end local v2    # "valid":Z
    .end local v4    # "tag":Landroid/media/ExifInterface$ExifTag;
    .end local v5    # "i":S
    .end local v13    # "tagNumber":I
    .end local v14    # "numberOfComponents":I
    .end local v15    # "dataFormat":I
    .restart local v20    # "dataFormat":I
    .restart local v23    # "valid":Z
    .restart local v24    # "i":S
    .restart local v25    # "numberOfComponents":I
    .restart local v26    # "tagNumber":I
    .restart local v27    # "tag":Landroid/media/ExifInterface$ExifTag;
    :goto_8
    sget-object v2, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 4174
    .local v2, "nextIfdType":Ljava/lang/Integer;
    if-eqz v12, :cond_17

    .line 4175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nextIfdType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " byteCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4178
    :cond_17
    if-eqz v2, :cond_1c

    .line 4179
    const-wide/16 v3, -0x1

    .line 4181
    .local v3, "offset":J
    sparse-switch v20, :sswitch_data_0

    goto :goto_9

    .line 4196
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v5

    int-to-long v3, v5

    .line 4197
    goto :goto_9

    .line 4187
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v5

    int-to-long v3, v5

    .line 4188
    goto :goto_9

    .line 4191
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v3

    .line 4192
    goto :goto_9

    .line 4183
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v5

    int-to-long v3, v5

    .line 4184
    nop

    .line 4204
    :goto_9
    if-eqz v12, :cond_18

    .line 4205
    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v7, v14

    move-object/from16 v13, v27

    .end local v27    # "tag":Landroid/media/ExifInterface$ExifTag;
    .local v13, "tag":Landroid/media/ExifInterface$ExifTag;
    iget-object v14, v13, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const/4 v15, 0x1

    aput-object v14, v7, v15

    const-string v14, "Offset: %d, tagName: %s"

    invoke-static {v14, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 4204
    .end local v13    # "tag":Landroid/media/ExifInterface$ExifTag;
    .restart local v27    # "tag":Landroid/media/ExifInterface$ExifTag;
    :cond_18
    move-object/from16 v13, v27

    const/4 v5, 0x2

    .line 4211
    .end local v27    # "tag":Landroid/media/ExifInterface$ExifTag;
    .restart local v13    # "tag":Landroid/media/ExifInterface$ExifTag;
    :goto_a
    const-wide/16 v14, 0x0

    cmp-long v7, v3, v14

    if-lez v7, :cond_1a

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v7

    int-to-long v14, v7

    cmp-long v7, v3, v14

    if-gez v7, :cond_1a

    .line 4212
    iget-object v7, v0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    long-to-int v14, v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_19

    .line 4213
    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4214
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v0, v1, v7}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_b

    .line 4216
    :cond_19
    if-eqz v12, :cond_1b

    .line 4217
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skip jump into the IFD since it has already been read: IfdType "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " (at "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ")"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 4222
    :cond_1a
    if-eqz v12, :cond_1b

    .line 4223
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skip jump into the IFD since its offset is invalid: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4227
    :cond_1b
    :goto_b
    invoke-virtual {v1, v8, v9}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4228
    goto/16 :goto_d

    .line 4231
    .end local v3    # "offset":J
    .end local v13    # "tag":Landroid/media/ExifInterface$ExifTag;
    .restart local v27    # "tag":Landroid/media/ExifInterface$ExifTag;
    :cond_1c
    move-object/from16 v13, v27

    const/4 v5, 0x2

    .end local v27    # "tag":Landroid/media/ExifInterface$ExifTag;
    .restart local v13    # "tag":Landroid/media/ExifInterface$ExifTag;
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v3

    iget v4, v0, Landroid/media/ExifInterface;->mExifOffset:I

    add-int/2addr v3, v4

    .line 4235
    .local v3, "bytesOffset":I
    long-to-int v4, v10

    if-ltz v4, :cond_21

    .line 4237
    long-to-int v4, v10

    new-array v4, v4, [B

    .line 4238
    .local v4, "bytes":[B
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 4239
    new-instance v12, Landroid/media/ExifInterface$ExifAttribute;

    int-to-long v14, v3

    const/16 v21, 0x0

    move-wide/from16 v17, v14

    move-object v14, v12

    move/from16 v27, v20

    .end local v20    # "dataFormat":I
    .local v27, "dataFormat":I
    move/from16 v15, v27

    move/from16 v16, v25

    move-object/from16 v19, v4

    move-object/from16 v20, v21

    invoke-direct/range {v14 .. v20}, Landroid/media/ExifInterface$ExifAttribute;-><init>(IIJ[BLandroid/media/ExifInterface$ExifAttribute-IA;)V

    .line 4241
    .local v12, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v14, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v14, v14, p2

    iget-object v15, v13, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v14, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4246
    iget-object v14, v13, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v15, "DNGVersion"

    if-ne v14, v15, :cond_1d

    .line 4247
    const/4 v14, 0x3

    iput v14, v0, Landroid/media/ExifInterface;->mMimeType:I

    .line 4253
    :cond_1d
    iget-object v14, v13, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v15, "Make"

    if-eq v14, v15, :cond_1e

    iget-object v14, v13, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v15, "Model"

    if-ne v14, v15, :cond_1f

    :cond_1e
    iget-object v14, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4254
    invoke-virtual {v12, v14}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "PENTAX"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_20

    :cond_1f
    iget-object v14, v13, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    if-ne v14, v7, :cond_22

    iget-object v7, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4256
    invoke-virtual {v12, v7}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v7

    const v14, 0xffff

    if-ne v7, v14, :cond_22

    .line 4257
    :cond_20
    const/16 v7, 0x8

    iput v7, v0, Landroid/media/ExifInterface;->mMimeType:I

    goto :goto_c

    .line 4235
    .end local v4    # "bytes":[B
    .end local v12    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v27    # "dataFormat":I
    .restart local v20    # "dataFormat":I
    :cond_21
    move/from16 v27, v20

    .line 4265
    .end local v20    # "dataFormat":I
    .restart local v27    # "dataFormat":I
    :cond_22
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v4

    int-to-long v14, v4

    cmp-long v4, v14, v8

    if-eqz v4, :cond_23

    .line 4266
    invoke-virtual {v1, v8, v9}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4083
    .end local v2    # "nextIfdType":Ljava/lang/Integer;
    .end local v3    # "bytesOffset":I
    .end local v8    # "nextEntryOffset":J
    .end local v10    # "byteCount":J
    .end local v13    # "tag":Landroid/media/ExifInterface$ExifTag;
    .end local v23    # "valid":Z
    .end local v25    # "numberOfComponents":I
    .end local v26    # "tagNumber":I
    .end local v27    # "dataFormat":I
    :cond_23
    :goto_d
    add-int/lit8 v2, v24, 0x1

    int-to-short v2, v2

    move v4, v5

    move/from16 v3, v22

    const/4 v7, 0x1

    move v5, v2

    move/from16 v2, p2

    .end local v24    # "i":S
    .local v2, "i":S
    goto/16 :goto_0

    .end local v2    # "i":S
    .end local v22    # "numberOfDirectoryEntry":S
    .local v3, "numberOfDirectoryEntry":S
    .restart local v5    # "i":S
    :cond_24
    move/from16 v22, v3

    move/from16 v24, v5

    .line 4270
    .end local v3    # "numberOfDirectoryEntry":S
    .end local v5    # "i":S
    .restart local v22    # "numberOfDirectoryEntry":S
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v2

    const/4 v3, 0x4

    add-int/2addr v2, v3

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v3

    if-gt v2, v3, :cond_29

    .line 4271
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    .line 4272
    .local v2, "nextIfdOffset":I
    sget-boolean v3, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v3, :cond_25

    .line 4273
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const-string v5, "nextIfdOffset: %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4278
    :cond_25
    int-to-long v4, v2

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-lez v4, :cond_28

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v4

    if-ge v2, v4, :cond_28

    .line 4279
    iget-object v4, v0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 4280
    int-to-long v3, v2

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4282
    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 4283
    invoke-direct {v0, v1, v4}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_e

    .line 4284
    :cond_26
    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 4285
    invoke-direct {v0, v1, v11}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_e

    .line 4288
    :cond_27
    if-eqz v3, :cond_29

    .line 4289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 4294
    :cond_28
    if-eqz v3, :cond_29

    .line 4295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop reading file since a wrong offset may cause an infinite loop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4300
    .end local v2    # "nextIfdOffset":I
    :cond_29
    :goto_e
    return-void

    .line 4064
    .end local v22    # "numberOfDirectoryEntry":S
    .restart local v3    # "numberOfDirectoryEntry":S
    :cond_2a
    move/from16 v22, v3

    .line 4067
    .end local v3    # "numberOfDirectoryEntry":S
    .restart local v22    # "numberOfDirectoryEntry":S
    :goto_f
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o removeAttribute(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 1968
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1969
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1968
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1971
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ifdType"    # I
    .param p2, "invalidTag"    # Ljava/lang/String;
    .param p3, "validTag"    # Ljava/lang/String;

    .line 5296
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5297
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5298
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    .line 5299
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5298
    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5300
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5303
    :cond_0
    return-void
.end method

.method private greylist-max-o retrieveJpegImageSize(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 4
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4311
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    .line 4312
    const-string v1, "ImageLength"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 4313
    .local v0, "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    .line 4314
    const-string v2, "ImageWidth"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 4316
    .local v1, "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 4318
    :cond_0
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    .line 4319
    const-string v3, "JPEGInterchangeFormat"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 4320
    .local v2, "jpegInterchangeFormatAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v2, :cond_1

    .line 4321
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4322
    invoke-virtual {v2, v3}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    .line 4325
    .local v3, "jpegInterchangeFormat":I
    invoke-direct {p0, p1, v3, p2}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 4328
    .end local v2    # "jpegInterchangeFormatAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v3    # "jpegInterchangeFormat":I
    :cond_1
    return-void
.end method

.method private greylist-max-o saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 13
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3542
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveJpegAttributes starting with (inputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3546
    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3547
    .local v0, "dataInputStream":Ljava/io/DataInputStream;
    new-instance v1, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, p2, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 3549
    .local v1, "dataOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    const-string v3, "Invalid marker"

    const/4 v4, -0x1

    if-ne v2, v4, :cond_c

    .line 3552
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3553
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    const/16 v5, -0x28

    if-ne v2, v5, :cond_b

    .line 3556
    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3561
    const/4 v2, 0x0

    .line 3562
    .local v2, "xmpAttribute":Landroid/media/ExifInterface$ExifAttribute;
    const-string v5, "Xmp"

    invoke-virtual {p0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Landroid/media/ExifInterface;->mXmpIsFromSeparateMarker:Z

    if-eqz v6, :cond_1

    .line 3563
    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v7

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 3567
    :cond_1
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3568
    const/16 v6, -0x1f

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3569
    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I

    .line 3572
    if-eqz v2, :cond_2

    .line 3573
    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v7

    invoke-virtual {v6, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3576
    :cond_2
    const/16 v5, 0x1000

    new-array v5, v5, [B

    .line 3579
    .local v5, "bytes":[B
    :goto_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 3580
    .local v6, "marker":B
    if-ne v6, v4, :cond_a

    .line 3583
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 3584
    const-string v8, "Invalid length"

    sparse-switch v6, :sswitch_data_0

    .line 3629
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3630
    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3631
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v9

    .line 3632
    .local v9, "length":I
    invoke-virtual {v1, v9}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 3633
    add-int/lit8 v9, v9, -0x2

    .line 3634
    if-ltz v9, :cond_9

    goto :goto_2

    .line 3586
    .end local v9    # "length":I
    :sswitch_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    .line 3587
    .restart local v9    # "length":I
    if-ltz v9, :cond_7

    .line 3590
    const/4 v10, 0x6

    new-array v11, v10, [B

    .line 3591
    .local v11, "identifier":[B
    if-lt v9, v10, :cond_5

    .line 3592
    invoke-virtual {v0, v11}, Ljava/io/DataInputStream;->read([B)I

    move-result v12

    if-ne v12, v10, :cond_4

    .line 3595
    sget-object v12, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v11, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 3597
    add-int/lit8 v10, v9, -0x6

    invoke-virtual {v0, v10}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v10

    add-int/lit8 v12, v9, -0x6

    if-ne v10, v12, :cond_3

    goto :goto_3

    .line 3598
    :cond_3
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3593
    :cond_4
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid exif"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3604
    :cond_5
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3605
    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3606
    add-int/lit8 v8, v9, 0x2

    invoke-virtual {v1, v8}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 3607
    if-lt v9, v10, :cond_6

    .line 3608
    add-int/lit8 v9, v9, -0x6

    .line 3609
    invoke-virtual {v1, v11}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3612
    :cond_6
    :goto_1
    if-lez v9, :cond_8

    array-length v8, v5

    .line 3613
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 3612
    invoke-virtual {v0, v5, v7, v8}, Ljava/io/DataInputStream;->read([BII)I

    move-result v8

    move v10, v8

    .local v10, "read":I
    if-ltz v8, :cond_8

    .line 3614
    invoke-virtual {v1, v5, v7, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    .line 3615
    sub-int/2addr v9, v10

    goto :goto_1

    .line 3588
    .end local v10    # "read":I
    .end local v11    # "identifier":[B
    :cond_7
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3621
    .end local v9    # "length":I
    :sswitch_1
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3622
    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3624
    invoke-static {v0, v1}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 3625
    return-void

    .line 3638
    .restart local v9    # "length":I
    :goto_2
    if-lez v9, :cond_8

    array-length v8, v5

    .line 3639
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 3638
    invoke-virtual {v0, v5, v7, v8}, Ljava/io/DataInputStream;->read([BII)I

    move-result v8

    move v10, v8

    .restart local v10    # "read":I
    if-ltz v8, :cond_8

    .line 3640
    invoke-virtual {v1, v5, v7, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    .line 3641
    sub-int/2addr v9, v10

    goto :goto_2

    .line 3646
    .end local v6    # "marker":B
    .end local v9    # "length":I
    .end local v10    # "read":I
    :cond_8
    :goto_3
    goto/16 :goto_0

    .line 3635
    .restart local v6    # "marker":B
    .restart local v9    # "length":I
    :cond_9
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3581
    .end local v9    # "length":I
    :cond_a
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3554
    .end local v2    # "xmpAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v5    # "bytes":[B
    .end local v6    # "marker":B
    :cond_b
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3550
    :cond_c
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x27 -> :sswitch_1
        -0x26 -> :sswitch_1
        -0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist savePngAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 9
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3651
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "savePngAttributes starting with (inputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3655
    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3656
    .local v0, "dataInputStream":Ljava/io/DataInputStream;
    new-instance v1, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, p2, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 3659
    .local v1, "dataOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    sget-object v2, Landroid/media/ExifInterface;->PNG_SIGNATURE:[B

    array-length v3, v2

    invoke-static {v0, v1, v3}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3666
    iget v3, p0, Landroid/media/ExifInterface;->mExifOffset:I

    const/4 v4, 0x4

    if-nez v3, :cond_1

    .line 3668
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 3669
    .local v2, "ihdrChunkLength":I
    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 3670
    add-int/lit8 v3, v2, 0x4

    add-int/2addr v3, v4

    invoke-static {v0, v1, v3}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3672
    .end local v2    # "ihdrChunkLength":I
    goto :goto_0

    .line 3674
    :cond_1
    array-length v2, v2

    sub-int/2addr v3, v2

    sub-int/2addr v3, v4

    sub-int/2addr v3, v4

    .line 3677
    .local v3, "copyLength":I
    invoke-static {v0, v1, v3}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3679
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 3680
    .local v2, "exifChunkLength":I
    add-int/lit8 v5, v2, 0x4

    add-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 3684
    .end local v2    # "exifChunkLength":I
    .end local v3    # "copyLength":I
    :goto_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3687
    .local v2, "exifByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v3, v2, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 3691
    .local v3, "exifDataOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    invoke-direct {p0, v3}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I

    .line 3692
    iget-object v5, v3, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    check-cast v5, Ljava/io/ByteArrayOutputStream;

    .line 3693
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 3695
    .local v5, "exifBytes":[B
    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3697
    new-instance v6, Ljava/util/zip/CRC32;

    invoke-direct {v6}, Ljava/util/zip/CRC32;-><init>()V

    .line 3698
    .local v6, "crc":Ljava/util/zip/CRC32;
    array-length v7, v5

    sub-int/2addr v7, v4

    invoke-virtual {v6, v5, v4, v7}, Ljava/util/zip/CRC32;->update([BII)V

    .line 3699
    invoke-virtual {v6}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    long-to-int v4, v7

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3700
    .end local v3    # "exifDataOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .end local v5    # "exifBytes":[B
    .end local v6    # "crc":Ljava/util/zip/CRC32;
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 3702
    .end local v2    # "exifByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0, v1}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 3703
    return-void

    .line 3684
    .restart local v2    # "exifByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v3

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
.end method

.method private blacklist saveWebpAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 20
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3739
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveWebpAttributes starting with (inputStream: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", outputStream: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ExifInterface"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3743
    :cond_0
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v2, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    move-object v4, v0

    .line 3745
    .local v4, "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v3, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    move-object v5, v0

    .line 3749
    .local v5, "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    sget-object v0, Landroid/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v6, v0

    invoke-static {v4, v5, v6}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3751
    sget-object v6, Landroid/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v7, v6

    const/4 v8, 0x4

    add-int/2addr v7, v8

    invoke-virtual {v4, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3754
    const/4 v7, 0x0

    .line 3756
    .local v7, "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v7, v9

    .line 3757
    new-instance v9, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v9, v7, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 3761
    .local v9, "nonHeaderOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    iget v10, v1, Landroid/media/ExifInterface;->mExifOffset:I

    if-eqz v10, :cond_1

    .line 3764
    array-length v0, v0

    add-int/2addr v0, v8

    array-length v6, v6

    add-int/2addr v0, v6

    .line 3766
    .local v0, "bytesRead":I
    sub-int/2addr v10, v0

    sub-int/2addr v10, v8

    sub-int/2addr v10, v8

    invoke-static {v4, v9, v10}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3771
    invoke-virtual {v4, v8}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3772
    invoke-virtual {v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    .line 3773
    .local v6, "exifChunkLength":I
    invoke-virtual {v4, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3776
    invoke-direct {v1, v9}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I

    .line 3777
    .end local v0    # "bytesRead":I
    .end local v6    # "exifChunkLength":I
    goto/16 :goto_6

    .line 3779
    :cond_1
    new-array v0, v8, [B

    .line 3780
    .local v0, "firstChunkType":[B
    invoke-virtual {v4, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v6

    array-length v10, v0

    if-ne v6, v10, :cond_10

    .line 3785
    sget-object v6, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8X:[B

    invoke-static {v0, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v10, :cond_6

    .line 3787
    invoke-virtual {v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v10

    .line 3789
    .local v10, "size":I
    rem-int/lit8 v14, v10, 0x2

    if-ne v14, v13, :cond_2

    add-int/lit8 v14, v10, 0x1

    goto :goto_0

    :cond_2
    move v14, v10

    :goto_0
    new-array v14, v14, [B

    .line 3790
    .local v14, "data":[B
    invoke-virtual {v4, v14}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 3793
    aget-byte v15, v14, v12

    or-int/2addr v11, v15

    int-to-byte v11, v11

    aput-byte v11, v14, v12

    .line 3796
    aget-byte v11, v14, v12

    shr-int/2addr v11, v13

    and-int/2addr v11, v13

    if-ne v11, v13, :cond_3

    move v12, v13

    :cond_3
    move v11, v12

    .line 3799
    .local v11, "containsAnimation":Z
    invoke-virtual {v9, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3800
    invoke-virtual {v9, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 3801
    invoke-virtual {v9, v14}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3810
    if-eqz v11, :cond_5

    .line 3811
    sget-object v6, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_ANIM:[B

    const/4 v12, 0x0

    invoke-direct {v1, v4, v9, v6, v12}, Landroid/media/ExifInterface;->copyChunksUpToGivenChunkType(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Landroid/media/ExifInterface$ByteOrderedDataOutputStream;[B[B)V

    .line 3815
    :goto_1
    new-array v6, v8, [B

    .line 3816
    .local v6, "type":[B
    invoke-virtual {v2, v6}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .line 3817
    .local v12, "read":I
    sget-object v13, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_ANMF:[B

    invoke-static {v6, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v13

    if-nez v13, :cond_4

    .line 3819
    invoke-direct {v1, v9}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I

    .line 3820
    goto :goto_2

    .line 3822
    :cond_4
    invoke-direct {v1, v4, v9, v6}, Landroid/media/ExifInterface;->copyWebPChunk(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Landroid/media/ExifInterface$ByteOrderedDataOutputStream;[B)V

    .line 3823
    .end local v6    # "type":[B
    .end local v12    # "read":I
    goto :goto_1

    .line 3826
    :cond_5
    sget-object v6, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    sget-object v8, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-direct {v1, v4, v9, v6, v8}, Landroid/media/ExifInterface;->copyChunksUpToGivenChunkType(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Landroid/media/ExifInterface$ByteOrderedDataOutputStream;[B[B)V

    .line 3828
    invoke-direct {v1, v9}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I

    .line 3830
    .end local v10    # "size":I
    .end local v11    # "containsAnimation":Z
    .end local v14    # "data":[B
    :goto_2
    goto/16 :goto_6

    :cond_6
    sget-object v10, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    invoke-static {v0, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    if-nez v14, :cond_7

    sget-object v14, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    .line 3831
    invoke-static {v0, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 3832
    :cond_7
    invoke-virtual {v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v14

    .line 3833
    .local v14, "size":I
    move v15, v14

    .line 3835
    .local v15, "bytesToRead":I
    rem-int/lit8 v11, v14, 0x2

    if-ne v11, v13, :cond_8

    .line 3836
    add-int/lit8 v15, v15, 0x1

    .line 3840
    :cond_8
    const/4 v11, 0x0

    .line 3841
    .local v11, "widthAndHeight":I
    const/16 v16, 0x0

    .line 3842
    .local v16, "width":I
    const/16 v17, 0x0

    .line 3843
    .local v17, "height":I
    const/16 v18, 0x0

    .line 3845
    .local v18, "alpha":I
    const/4 v12, 0x3

    new-array v13, v12, [B

    .line 3847
    .local v13, "vp8Frame":[B
    invoke-static {v0, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 3848
    invoke-virtual {v4, v13}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 3851
    new-array v12, v12, [B

    .line 3852
    .local v12, "vp8Signature":[B
    invoke-virtual {v4, v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v8

    array-length v2, v12

    if-ne v8, v2, :cond_9

    sget-object v2, Landroid/media/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    .line 3853
    invoke-static {v2, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3859
    invoke-virtual {v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    move v11, v2

    .line 3860
    shl-int/lit8 v2, v11, 0x12

    shr-int/lit8 v16, v2, 0x12

    .line 3861
    shl-int/lit8 v2, v11, 0x2

    shr-int/lit8 v17, v2, 0x12

    .line 3862
    array-length v2, v13

    array-length v8, v12

    add-int/2addr v2, v8

    const/4 v8, 0x4

    add-int/2addr v2, v8

    sub-int/2addr v15, v2

    .end local v12    # "vp8Signature":[B
    goto :goto_3

    .line 3854
    .restart local v12    # "vp8Signature":[B
    :cond_9
    new-instance v2, Ljava/io/IOException;

    const-string v6, "Encountered error while checking VP8 signature"

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .end local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "outputStream":Ljava/io/OutputStream;
    throw v2

    .line 3863
    .end local v12    # "vp8Signature":[B
    .restart local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .restart local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "outputStream":Ljava/io/OutputStream;
    :cond_a
    sget-object v2, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3865
    invoke-virtual {v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v2

    .line 3866
    .local v2, "vp8lSignature":B
    const/16 v8, 0x2f

    if-ne v2, v8, :cond_b

    .line 3872
    invoke-virtual {v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v8

    move v11, v8

    .line 3875
    shl-int/lit8 v8, v11, 0x12

    shr-int/lit8 v8, v8, 0x12

    const/4 v12, 0x1

    add-int/lit8 v16, v8, 0x1

    .line 3876
    shl-int/lit8 v8, v11, 0x4

    shr-int/lit8 v8, v8, 0x12

    add-int/lit8 v17, v8, 0x1

    .line 3878
    and-int/lit8 v18, v11, 0x8

    .line 3879
    add-int/lit8 v15, v15, -0x5

    goto :goto_4

    .line 3867
    :cond_b
    new-instance v6, Ljava/io/IOException;

    const-string v8, "Encountered error while checking VP8L signature"

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .end local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "outputStream":Ljava/io/OutputStream;
    throw v6

    .line 3863
    .end local v2    # "vp8lSignature":B
    .restart local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .restart local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "outputStream":Ljava/io/OutputStream;
    :cond_c
    :goto_3
    nop

    .line 3883
    :goto_4
    invoke-virtual {v9, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3884
    const/16 v2, 0xa

    invoke-virtual {v9, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 3885
    new-array v2, v2, [B

    .line 3887
    .local v2, "data":[B
    const/4 v6, 0x0

    aget-byte v8, v2, v6

    const/16 v12, 0x8

    or-int/2addr v8, v12

    int-to-byte v8, v8

    aput-byte v8, v2, v6

    .line 3889
    aget-byte v8, v2, v6

    shl-int/lit8 v12, v18, 0x4

    or-int/2addr v8, v12

    int-to-byte v8, v8

    aput-byte v8, v2, v6

    .line 3891
    add-int/lit8 v6, v16, -0x1

    .line 3892
    .end local v16    # "width":I
    .local v6, "width":I
    add-int/lit8 v8, v17, -0x1

    .line 3893
    .end local v17    # "height":I
    .local v8, "height":I
    int-to-byte v12, v6

    const/16 v16, 0x4

    aput-byte v12, v2, v16

    .line 3894
    const/4 v12, 0x5

    shr-int/lit8 v3, v6, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v12

    .line 3895
    const/4 v3, 0x6

    shr-int/lit8 v12, v6, 0x10

    int-to-byte v12, v12

    aput-byte v12, v2, v3

    .line 3896
    const/4 v3, 0x7

    int-to-byte v12, v8

    aput-byte v12, v2, v3

    .line 3897
    shr-int/lit8 v3, v8, 0x8

    int-to-byte v3, v3

    const/16 v12, 0x8

    aput-byte v3, v2, v12

    .line 3898
    const/16 v3, 0x9

    shr-int/lit8 v12, v8, 0x10

    int-to-byte v12, v12

    aput-byte v12, v2, v3

    .line 3899
    invoke-virtual {v9, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3902
    invoke-virtual {v9, v0}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3903
    invoke-virtual {v9, v14}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 3904
    invoke-static {v0, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3905
    invoke-virtual {v9, v13}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3906
    sget-object v3, Landroid/media/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    invoke-virtual {v9, v3}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3907
    invoke-virtual {v9, v11}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    goto :goto_5

    .line 3908
    :cond_d
    sget-object v3, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 3909
    const/16 v3, 0x2f

    invoke-virtual {v9, v3}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write(I)V

    .line 3910
    invoke-virtual {v9, v11}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 3912
    :cond_e
    :goto_5
    invoke-static {v4, v9, v15}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3915
    invoke-direct {v1, v9}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I

    .line 3920
    .end local v0    # "firstChunkType":[B
    .end local v2    # "data":[B
    .end local v6    # "width":I
    .end local v8    # "height":I
    .end local v11    # "widthAndHeight":I
    .end local v13    # "vp8Frame":[B
    .end local v14    # "size":I
    .end local v15    # "bytesToRead":I
    .end local v18    # "alpha":I
    :cond_f
    :goto_6
    invoke-static {v4, v9}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 3923
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    sget-object v2, Landroid/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v3, v2

    add-int/2addr v0, v3

    invoke-virtual {v5, v0}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 3925
    invoke-virtual {v5, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3926
    invoke-virtual {v7, v5}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3930
    .end local v9    # "nonHeaderOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    invoke-static {v7}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 3931
    nop

    .line 3932
    return-void

    .line 3781
    .restart local v0    # "firstChunkType":[B
    .restart local v9    # "nonHeaderOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    :cond_10
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Encountered invalid length while parsing WebP chunk type"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .end local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "outputStream":Ljava/io/OutputStream;
    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3930
    .end local v0    # "firstChunkType":[B
    .end local v9    # "nonHeaderOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .restart local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .restart local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 3927
    :catch_0
    move-exception v0

    .line 3928
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to save WebP file"

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .end local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "outputStream":Ljava/io/OutputStream;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3930
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .restart local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "outputStream":Ljava/io/OutputStream;
    :goto_7
    invoke-static {v7}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 3931
    throw v0
.end method

.method private greylist-max-o setThumbnailData(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 3
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4332
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 4334
    .local v0, "thumbnailData":Ljava/util/HashMap;
    nop

    .line 4335
    const-string v1, "Compression"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 4336
    .local v1, "compressionAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_1

    .line 4337
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    iput v2, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    .line 4338
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 4340
    :sswitch_0
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->handleThumbnailFromJfif(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    .line 4341
    goto :goto_0

    .line 4345
    :sswitch_1
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isSupportedDataType(Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4346
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->handleThumbnailFromStrips(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    :cond_0
    :goto_0
    goto :goto_1

    .line 4353
    :cond_1
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->handleThumbnailFromJfif(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    .line 4355
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method private greylist-max-o swapBasedOnImageSize(II)V
    .locals 11
    .param p1, "firstIfdType"    # I
    .param p2, "secondIfdType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5256
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string v1, "ExifInterface"

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 5263
    :cond_0
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    .line 5264
    const-string v2, "ImageLength"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 5265
    .local v0, "firstImageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p1

    .line 5266
    const-string v4, "ImageWidth"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 5267
    .local v3, "firstImageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    .line 5268
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 5269
    .local v2, "secondImageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    .line 5270
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 5272
    .local v4, "secondImageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_4

    if-nez v3, :cond_1

    goto :goto_1

    .line 5276
    :cond_1
    if-eqz v2, :cond_3

    if-nez v4, :cond_2

    goto :goto_0

    .line 5281
    :cond_2
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 5282
    .local v1, "firstImageLengthValue":I
    iget-object v5, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v5}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v5

    .line 5283
    .local v5, "firstImageWidthValue":I
    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v6}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v6

    .line 5284
    .local v6, "secondImageLengthValue":I
    iget-object v7, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v7}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v7

    .line 5286
    .local v7, "secondImageWidthValue":I
    if-ge v1, v6, :cond_5

    if-ge v5, v7, :cond_5

    .line 5288
    iget-object v8, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v8, p1

    .line 5289
    .local v9, "tempMap":Ljava/util/HashMap;
    aget-object v10, v8, p2

    aput-object v10, v8, p1

    .line 5290
    aput-object v9, v8, p2

    goto :goto_2

    .line 5277
    .end local v1    # "firstImageLengthValue":I
    .end local v5    # "firstImageWidthValue":I
    .end local v6    # "secondImageLengthValue":I
    .end local v7    # "secondImageWidthValue":I
    .end local v9    # "tempMap":Ljava/util/HashMap;
    :cond_3
    :goto_0
    sget-boolean v5, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 5278
    const-string v5, "Second image does not contain valid size information"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 5273
    :cond_4
    :goto_1
    sget-boolean v5, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 5274
    const-string v5, "First image does not contain valid size information"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5293
    :cond_5
    :goto_2
    return-void

    .line 5257
    .end local v0    # "firstImageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v2    # "secondImageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v3    # "firstImageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v4    # "secondImageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_6
    :goto_3
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 5258
    const-string v0, "Cannot perform swap since only one image data exists"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5260
    :cond_7
    return-void
.end method

.method private greylist-max-o updateAttribute(Ljava/lang/String;Landroid/media/ExifInterface$ExifAttribute;)Z
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/media/ExifInterface$ExifAttribute;

    .line 1952
    const/4 v0, 0x0

    .line 1953
    .local v0, "updated":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1954
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1955
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1956
    const/4 v0, 0x1

    .line 1953
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1959
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private greylist-max-o updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 17
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4586
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    .line 4587
    const-string v2, "DefaultCropSize"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 4589
    .local v1, "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v2, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    .line 4590
    const-string v3, "SensorTopBorder"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 4591
    .local v2, "topBorderAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    .line 4592
    const-string v4, "SensorLeftBorder"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 4593
    .local v3, "leftBorderAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    .line 4594
    const-string v5, "SensorBottomBorder"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 4595
    .local v4, "bottomBorderAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v5, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    .line 4596
    const-string v6, "SensorRightBorder"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/ExifInterface$ExifAttribute;

    .line 4598
    .local v5, "rightBorderAttribute":Landroid/media/ExifInterface$ExifAttribute;
    const-string v6, "ImageLength"

    const-string v7, "ImageWidth"

    if-eqz v1, :cond_1

    .line 4601
    iget v8, v1, Landroid/media/ExifInterface$ExifAttribute;->format:I

    const/4 v9, 0x5

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ne v8, v9, :cond_0

    .line 4602
    iget-object v8, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4603
    invoke-static {v1, v8}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/media/ExifInterface$Rational;

    .line 4604
    .local v8, "defaultCropSizeValue":[Landroid/media/ExifInterface$Rational;
    aget-object v9, v8, v11

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4605
    invoke-static {v9, v11}, Landroid/media/ExifInterface$ExifAttribute;->createURational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 4606
    .local v9, "defaultCropSizeXAttribute":Landroid/media/ExifInterface$ExifAttribute;
    aget-object v10, v8, v10

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4607
    invoke-static {v10, v11}, Landroid/media/ExifInterface$ExifAttribute;->createURational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 4608
    .local v8, "defaultCropSizeYAttribute":Landroid/media/ExifInterface$ExifAttribute;
    goto :goto_0

    .line 4609
    .end local v8    # "defaultCropSizeYAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v9    # "defaultCropSizeXAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_0
    iget-object v8, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4610
    invoke-static {v1, v8}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 4611
    .local v8, "defaultCropSizeValue":[I
    aget v9, v8, v11

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4612
    invoke-static {v9, v11}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 4613
    .restart local v9    # "defaultCropSizeXAttribute":Landroid/media/ExifInterface$ExifAttribute;
    aget v10, v8, v10

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4614
    invoke-static {v10, v11}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v10

    move-object v8, v10

    .line 4616
    .local v8, "defaultCropSizeYAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :goto_0
    iget-object v10, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, p2

    invoke-virtual {v10, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4617
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, p2

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4618
    .end local v8    # "defaultCropSizeYAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v9    # "defaultCropSizeXAttribute":Landroid/media/ExifInterface$ExifAttribute;
    move-object/from16 v16, v1

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 4621
    iget-object v8, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v8}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v8

    .line 4622
    .local v8, "topBorderValue":I
    iget-object v9, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v9}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v9

    .line 4623
    .local v9, "bottomBorderValue":I
    iget-object v10, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v10}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v10

    .line 4624
    .local v10, "rightBorderValue":I
    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v11}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v11

    .line 4625
    .local v11, "leftBorderValue":I
    if-le v9, v8, :cond_2

    if-le v10, v11, :cond_2

    .line 4626
    sub-int v12, v9, v8

    .line 4627
    .local v12, "length":I
    sub-int v13, v10, v11

    .line 4628
    .local v13, "width":I
    iget-object v14, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4629
    invoke-static {v12, v14}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v14

    .line 4630
    .local v14, "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v15, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4631
    invoke-static {v13, v15}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v15

    .line 4632
    .local v15, "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    move-object/from16 v16, v1

    .end local v1    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .local v16, "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v1, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4633
    iget-object v1, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4625
    .end local v12    # "length":I
    .end local v13    # "width":I
    .end local v14    # "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v15    # "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v16    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v1    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_2
    move-object/from16 v16, v1

    .line 4635
    .end local v1    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v8    # "topBorderValue":I
    .end local v9    # "bottomBorderValue":I
    .end local v10    # "rightBorderValue":I
    .end local v11    # "leftBorderValue":I
    .restart local v16    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :goto_1
    goto :goto_2

    .line 4618
    .end local v16    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v1    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_3
    move-object/from16 v16, v1

    .line 4636
    .end local v1    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v16    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    invoke-direct/range {p0 .. p2}, Landroid/media/ExifInterface;->retrieveJpegImageSize(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 4638
    :goto_2
    return-void
.end method

.method private blacklist validateImages()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4530
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Landroid/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 4531
    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Landroid/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 4532
    invoke-direct {p0, v1, v2}, Landroid/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 4538
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    .line 4539
    const-string v5, "PixelXDimension"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 4540
    .local v3, "pixelXDimAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v5, v4

    .line 4541
    const-string v5, "PixelYDimension"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 4542
    .local v4, "pixelYDimAttribute":Landroid/media/ExifInterface$ExifAttribute;
    const-string v5, "ImageLength"

    const-string v6, "ImageWidth"

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 4543
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v0

    invoke-virtual {v7, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4544
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v0

    invoke-virtual {v7, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4549
    :cond_0
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4550
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v1

    invoke-direct {p0, v7}, Landroid/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4551
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v7, v1

    aput-object v8, v7, v2

    .line 4552
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    aput-object v8, v7, v1

    .line 4557
    :cond_1
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v2

    invoke-direct {p0, v7}, Landroid/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 4558
    const-string v7, "ExifInterface"

    const-string v8, "No image meets the size requirements of a thumbnail image."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4562
    :cond_2
    const-string v7, "ThumbnailOrientation"

    const-string v8, "Orientation"

    invoke-direct {p0, v0, v7, v8}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4563
    const-string v9, "ThumbnailImageLength"

    invoke-direct {p0, v0, v9, v5}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4564
    const-string v10, "ThumbnailImageWidth"

    invoke-direct {p0, v0, v10, v6}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4565
    invoke-direct {p0, v1, v7, v8}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4566
    invoke-direct {p0, v1, v9, v5}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4567
    invoke-direct {p0, v1, v10, v6}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4568
    invoke-direct {p0, v2, v8, v7}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4569
    invoke-direct {p0, v2, v5, v9}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4570
    invoke-direct {p0, v2, v6, v10}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4571
    return-void
.end method

.method private blacklist writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I
    .locals 17
    .param p1, "dataOutputStream"    # Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4643
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v3, v2

    new-array v3, v3, [I

    .line 4644
    .local v3, "ifdOffsets":[I
    array-length v2, v2

    new-array v2, v2, [I

    .line 4647
    .local v2, "ifdDataSizes":[I
    sget-object v4, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    array-length v5, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_0

    aget-object v8, v4, v7

    .line 4648
    .local v8, "tag":Landroid/media/ExifInterface$ExifTag;
    iget-object v9, v8, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-direct {v0, v9}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 4647
    .end local v8    # "tag":Landroid/media/ExifInterface$ExifTag;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 4651
    :cond_0
    iget-boolean v4, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const-string v5, "StripByteCounts"

    const-string v7, "JPEGInterchangeFormatLength"

    const-string v8, "StripOffsets"

    const-string v9, "JPEGInterchangeFormat"

    if-eqz v4, :cond_2

    .line 4652
    iget-boolean v4, v0, Landroid/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v4, :cond_1

    .line 4653
    invoke-direct {v0, v8}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 4654
    invoke-direct {v0, v5}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    goto :goto_1

    .line 4656
    :cond_1
    invoke-direct {v0, v9}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 4657
    invoke-direct {v0, v7}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 4662
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .local v4, "ifdType":I
    :goto_2
    sget-object v10, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v10, v10

    if-ge v4, v10, :cond_5

    .line 4663
    iget-object v10, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, v4

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_4

    aget-object v13, v10, v12

    .line 4664
    .local v13, "obj":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Ljava/util/Map$Entry;

    .line 4665
    .local v14, "entry":Ljava/util/Map$Entry;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_3

    .line 4666
    iget-object v15, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v15, v15, v4

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4663
    .end local v13    # "obj":Ljava/lang/Object;
    .end local v14    # "entry":Ljava/util/Map$Entry;
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 4662
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4673
    .end local v4    # "ifdType":I
    :cond_5
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    const-wide/16 v10, 0x0

    if-nez v4, :cond_6

    .line 4674
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v12, 0x0

    aget-object v4, v4, v12

    sget-object v12, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v12, v12, v6

    iget-object v12, v12, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v13, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4675
    invoke-static {v10, v11, v13}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 4674
    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4677
    :cond_6
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v12, 0x2

    aget-object v4, v4, v12

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 4678
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x0

    aget-object v4, v4, v13

    sget-object v13, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v13, v13, v12

    iget-object v13, v13, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v14, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4679
    invoke-static {v10, v11, v14}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v14

    .line 4678
    invoke-virtual {v4, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4681
    :cond_7
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x3

    aget-object v4, v4, v13

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 4682
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v6

    sget-object v14, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v14, v14, v13

    iget-object v14, v14, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v15, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4683
    invoke-static {v10, v11, v15}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v15

    .line 4682
    invoke-virtual {v4, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4685
    :cond_8
    iget-boolean v4, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const/4 v14, 0x4

    if-eqz v4, :cond_a

    .line 4686
    iget-boolean v4, v0, Landroid/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v4, :cond_9

    .line 4687
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v14

    iget-object v7, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4688
    const/4 v15, 0x0

    invoke-static {v15, v7}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 4687
    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4689
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v14

    iget v7, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    iget-object v15, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4690
    invoke-static {v7, v15}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 4689
    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 4692
    :cond_9
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v14

    iget-object v5, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4693
    invoke-static {v10, v11, v5}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 4692
    invoke-virtual {v4, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4694
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v14

    iget v5, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    int-to-long v10, v5

    iget-object v5, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4695
    invoke-static {v10, v11, v5}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 4694
    invoke-virtual {v4, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4701
    :cond_a
    :goto_4
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    sget-object v5, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v5, v5

    if-ge v4, v5, :cond_d

    .line 4702
    const/4 v5, 0x0

    .line 4703
    .local v5, "sum":I
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 4704
    .local v10, "entry":Ljava/util/Map$Entry;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/ExifInterface$ExifAttribute;

    .line 4705
    .local v11, "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    invoke-virtual {v11}, Landroid/media/ExifInterface$ExifAttribute;->size()I

    move-result v15

    .line 4706
    .local v15, "size":I
    if-le v15, v14, :cond_b

    .line 4707
    add-int/2addr v5, v15

    .line 4709
    .end local v10    # "entry":Ljava/util/Map$Entry;
    .end local v11    # "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v15    # "size":I
    :cond_b
    goto :goto_6

    .line 4710
    :cond_c
    aget v7, v2, v4

    add-int/2addr v7, v5

    aput v7, v2, v4

    .line 4701
    .end local v5    # "sum":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 4716
    .end local v4    # "i":I
    :cond_d
    const/16 v4, 0x8

    .line 4717
    .local v4, "position":I
    const/4 v5, 0x0

    .local v5, "ifdType":I
    :goto_7
    sget-object v7, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v7, v7

    if-ge v5, v7, :cond_f

    .line 4718
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    .line 4719
    aput v4, v3, v5

    .line 4720
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    mul-int/lit8 v7, v7, 0xc

    add-int/2addr v7, v12

    add-int/2addr v7, v14

    aget v10, v2, v5

    add-int/2addr v7, v10

    add-int/2addr v4, v7

    .line 4717
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 4723
    .end local v5    # "ifdType":I
    :cond_f
    iget-boolean v5, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v5, :cond_11

    .line 4724
    move v5, v4

    .line 4725
    .local v5, "thumbnailOffset":I
    iget-boolean v7, v0, Landroid/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v7, :cond_10

    .line 4726
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v14

    iget-object v9, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4727
    invoke-static {v5, v9}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 4726
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 4729
    :cond_10
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v14

    int-to-long v10, v5

    iget-object v8, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4730
    invoke-static {v10, v11, v8}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 4729
    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4733
    :goto_8
    iget v7, v0, Landroid/media/ExifInterface;->mExifOffset:I

    add-int/2addr v7, v5

    iput v7, v0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    .line 4734
    iget v7, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    add-int/2addr v4, v7

    .line 4737
    .end local v5    # "thumbnailOffset":I
    :cond_11
    move v5, v4

    .line 4738
    .local v5, "totalSize":I
    iget v7, v0, Landroid/media/ExifInterface;->mMimeType:I

    if-ne v7, v14, :cond_12

    .line 4740
    add-int/lit8 v5, v5, 0x8

    .line 4742
    :cond_12
    sget-boolean v7, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v7, :cond_13

    .line 4743
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_9
    sget-object v8, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v8, v8

    if-ge v7, v8, :cond_13

    .line 4744
    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    .line 4745
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    aget v9, v3, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    iget-object v9, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    aget v9, v2, v7

    .line 4746
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v14

    .line 4744
    const-string v9, "index: %d, offsets: %d, tag count: %d, data sizes: %d, total size: %d"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ExifInterface"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4743
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 4751
    .end local v7    # "i":I
    :cond_13
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_14

    .line 4752
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    sget-object v8, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v8, v8, v6

    iget-object v8, v8, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v9, v3, v6

    int-to-long v9, v9

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4753
    invoke-static {v9, v10, v11}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 4752
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4755
    :cond_14
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v12

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_15

    .line 4756
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    sget-object v8, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v8, v8, v12

    iget-object v8, v8, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v9, v3, v12

    int-to-long v9, v9

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4757
    invoke-static {v9, v10, v11}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 4756
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4759
    :cond_15
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v13

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_16

    .line 4760
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    sget-object v8, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v8, v8, v13

    iget-object v8, v8, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v9, v3, v13

    int-to-long v9, v9

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v9, v10, v11}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4764
    :cond_16
    iget v7, v0, Landroid/media/ExifInterface;->mMimeType:I

    sparse-switch v7, :sswitch_data_0

    goto :goto_a

    .line 4777
    :sswitch_0
    sget-object v7, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 4778
    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    goto :goto_a

    .line 4772
    :sswitch_1
    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 4773
    sget-object v7, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 4774
    goto :goto_a

    .line 4767
    :sswitch_2
    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 4768
    sget-object v7, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 4769
    nop

    .line 4783
    :goto_a
    iget-object v7, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v7, v8, :cond_17

    .line 4784
    const/16 v7, 0x4d4d

    goto :goto_b

    :cond_17
    const/16 v7, 0x4949

    .line 4783
    :goto_b
    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeShort(S)V

    .line 4785
    iget-object v7, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 4786
    const/16 v7, 0x2a

    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 4787
    const-wide/16 v7, 0x8

    invoke-virtual {v1, v7, v8}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 4790
    const/4 v7, 0x0

    .local v7, "ifdType":I
    :goto_c
    sget-object v8, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v8, v8

    if-ge v7, v8, :cond_1f

    .line 4791
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1d

    .line 4794
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 4797
    aget v8, v3, v7

    add-int/2addr v8, v12

    iget-object v9, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    mul-int/lit8 v9, v9, 0xc

    add-int/2addr v8, v9

    add-int/2addr v8, v14

    .line 4798
    .local v8, "dataOffset":I
    iget-object v9, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 4800
    .restart local v10    # "entry":Ljava/util/Map$Entry;
    sget-object v11, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v11, v11, v7

    .line 4801
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/ExifInterface$ExifTag;

    .line 4802
    .local v11, "tag":Landroid/media/ExifInterface$ExifTag;
    iget v13, v11, Landroid/media/ExifInterface$ExifTag;->number:I

    .line 4803
    .local v13, "tagNumber":I
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/ExifInterface$ExifAttribute;

    .line 4804
    .local v15, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    invoke-virtual {v15}, Landroid/media/ExifInterface$ExifAttribute;->size()I

    move-result v12

    .line 4806
    .local v12, "size":I
    invoke-virtual {v1, v13}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 4807
    iget v6, v15, Landroid/media/ExifInterface$ExifAttribute;->format:I

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 4808
    iget v6, v15, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 4809
    if-le v12, v14, :cond_18

    .line 4810
    move-object/from16 v16, v15

    .end local v15    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .local v16, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    int-to-long v14, v8

    invoke-virtual {v1, v14, v15}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 4811
    add-int/2addr v8, v12

    goto :goto_f

    .line 4813
    .end local v16    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v15    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_18
    move-object/from16 v16, v15

    .end local v15    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v16    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    move-object/from16 v14, v16

    .end local v16    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .local v14, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v15, v14, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-virtual {v1, v15}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 4815
    const/4 v6, 0x4

    if-ge v12, v6, :cond_19

    .line 4816
    move v15, v12

    .local v15, "i":I
    :goto_e
    if-ge v15, v6, :cond_19

    .line 4817
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 4816
    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x4

    goto :goto_e

    .line 4821
    .end local v10    # "entry":Ljava/util/Map$Entry;
    .end local v11    # "tag":Landroid/media/ExifInterface$ExifTag;
    .end local v12    # "size":I
    .end local v13    # "tagNumber":I
    .end local v14    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v15    # "i":I
    :cond_19
    :goto_f
    const/4 v6, 0x1

    const/4 v12, 0x2

    const/4 v14, 0x4

    goto :goto_d

    .line 4826
    :cond_1a
    if-nez v7, :cond_1b

    iget-object v6, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v9, 0x4

    aget-object v6, v6, v9

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1b

    .line 4827
    aget v10, v3, v9

    int-to-long v9, v10

    invoke-virtual {v1, v9, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    const-wide/16 v9, 0x0

    goto :goto_10

    .line 4829
    :cond_1b
    const-wide/16 v9, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 4833
    :goto_10
    iget-object v11, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v11, v11, v7

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_11
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 4834
    .local v12, "entry":Ljava/util/Map$Entry;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/ExifInterface$ExifAttribute;

    .line 4836
    .local v13, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v14, v13, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v14, v14

    const/4 v6, 0x4

    if-le v14, v6, :cond_1c

    .line 4837
    iget-object v14, v13, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    iget-object v15, v13, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v15, v15

    const/4 v6, 0x0

    invoke-virtual {v1, v14, v6, v15}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    .line 4839
    .end local v12    # "entry":Ljava/util/Map$Entry;
    .end local v13    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_1c
    goto :goto_11

    .line 4791
    .end local v8    # "dataOffset":I
    :cond_1d
    const-wide/16 v9, 0x0

    .line 4790
    :cond_1e
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x1

    const/4 v12, 0x2

    const/4 v14, 0x4

    goto/16 :goto_c

    .line 4844
    .end local v7    # "ifdType":I
    :cond_1f
    iget-boolean v6, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v6, :cond_20

    .line 4845
    invoke-virtual/range {p0 .. p0}, Landroid/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 4849
    :cond_20
    iget v6, v0, Landroid/media/ExifInterface;->mMimeType:I

    const/16 v7, 0xe

    if-ne v6, v7, :cond_21

    rem-int/lit8 v6, v5, 0x2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_21

    .line 4850
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 4854
    :cond_21
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 4856
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0xd -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist getAltitude(D)D
    .locals 6
    .param p1, "defaultValue"    # D

    .line 2442
    const-string v0, "GPSAltitude"

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 2443
    .local v0, "altitude":D
    const-string v2, "GPSAltitudeRef"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 2445
    .local v2, "ref":I
    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_1

    if-ltz v2, :cond_1

    .line 2446
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    int-to-double v3, v3

    mul-double/2addr v3, v0

    return-wide v3

    .line 2448
    :cond_1
    return-wide p1
.end method

.method public whitelist getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;

    .line 1715
    if-eqz p1, :cond_5

    .line 1718
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 1719
    .local v0, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1720
    sget-object v2, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1721
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1723
    :cond_0
    const-string v2, "GPSTimeStamp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1725
    iget v2, v0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    iget v2, v0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    .line 1727
    return-object v1

    .line 1729
    :cond_1
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v2}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/ExifInterface$Rational;

    .line 1730
    .local v2, "array":[Landroid/media/ExifInterface$Rational;
    array-length v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 1731
    return-object v1

    .line 1733
    :cond_2
    new-array v1, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    iget-wide v4, v4, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v4, v4

    aget-object v5, v2, v3

    iget-wide v5, v5, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 1734
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aget-object v4, v2, v3

    iget-wide v4, v4, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v4, v4

    aget-object v5, v2, v3

    iget-wide v5, v5, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 1735
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    aget-object v4, v2, v3

    iget-wide v4, v4, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v4, v4

    aget-object v5, v2, v3

    iget-wide v5, v5, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 1736
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 1733
    const-string v3, "%02d:%02d:%02d"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1739
    .end local v2    # "array":[Landroid/media/ExifInterface$Rational;
    :cond_3
    :try_start_0
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1740
    :catch_0
    move-exception v2

    .line 1741
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-object v1

    .line 1744
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    return-object v1

    .line 1716
    .end local v0    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAttributeBytes(Ljava/lang/String;)[B
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 2400
    if-eqz p1, :cond_1

    .line 2403
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 2404
    .local v0, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_0

    .line 2405
    iget-object v1, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    return-object v1

    .line 2407
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 2401
    .end local v0    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAttributeDouble(Ljava/lang/String;D)D
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .line 1780
    if-eqz p1, :cond_1

    .line 1783
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 1784
    .local v0, "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-nez v0, :cond_0

    .line 1785
    return-wide p2

    .line 1789
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 1790
    :catch_0
    move-exception v1

    .line 1791
    .local v1, "e":Ljava/lang/NumberFormatException;
    return-wide p2

    .line 1781
    .end local v0    # "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAttributeInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 1756
    if-eqz p1, :cond_1

    .line 1759
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 1760
    .local v0, "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-nez v0, :cond_0

    .line 1761
    return p2

    .line 1765
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1766
    :catch_0
    move-exception v1

    .line 1767
    .local v1, "e":Ljava/lang/NumberFormatException;
    return p2

    .line 1757
    .end local v0    # "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAttributeRange(Ljava/lang/String;)[J
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;

    .line 2376
    if-eqz p1, :cond_2

    .line 2379
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mModified:Z

    if-nez v0, :cond_1

    .line 2384
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 2385
    .local v0, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_0

    .line 2386
    const/4 v1, 0x2

    new-array v1, v1, [J

    const/4 v2, 0x0

    iget-wide v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytesOffset:J

    aput-wide v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v3, v3

    int-to-long v3, v3

    aput-wide v3, v1, v2

    return-object v1

    .line 2388
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 2380
    .end local v0    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The underlying file has been modified since being parsed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2377
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDateTime()J
    .locals 3

    .line 2456
    const-string v0, "DateTime"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2457
    const-string v1, "SubSecTime"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2458
    const-string v2, "OffsetTime"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2456
    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface;->parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getDateTimeDigitized()J
    .locals 3

    .line 2465
    const-string v0, "DateTimeDigitized"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2466
    const-string v1, "SubSecTimeDigitized"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2467
    const-string v2, "OffsetTimeDigitized"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2465
    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface;->parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getDateTimeOriginal()J
    .locals 3

    .line 2474
    const-string v0, "DateTimeOriginal"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2475
    const-string v1, "SubSecTimeOriginal"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2476
    const-string v2, "OffsetTimeOriginal"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2474
    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface;->parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getGpsDateTime()J
    .locals 8

    .line 2526
    const-string v0, "GPSDateStamp"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2527
    .local v0, "date":Ljava/lang/String;
    const-string v1, "GPSTimeStamp"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2528
    .local v1, "time":Ljava/lang/String;
    const-wide/16 v2, -0x1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    sget-object v4, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 2529
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2530
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 2534
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2536
    .local v4, "dateTimeString":Ljava/lang/String;
    new-instance v5, Ljava/text/ParsePosition;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2539
    .local v5, "pos":Ljava/text/ParsePosition;
    :try_start_0
    sget-object v6, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2540
    :try_start_1
    sget-object v7, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v7

    .line 2541
    .local v7, "datetime":Ljava/util/Date;
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2542
    if-nez v7, :cond_1

    return-wide v2

    .line 2543
    :cond_1
    :try_start_2
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    return-wide v2

    .line 2541
    .end local v7    # "datetime":Ljava/util/Date;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "date":Ljava/lang/String;
    .end local v1    # "time":Ljava/lang/String;
    .end local v4    # "dateTimeString":Ljava/lang/String;
    .end local v5    # "pos":Ljava/text/ParsePosition;
    .end local p0    # "this":Landroid/media/ExifInterface;
    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2544
    .restart local v0    # "date":Ljava/lang/String;
    .restart local v1    # "time":Ljava/lang/String;
    .restart local v4    # "dateTimeString":Ljava/lang/String;
    .restart local v5    # "pos":Ljava/text/ParsePosition;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :catch_0
    move-exception v6

    .line 2545
    .local v6, "e":Ljava/lang/RuntimeException;
    return-wide v2

    .line 2531
    .end local v4    # "dateTimeString":Ljava/lang/String;
    .end local v5    # "pos":Ljava/text/ParsePosition;
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :goto_0
    return-wide v2
.end method

.method public whitelist getLatLong([F)Z
    .locals 7
    .param p1, "output"    # [F

    .line 2417
    const-string v0, "GPSLatitude"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2418
    .local v0, "latValue":Ljava/lang/String;
    const-string v1, "GPSLatitudeRef"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2419
    .local v1, "latRef":Ljava/lang/String;
    const-string v2, "GPSLongitude"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2420
    .local v2, "lngValue":Ljava/lang/String;
    const-string v3, "GPSLongitudeRef"

    invoke-virtual {p0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2422
    .local v3, "lngRef":Ljava/lang/String;
    const/4 v4, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 2424
    :try_start_0
    invoke-static {v0, v1}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    aput v5, p1, v4

    .line 2425
    invoke-static {v2, v3}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    const/4 v6, 0x1

    aput v5, p1, v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2426
    return v6

    .line 2427
    :catch_0
    move-exception v5

    .line 2432
    :cond_0
    return v4
.end method

.method public whitelist getThumbnail()[B
    .locals 2

    .line 2226
    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2229
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 2227
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .line 2294
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2295
    return-object v1

    .line 2296
    :cond_0
    iget-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    if-nez v0, :cond_1

    .line 2297
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    iput-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 2300
    :cond_1
    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_5

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 2302
    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 2303
    iget-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    new-array v0, v0, [I

    .line 2304
    .local v0, "rgbValues":[I
    const/4 v3, 0x0

    .line 2305
    .local v3, "alpha":B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_3

    .line 2306
    iget-object v5, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    mul-int/lit8 v6, v4, 0x3

    aget-byte v6, v5, v6

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v6, v3

    mul-int/lit8 v7, v4, 0x3

    add-int/2addr v7, v2

    aget-byte v7, v5, v7

    shl-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v7

    mul-int/lit8 v7, v4, 0x3

    add-int/lit8 v7, v7, 0x2

    aget-byte v5, v5, v7

    add-int/2addr v6, v5

    aput v6, v0, v4

    .line 2305
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2310
    .end local v4    # "i":I
    :cond_3
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x4

    aget-object v2, v2, v4

    .line 2311
    const-string v5, "ThumbnailImageLength"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 2312
    .local v2, "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v5, v4

    .line 2313
    const-string v5, "ThumbnailImageWidth"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 2314
    .local v4, "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v2, :cond_4

    if-eqz v4, :cond_4

    .line 2315
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v1}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 2316
    .local v1, "imageLength":I
    iget-object v5, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v5

    .line 2317
    .local v5, "imageWidth":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v5, v1, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6

    .line 2321
    .end local v0    # "rgbValues":[I
    .end local v1    # "imageLength":I
    .end local v2    # "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v3    # "alpha":B
    .end local v4    # "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v5    # "imageWidth":I
    :cond_4
    return-object v1

    .line 2301
    :cond_5
    :goto_1
    iget-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    const/4 v1, 0x0

    iget v2, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getThumbnailBytes()[B
    .locals 8

    .line 2237
    const-string v0, "ExifInterface"

    iget-boolean v1, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2238
    return-object v2

    .line 2240
    :cond_0
    iget-object v1, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    if-eqz v1, :cond_1

    .line 2241
    return-object v1

    .line 2245
    :cond_1
    const/4 v1, 0x0

    .line 2246
    .local v1, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 2248
    .local v3, "newFileDescriptor":Ljava/io/FileDescriptor;
    :try_start_0
    iget-object v4, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v4, :cond_4

    .line 2249
    move-object v1, v4

    .line 2250
    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2251
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    .line 2253
    :cond_2
    const-string v4, "Cannot read thumbnail from inputstream without mark/reset support"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2254
    nop

    .line 2281
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2282
    if-eqz v3, :cond_3

    .line 2283
    invoke-static {v3}, Landroid/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 2254
    :cond_3
    return-object v2

    .line 2256
    :cond_4
    :try_start_1
    iget-object v4, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 2257
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    goto :goto_0

    .line 2258
    :cond_5
    iget-object v4, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v4, :cond_6

    .line 2259
    invoke-static {v4}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v3, v4

    .line 2260
    const-wide/16 v4, 0x0

    sget v6, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v3, v4, v5, v6}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 2261
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v4

    .line 2263
    :cond_6
    :goto_0
    if-eqz v1, :cond_a

    .line 2267
    iget v4, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    iget v6, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v6, v6

    cmp-long v4, v4, v6

    const-string v5, "Corrupted image"

    if-nez v4, :cond_9

    .line 2271
    :try_start_2
    iget v4, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    new-array v4, v4, [B

    .line 2272
    .local v4, "buffer":[B
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    iget v7, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    if-ne v6, v7, :cond_8

    .line 2275
    iput-object v4, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2276
    nop

    .line 2281
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2282
    if-eqz v3, :cond_7

    .line 2283
    invoke-static {v3}, Landroid/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 2276
    :cond_7
    return-object v4

    .line 2273
    :cond_8
    :try_start_3
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "in":Ljava/io/InputStream;
    .end local v3    # "newFileDescriptor":Ljava/io/FileDescriptor;
    .end local p0    # "this":Landroid/media/ExifInterface;
    throw v6

    .line 2268
    .end local v4    # "buffer":[B
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v3    # "newFileDescriptor":Ljava/io/FileDescriptor;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :cond_9
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "in":Ljava/io/InputStream;
    .end local v3    # "newFileDescriptor":Ljava/io/FileDescriptor;
    .end local p0    # "this":Landroid/media/ExifInterface;
    throw v4

    .line 2265
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v3    # "newFileDescriptor":Ljava/io/FileDescriptor;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :cond_a
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    .end local v1    # "in":Ljava/io/InputStream;
    .end local v3    # "newFileDescriptor":Ljava/io/FileDescriptor;
    .end local p0    # "this":Landroid/media/ExifInterface;
    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2281
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v3    # "newFileDescriptor":Ljava/io/FileDescriptor;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 2277
    :catch_0
    move-exception v4

    .line 2279
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "Encountered exception while getting thumbnail"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2281
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2282
    if-eqz v3, :cond_b

    .line 2283
    invoke-static {v3}, Landroid/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 2286
    :cond_b
    return-object v2

    .line 2281
    :goto_1
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2282
    if-eqz v3, :cond_c

    .line 2283
    invoke-static {v3}, Landroid/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 2285
    :cond_c
    throw v0
.end method

.method public whitelist getThumbnailRange()[J
    .locals 4

    .line 2351
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mModified:Z

    if-nez v0, :cond_2

    .line 2356
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2357
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    if-nez v0, :cond_0

    .line 2358
    return-object v1

    .line 2360
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    iget v2, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    return-object v0

    .line 2362
    :cond_1
    return-object v1

    .line 2352
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The underlying file has been modified since being parsed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist hasAttribute(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 2216
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasThumbnail()Z
    .locals 1

    .line 2207
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    return v0
.end method

.method public whitelist isThumbnailCompressed()Z
    .locals 3

    .line 2329
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2330
    return v1

    .line 2332
    :cond_0
    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 2335
    :cond_1
    return v1

    .line 2333
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist saveAttributes()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2108
    invoke-direct {p0}, Landroid/media/ExifInterface;->isSupportedFormatForSavingAttributes()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2112
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 2116
    :cond_0
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2117
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface does not support saving attributes when the image file has non-consecutive thumbnail strips"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2123
    :cond_2
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/ExifInterface;->mModified:Z

    .line 2126
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v0

    iput-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 2128
    const/4 v0, 0x0

    .line 2129
    .local v0, "in":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 2130
    .local v1, "out":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 2133
    .local v2, "tempFile":Ljava/io/File;
    :try_start_0
    const-string v3, "temp"

    const-string/jumbo v4, "tmp"

    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    move-object v2, v3

    .line 2134
    iget-object v3, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_3

    .line 2135
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v6, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_1

    .line 2136
    :cond_3
    iget-object v3, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v3, :cond_4

    .line 2137
    sget v6, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v3, v4, v5, v6}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 2138
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v6, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v3

    .line 2140
    :cond_4
    :goto_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 2141
    invoke-static {v0, v1}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 2145
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2146
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2147
    nop

    .line 2149
    const/4 v0, 0x0

    .line 2150
    const/4 v1, 0x0

    .line 2153
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    .line 2154
    iget-object v3, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 2155
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v6, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_2

    .line 2156
    :cond_5
    iget-object v3, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v3, :cond_6

    .line 2157
    sget v6, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v3, v4, v5, v6}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 2158
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v6, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v3

    .line 2160
    :cond_6
    :goto_2
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 2161
    .local v3, "bufferedIn":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2162
    .local v6, "bufferedOut":Ljava/io/BufferedOutputStream;
    :try_start_3
    iget v7, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_7

    .line 2163
    invoke-direct {p0, v3, v6}, Landroid/media/ExifInterface;->saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_3

    .line 2164
    :cond_7
    const/16 v8, 0xd

    if-ne v7, v8, :cond_8

    .line 2165
    invoke-direct {p0, v3, v6}, Landroid/media/ExifInterface;->savePngAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_3

    .line 2166
    :cond_8
    const/16 v8, 0xe

    if-ne v7, v8, :cond_9

    .line 2167
    invoke-direct {p0, v3, v6}, Landroid/media/ExifInterface;->saveWebpAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_3

    .line 2168
    :cond_9
    const/4 v8, 0x3

    if-eq v7, v8, :cond_a

    if-nez v7, :cond_b

    .line 2169
    :cond_a
    new-instance v7, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v7, v6, v8}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 2171
    .local v7, "dataOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    invoke-direct {p0, v7}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2173
    .end local v7    # "dataOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    :cond_b
    :goto_3
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v6    # "bufferedOut":Ljava/io/BufferedOutputStream;
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 2194
    .end local v3    # "bufferedIn":Ljava/io/BufferedInputStream;
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2195
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2196
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2197
    nop

    .line 2200
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 2201
    return-void

    .line 2160
    .restart local v3    # "bufferedIn":Ljava/io/BufferedInputStream;
    .restart local v6    # "bufferedOut":Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v7

    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v8

    :try_start_7
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "tempFile":Ljava/io/File;
    .end local v3    # "bufferedIn":Ljava/io/BufferedInputStream;
    .end local p0    # "this":Landroid/media/ExifInterface;
    :goto_4
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v6    # "bufferedOut":Ljava/io/BufferedOutputStream;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "tempFile":Ljava/io/File;
    .restart local v3    # "bufferedIn":Ljava/io/BufferedInputStream;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :catchall_2
    move-exception v6

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v7

    :try_start_9
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "tempFile":Ljava/io/File;
    .end local p0    # "this":Landroid/media/ExifInterface;
    :goto_5
    throw v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 2194
    .end local v3    # "bufferedIn":Ljava/io/BufferedInputStream;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "tempFile":Ljava/io/File;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :catchall_4
    move-exception v3

    goto :goto_7

    .line 2174
    :catch_0
    move-exception v3

    .line 2176
    .local v3, "e":Ljava/lang/Exception;
    :try_start_a
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v6

    .line 2177
    iget-object v6, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v6, :cond_c

    .line 2179
    iget-object v6, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v6, :cond_d

    .line 2181
    :try_start_b
    sget v7, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v6, v4, v5, v7}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_b
    .catch Landroid/system/ErrnoException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 2186
    nop

    .line 2187
    :try_start_c
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v4

    goto :goto_6

    .line 2182
    :catch_1
    move-exception v4

    .line 2183
    .local v4, "exception":Landroid/system/ErrnoException;
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Failed to save new file. Original file may be corrupted since error occurred while trying to restore it."

    invoke-direct {v5, v6, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "tempFile":Ljava/io/File;
    .end local p0    # "this":Landroid/media/ExifInterface;
    throw v5

    .line 2178
    .end local v4    # "exception":Landroid/system/ErrnoException;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "tempFile":Ljava/io/File;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :cond_c
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 2189
    :cond_d
    :goto_6
    invoke-static {v0, v1}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 2190
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2191
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2192
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failed to save new file"

    invoke-direct {v4, v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "tempFile":Ljava/io/File;
    .end local p0    # "this":Landroid/media/ExifInterface;
    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 2194
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "tempFile":Ljava/io/File;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :goto_7
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2195
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2196
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2197
    throw v3

    .line 2145
    :catchall_5
    move-exception v3

    goto :goto_8

    .line 2142
    :catch_2
    move-exception v3

    .line 2143
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_d
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failed to copy original file to temp file"

    invoke-direct {v4, v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "tempFile":Ljava/io/File;
    .end local p0    # "this":Landroid/media/ExifInterface;
    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 2145
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "tempFile":Ljava/io/File;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :goto_8
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2146
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2147
    throw v3

    .line 2113
    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "tempFile":Ljava/io/File;
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface does not support saving attributes for the current input."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2109
    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface only supports saving attributes for JPEG, PNG, WebP, and DNG formats."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 26
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1802
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz v2, :cond_17

    .line 1806
    const/4 v0, 0x2

    const-string v4, "ExifInterface"

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    sget-object v6, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1807
    const-string v6, "GPSTimeStamp"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, " : "

    const-string v8, "Invalid value for "

    if-eqz v6, :cond_1

    .line 1808
    sget-object v6, Landroid/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 1809
    .local v6, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    return-void

    .line 1813
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/1,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    .line 1814
    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1815
    .end local v6    # "m":Ljava/util/regex/Matcher;
    .end local p2    # "value":Ljava/lang/String;
    .local v3, "value":Ljava/lang/String;
    goto :goto_0

    .line 1817
    .end local v3    # "value":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 1818
    .local v9, "doubleValue":D
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v11, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v11, v9

    double-to-long v11, v11

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, "/10000"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v6

    .line 1822
    .end local v9    # "doubleValue":D
    .end local p2    # "value":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 1819
    .end local v3    # "value":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1820
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    return-void

    .line 1826
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local p2    # "value":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    sget-object v7, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v7, v7

    if-ge v6, v7, :cond_16

    .line 1827
    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    iget-boolean v7, v1, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-nez v7, :cond_3

    .line 1828
    move/from16 v22, v5

    move/from16 v24, v6

    goto/16 :goto_d

    .line 1830
    :cond_3
    sget-object v7, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1831
    .local v7, "obj":Ljava/lang/Object;
    if-eqz v7, :cond_14

    .line 1832
    if-nez v3, :cond_4

    .line 1833
    iget-object v8, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v6

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1834
    move/from16 v22, v5

    move/from16 v24, v6

    goto/16 :goto_d

    .line 1836
    :cond_4
    move-object v8, v7

    check-cast v8, Landroid/media/ExifInterface$ExifTag;

    .line 1837
    .local v8, "exifTag":Landroid/media/ExifInterface$ExifTag;
    invoke-static {v3}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v9

    .line 1839
    .local v9, "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v10, v11, :cond_d

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v10, v11, :cond_5

    goto/16 :goto_5

    .line 1841
    :cond_5
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v12, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eq v10, v12, :cond_6

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v12, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    .line 1842
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v10, v12, :cond_7

    .line 1843
    :cond_6
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    .local v10, "dataFormat":I
    goto/16 :goto_6

    .line 1844
    .end local v10    # "dataFormat":I
    :cond_7
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    if-eq v10, v5, :cond_c

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v12, 0x7

    if-eq v10, v12, :cond_c

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    if-ne v10, v0, :cond_8

    goto/16 :goto_4

    .line 1849
    :cond_8
    sget-boolean v10, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v10, :cond_b

    .line 1850
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Given tag ("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ") value didn\'t match with one of expected formats: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v13, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    aget-object v13, v12, v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1853
    iget v13, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    const-string v14, ""

    const-string v15, ", "

    if-ne v13, v11, :cond_9

    move-object v0, v14

    goto :goto_2

    .line 1854
    :cond_9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v0, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    aget-object v0, v12, v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " (guess: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    .line 1855
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v10, v12, v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v11, :cond_a

    goto :goto_3

    .line 1856
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v11, v12, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_3
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ")"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1850
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v22, v5

    move/from16 v24, v6

    goto/16 :goto_d

    .line 1849
    :cond_b
    move/from16 v22, v5

    move/from16 v24, v6

    goto/16 :goto_d

    .line 1847
    :cond_c
    :goto_4
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    .restart local v10    # "dataFormat":I
    goto :goto_6

    .line 1840
    .end local v10    # "dataFormat":I
    :cond_d
    :goto_5
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 1860
    .restart local v10    # "dataFormat":I
    :goto_6
    const/4 v0, 0x0

    const-string v11, "/"

    const-string v12, ","

    packed-switch v10, :pswitch_data_0

    .line 1935
    :pswitch_0
    move/from16 v22, v5

    move/from16 v24, v6

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    .end local v6    # "i":I
    .end local v7    # "obj":Ljava/lang/Object;
    .end local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .local v23, "obj":Ljava/lang/Object;
    .local v24, "i":I
    .local v25, "exifTag":Landroid/media/ExifInterface$ExifTag;
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_15

    .line 1936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data format isn\'t one of expected formats: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1925
    .end local v23    # "obj":Ljava/lang/Object;
    .end local v24    # "i":I
    .end local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .restart local v6    # "i":I
    .restart local v7    # "obj":Ljava/lang/Object;
    .restart local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    :pswitch_1
    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1926
    .local v0, "values":[Ljava/lang/String;
    array-length v11, v0

    new-array v11, v11, [D

    .line 1927
    .local v11, "doubleArray":[D
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_7
    array-length v13, v0

    if-ge v12, v13, :cond_e

    .line 1928
    aget-object v13, v0, v12

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    aput-wide v13, v11, v12

    .line 1927
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 1930
    .end local v12    # "j":I
    :cond_e
    iget-object v12, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v12, v6

    iget-object v13, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1931
    invoke-static {v11, v13}, Landroid/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 1930
    invoke-virtual {v12, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1932
    move/from16 v22, v5

    move/from16 v24, v6

    goto/16 :goto_d

    .line 1913
    .end local v0    # "values":[Ljava/lang/String;
    .end local v11    # "doubleArray":[D
    :pswitch_2
    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1914
    .local v12, "values":[Ljava/lang/String;
    array-length v13, v12

    new-array v13, v13, [Landroid/media/ExifInterface$Rational;

    .line 1915
    .local v13, "rationalArray":[Landroid/media/ExifInterface$Rational;
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_8
    array-length v15, v12

    if-ge v14, v15, :cond_f

    .line 1916
    aget-object v15, v12, v14

    invoke-virtual {v15, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1917
    .local v15, "numbers":[Ljava/lang/String;
    new-instance v22, Landroid/media/ExifInterface$Rational;

    aget-object v16, v15, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    aget-object v16, v15, v5

    .line 1918
    move/from16 v24, v6

    .end local v6    # "i":I
    .restart local v24    # "i":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-long v5, v5

    const/16 v21, 0x0

    move-object/from16 v16, v22

    move-wide/from16 v17, v0

    move-wide/from16 v19, v5

    invoke-direct/range {v16 .. v21}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$Rational-IA;)V

    aput-object v22, v13, v14

    .line 1915
    .end local v15    # "numbers":[Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move/from16 v6, v24

    goto :goto_8

    .end local v24    # "i":I
    .restart local v6    # "i":I
    :cond_f
    move/from16 v24, v6

    .line 1920
    .end local v6    # "i":I
    .end local v14    # "j":I
    .restart local v24    # "i":I
    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v24

    iget-object v5, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1921
    invoke-static {v13, v5}, Landroid/media/ExifInterface$ExifAttribute;->createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 1920
    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1922
    const/16 v22, 0x1

    goto/16 :goto_d

    .line 1881
    .end local v12    # "values":[Ljava/lang/String;
    .end local v13    # "rationalArray":[Landroid/media/ExifInterface$Rational;
    .end local v24    # "i":I
    .restart local v6    # "i":I
    :pswitch_3
    move/from16 v24, v6

    .end local v6    # "i":I
    .restart local v24    # "i":I
    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1882
    .restart local v0    # "values":[Ljava/lang/String;
    array-length v5, v0

    new-array v5, v5, [I

    .line 1883
    .local v5, "intArray":[I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_9
    array-length v11, v0

    if-ge v6, v11, :cond_10

    .line 1884
    aget-object v11, v0, v6

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v5, v6

    .line 1883
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 1886
    .end local v6    # "j":I
    :cond_10
    iget-object v6, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v24

    iget-object v11, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1887
    invoke-static {v5, v11}, Landroid/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v11

    .line 1886
    invoke-virtual {v6, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1888
    const/16 v22, 0x1

    goto/16 :goto_d

    .line 1901
    .end local v0    # "values":[Ljava/lang/String;
    .end local v5    # "intArray":[I
    .end local v24    # "i":I
    .local v6, "i":I
    :pswitch_4
    move/from16 v24, v6

    .end local v6    # "i":I
    .restart local v24    # "i":I
    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1902
    .restart local v0    # "values":[Ljava/lang/String;
    array-length v5, v0

    new-array v5, v5, [Landroid/media/ExifInterface$Rational;

    .line 1903
    .local v5, "rationalArray":[Landroid/media/ExifInterface$Rational;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_a
    array-length v12, v0

    if-ge v6, v12, :cond_11

    .line 1904
    aget-object v12, v0, v6

    invoke-virtual {v12, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1905
    .local v12, "numbers":[Ljava/lang/String;
    new-instance v13, Landroid/media/ExifInterface$Rational;

    const/4 v14, 0x0

    aget-object v15, v12, v14

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    double-to-long v14, v14

    const/16 v22, 0x1

    aget-object v16, v12, v22

    .line 1906
    move-object/from16 v23, v7

    move-object/from16 v25, v8

    .end local v7    # "obj":Ljava/lang/Object;
    .end local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .restart local v23    # "obj":Ljava/lang/Object;
    .restart local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-long v7, v7

    const/16 v21, 0x0

    move-object/from16 v16, v13

    move-wide/from16 v17, v14

    move-wide/from16 v19, v7

    invoke-direct/range {v16 .. v21}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$Rational-IA;)V

    aput-object v13, v5, v6

    .line 1903
    .end local v12    # "numbers":[Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v7, v23

    move-object/from16 v8, v25

    goto :goto_a

    .end local v23    # "obj":Ljava/lang/Object;
    .end local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .restart local v7    # "obj":Ljava/lang/Object;
    .restart local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    :cond_11
    move-object/from16 v23, v7

    move-object/from16 v25, v8

    const/16 v22, 0x1

    .line 1908
    .end local v6    # "j":I
    .end local v7    # "obj":Ljava/lang/Object;
    .end local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .restart local v23    # "obj":Ljava/lang/Object;
    .restart local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    iget-object v6, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v24

    iget-object v7, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1909
    invoke-static {v5, v7}, Landroid/media/ExifInterface$ExifAttribute;->createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 1908
    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1910
    goto/16 :goto_d

    .line 1891
    .end local v0    # "values":[Ljava/lang/String;
    .end local v5    # "rationalArray":[Landroid/media/ExifInterface$Rational;
    .end local v23    # "obj":Ljava/lang/Object;
    .end local v24    # "i":I
    .end local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .local v6, "i":I
    .restart local v7    # "obj":Ljava/lang/Object;
    .restart local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    :pswitch_5
    move/from16 v22, v5

    move/from16 v24, v6

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    .end local v6    # "i":I
    .end local v7    # "obj":Ljava/lang/Object;
    .end local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .restart local v23    # "obj":Ljava/lang/Object;
    .restart local v24    # "i":I
    .restart local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1892
    .restart local v0    # "values":[Ljava/lang/String;
    array-length v5, v0

    new-array v5, v5, [J

    .line 1893
    .local v5, "longArray":[J
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_b
    array-length v7, v0

    if-ge v6, v7, :cond_12

    .line 1894
    aget-object v7, v0, v6

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v5, v6

    .line 1893
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 1896
    .end local v6    # "j":I
    :cond_12
    iget-object v6, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v24

    iget-object v7, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1897
    invoke-static {v5, v7}, Landroid/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 1896
    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1898
    goto :goto_d

    .line 1871
    .end local v0    # "values":[Ljava/lang/String;
    .end local v5    # "longArray":[J
    .end local v23    # "obj":Ljava/lang/Object;
    .end local v24    # "i":I
    .end local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .local v6, "i":I
    .restart local v7    # "obj":Ljava/lang/Object;
    .restart local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    :pswitch_6
    move/from16 v22, v5

    move/from16 v24, v6

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    .end local v6    # "i":I
    .end local v7    # "obj":Ljava/lang/Object;
    .end local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .restart local v23    # "obj":Ljava/lang/Object;
    .restart local v24    # "i":I
    .restart local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1872
    .restart local v0    # "values":[Ljava/lang/String;
    array-length v5, v0

    new-array v5, v5, [I

    .line 1873
    .local v5, "intArray":[I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_c
    array-length v7, v0

    if-ge v6, v7, :cond_13

    .line 1874
    aget-object v7, v0, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v6

    .line 1873
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 1876
    .end local v6    # "j":I
    :cond_13
    iget-object v6, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v24

    iget-object v7, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1877
    invoke-static {v5, v7}, Landroid/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 1876
    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1878
    goto :goto_d

    .line 1867
    .end local v0    # "values":[Ljava/lang/String;
    .end local v5    # "intArray":[I
    .end local v23    # "obj":Ljava/lang/Object;
    .end local v24    # "i":I
    .end local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .local v6, "i":I
    .restart local v7    # "obj":Ljava/lang/Object;
    .restart local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    :pswitch_7
    move/from16 v22, v5

    move/from16 v24, v6

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    .end local v6    # "i":I
    .end local v7    # "obj":Ljava/lang/Object;
    .end local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .restart local v23    # "obj":Ljava/lang/Object;
    .restart local v24    # "i":I
    .restart local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    iget-object v0, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v24

    invoke-static {v3}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1868
    goto :goto_d

    .line 1862
    .end local v23    # "obj":Ljava/lang/Object;
    .end local v24    # "i":I
    .end local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .restart local v6    # "i":I
    .restart local v7    # "obj":Ljava/lang/Object;
    .restart local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    :pswitch_8
    move/from16 v22, v5

    move/from16 v24, v6

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    .end local v6    # "i":I
    .end local v7    # "obj":Ljava/lang/Object;
    .end local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .restart local v23    # "obj":Ljava/lang/Object;
    .restart local v24    # "i":I
    .restart local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    iget-object v0, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v24

    invoke-static {v3}, Landroid/media/ExifInterface$ExifAttribute;->createByte(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1863
    goto :goto_d

    .line 1831
    .end local v9    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v10    # "dataFormat":I
    .end local v23    # "obj":Ljava/lang/Object;
    .end local v24    # "i":I
    .end local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .restart local v6    # "i":I
    .restart local v7    # "obj":Ljava/lang/Object;
    :cond_14
    move/from16 v22, v5

    move/from16 v24, v6

    move-object/from16 v23, v7

    .line 1826
    .end local v6    # "i":I
    .end local v7    # "obj":Ljava/lang/Object;
    .restart local v24    # "i":I
    :cond_15
    :goto_d
    add-int/lit8 v6, v24, 0x1

    move/from16 v5, v22

    const/4 v0, 0x2

    .end local v24    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_1

    .line 1942
    .end local v6    # "i":I
    :cond_16
    return-void

    .line 1803
    .end local v3    # "value":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v4, "tag shouldn\'t be null"

    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
