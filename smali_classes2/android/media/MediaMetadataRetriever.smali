.class public Landroid/media/MediaMetadataRetriever;
.super Ljava/lang/Object;
.source "MediaMetadataRetriever.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaMetadataRetriever$Option;,
        Landroid/media/MediaMetadataRetriever$BitmapParams;
    }
.end annotation


# static fields
.field private static final greylist-max-o EMBEDDED_PICTURE_TYPE_ANY:I = 0xffff

.field public static final whitelist METADATA_KEY_ALBUM:I = 0x1

.field public static final whitelist METADATA_KEY_ALBUMARTIST:I = 0xd

.field public static final whitelist METADATA_KEY_ARTIST:I = 0x2

.field public static final whitelist METADATA_KEY_AUTHOR:I = 0x3

.field public static final whitelist METADATA_KEY_BITRATE:I = 0x14

.field public static final whitelist METADATA_KEY_BITS_PER_SAMPLE:I = 0x27

.field public static final whitelist METADATA_KEY_CAPTURE_FRAMERATE:I = 0x19

.field public static final whitelist METADATA_KEY_CD_TRACK_NUMBER:I = 0x0

.field public static final whitelist METADATA_KEY_COLOR_RANGE:I = 0x25

.field public static final whitelist METADATA_KEY_COLOR_STANDARD:I = 0x23

.field public static final whitelist METADATA_KEY_COLOR_TRANSFER:I = 0x24

.field public static final whitelist METADATA_KEY_COMPILATION:I = 0xf

.field public static final whitelist METADATA_KEY_COMPOSER:I = 0x4

.field public static final whitelist METADATA_KEY_DATE:I = 0x5

.field public static final whitelist METADATA_KEY_DISC_NUMBER:I = 0xe

.field public static final whitelist METADATA_KEY_DURATION:I = 0x9

.field public static final whitelist METADATA_KEY_EXIF_LENGTH:I = 0x22

.field public static final whitelist METADATA_KEY_EXIF_OFFSET:I = 0x21

.field public static final whitelist METADATA_KEY_GENRE:I = 0x6

.field public static final whitelist METADATA_KEY_HAS_AUDIO:I = 0x10

.field public static final whitelist METADATA_KEY_HAS_IMAGE:I = 0x1a

.field public static final whitelist METADATA_KEY_HAS_VIDEO:I = 0x11

.field public static final whitelist METADATA_KEY_IMAGE_COUNT:I = 0x1b

.field public static final whitelist METADATA_KEY_IMAGE_HEIGHT:I = 0x1e

.field public static final whitelist METADATA_KEY_IMAGE_PRIMARY:I = 0x1c

.field public static final whitelist METADATA_KEY_IMAGE_ROTATION:I = 0x1f

.field public static final whitelist METADATA_KEY_IMAGE_WIDTH:I = 0x1d

.field public static final greylist-max-o METADATA_KEY_IS_DRM:I = 0x16

.field public static final whitelist METADATA_KEY_LOCATION:I = 0x17

.field public static final whitelist METADATA_KEY_MIMETYPE:I = 0xc

.field public static final whitelist METADATA_KEY_NUM_TRACKS:I = 0xa

.field public static final whitelist METADATA_KEY_SAMPLERATE:I = 0x26

.field public static final greylist-max-o METADATA_KEY_TIMED_TEXT_LANGUAGES:I = 0x15

.field public static final whitelist METADATA_KEY_TITLE:I = 0x7

.field public static final blacklist METADATA_KEY_VIDEO_CODEC_MIME_TYPE:I = 0x28
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist METADATA_KEY_VIDEO_FRAME_COUNT:I = 0x20

.field public static final whitelist METADATA_KEY_VIDEO_HEIGHT:I = 0x13

.field public static final whitelist METADATA_KEY_VIDEO_ROTATION:I = 0x18

.field public static final whitelist METADATA_KEY_VIDEO_WIDTH:I = 0x12

.field public static final whitelist METADATA_KEY_WRITER:I = 0xb

.field public static final whitelist METADATA_KEY_XMP_LENGTH:I = 0x2a

.field public static final whitelist METADATA_KEY_XMP_OFFSET:I = 0x29

.field public static final whitelist METADATA_KEY_YEAR:I = 0x8

.field public static final whitelist OPTION_CLOSEST:I = 0x3

.field public static final whitelist OPTION_CLOSEST_SYNC:I = 0x2

.field public static final whitelist OPTION_NEXT_SYNC:I = 0x1

.field public static final whitelist OPTION_PREVIOUS_SYNC:I = 0x0

.field private static final blacklist STANDARD_GENRES:[Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String; = "MediaMetadataRetriever"


# instance fields
.field private greylist-max-o mNativeContext:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 148

    .line 59
    const-string v0, "Blues"

    const-string v1, "Classic Rock"

    const-string v2, "Country"

    const-string v3, "Dance"

    const-string v4, "Disco"

    const-string v5, "Funk"

    const-string v6, "Grunge"

    const-string v7, "Hip-Hop"

    const-string v8, "Jazz"

    const-string v9, "Metal"

    const-string v10, "New Age"

    const-string v11, "Oldies"

    const-string v12, "Other"

    const-string v13, "Pop"

    const-string v14, "R&B"

    const-string v15, "Rap"

    const-string v16, "Reggae"

    const-string v17, "Rock"

    const-string v18, "Techno"

    const-string v19, "Industrial"

    const-string v20, "Alternative"

    const-string v21, "Ska"

    const-string v22, "Death Metal"

    const-string v23, "Pranks"

    const-string v24, "Soundtrack"

    const-string v25, "Euro-Techno"

    const-string v26, "Ambient"

    const-string v27, "Trip-Hop"

    const-string v28, "Vocal"

    const-string v29, "Jazz+Funk"

    const-string v30, "Fusion"

    const-string v31, "Trance"

    const-string v32, "Classical"

    const-string v33, "Instrumental"

    const-string v34, "Acid"

    const-string v35, "House"

    const-string v36, "Game"

    const-string v37, "Sound Clip"

    const-string v38, "Gospel"

    const-string v39, "Noise"

    const-string v40, "AlternRock"

    const-string v41, "Bass"

    const-string v42, "Soul"

    const-string v43, "Punk"

    const-string v44, "Space"

    const-string v45, "Meditative"

    const-string v46, "Instrumental Pop"

    const-string v47, "Instrumental Rock"

    const-string v48, "Ethnic"

    const-string v49, "Gothic"

    const-string v50, "Darkwave"

    const-string v51, "Techno-Industrial"

    const-string v52, "Electronic"

    const-string v53, "Pop-Folk"

    const-string v54, "Eurodance"

    const-string v55, "Dream"

    const-string v56, "Southern Rock"

    const-string v57, "Comedy"

    const-string v58, "Cult"

    const-string v59, "Gangsta"

    const-string v60, "Top 40"

    const-string v61, "Christian Rap"

    const-string v62, "Pop/Funk"

    const-string v63, "Jungle"

    const-string v64, "Native American"

    const-string v65, "Cabaret"

    const-string v66, "New Wave"

    const-string v67, "Psychadelic"

    const-string v68, "Rave"

    const-string v69, "Showtunes"

    const-string v70, "Trailer"

    const-string v71, "Lo-Fi"

    const-string v72, "Tribal"

    const-string v73, "Acid Punk"

    const-string v74, "Acid Jazz"

    const-string v75, "Polka"

    const-string v76, "Retro"

    const-string v77, "Musical"

    const-string v78, "Rock & Roll"

    const-string v79, "Hard Rock"

    const-string v80, "Folk"

    const-string v81, "Folk-Rock"

    const-string v82, "National Folk"

    const-string v83, "Swing"

    const-string v84, "Fast Fusion"

    const-string v85, "Bebob"

    const-string v86, "Latin"

    const-string v87, "Revival"

    const-string v88, "Celtic"

    const-string v89, "Bluegrass"

    const-string v90, "Avantgarde"

    const-string v91, "Gothic Rock"

    const-string v92, "Progressive Rock"

    const-string v93, "Psychedelic Rock"

    const-string v94, "Symphonic Rock"

    const-string v95, "Slow Rock"

    const-string v96, "Big Band"

    const-string v97, "Chorus"

    const-string v98, "Easy Listening"

    const-string v99, "Acoustic"

    const-string v100, "Humour"

    const-string v101, "Speech"

    const-string v102, "Chanson"

    const-string v103, "Opera"

    const-string v104, "Chamber Music"

    const-string v105, "Sonata"

    const-string v106, "Symphony"

    const-string v107, "Booty Bass"

    const-string v108, "Primus"

    const-string v109, "Porn Groove"

    const-string v110, "Satire"

    const-string v111, "Slow Jam"

    const-string v112, "Club"

    const-string v113, "Tango"

    const-string v114, "Samba"

    const-string v115, "Folklore"

    const-string v116, "Ballad"

    const-string v117, "Power Ballad"

    const-string v118, "Rhythmic Soul"

    const-string v119, "Freestyle"

    const-string v120, "Duet"

    const-string v121, "Punk Rock"

    const-string v122, "Drum Solo"

    const-string v123, "A capella"

    const-string v124, "Euro-House"

    const-string v125, "Dance Hall"

    const-string v126, "Goa"

    const-string v127, "Drum & Bass"

    const-string v128, "Club-House"

    const-string v129, "Hardcore"

    const-string v130, "Terror"

    const-string v131, "Indie"

    const-string v132, "BritPop"

    const-string v133, "Afro-Punk"

    const-string v134, "Polsk Punk"

    const-string v135, "Beat"

    const-string v136, "Christian Gangsta Rap"

    const-string v137, "Heavy Metal"

    const-string v138, "Black Metal"

    const-string v139, "Crossover"

    const-string v140, "Contemporary Christian"

    const-string v141, "Christian Rock"

    const-string v142, "Merengue"

    const-string v143, "Salsa"

    const-string v144, "Thrash Metal"

    const-string v145, "Anime"

    const-string v146, "Jpop"

    const-string v147, "Synthpop"

    filled-new-array/range {v0 .. v147}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaMetadataRetriever;->STANDARD_GENRES:[Ljava/lang/String;

    .line 214
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 215
    invoke-static {}, Landroid/media/MediaMetadataRetriever;->native_init()V

    .line 216
    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;->native_setup()V

    .line 226
    return-void
.end method

.method private native greylist-max-o _getFrameAtIndex(IILandroid/media/MediaMetadataRetriever$BitmapParams;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/media/MediaMetadataRetriever$BitmapParams;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method private native blacklist _getFrameAtTime(JIIILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;
.end method

.method private native greylist-max-o _getImageAtIndex(ILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;
.end method

.method private native greylist-max-o _setDataSource(Landroid/media/MediaDataSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private native greylist-max-o _setDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private native blacklist _setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private blacklist convertGenreTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "meta"    # Ljava/lang/String;

    .line 473
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 474
    return-object v1

    .line 477
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 480
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 481
    .local v0, "genreIndex":I
    if-ltz v0, :cond_1

    sget-object v2, Landroid/media/MediaMetadataRetriever;->STANDARD_GENRES:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 482
    aget-object v1, v2, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 486
    .end local v0    # "genreIndex":I
    :cond_1
    goto :goto_0

    .line 484
    :catch_0
    move-exception v0

    .line 487
    :goto_0
    return-object v1

    .line 491
    :cond_2
    const/4 v0, 0x0

    .line 492
    .local v0, "genres":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 494
    .local v2, "nextGenre":Ljava/lang/String;
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 495
    if-nez v0, :cond_3

    .line 496
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    .line 498
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_4

    .line 499
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    const/4 v2, 0x0

    .line 504
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 506
    nop

    .line 553
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    :goto_2
    return-object v1

    .line 508
    :cond_8
    const-string v3, "(RX)"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_9

    .line 509
    const-string v2, "Remix"

    .line 510
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 511
    :cond_9
    const-string v3, "(CR)"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 512
    const-string v2, "Cover"

    .line 513
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 514
    :cond_a
    const-string v3, "(("

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, -0x1

    const/16 v5, 0x29

    const/4 v6, 0x1

    if-eqz v3, :cond_c

    .line 520
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 521
    .local v3, "closeParenOffset":I
    if-ne v3, v4, :cond_b

    .line 523
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 524
    const-string p1, ""

    goto :goto_3

    .line 526
    :cond_b
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 527
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 529
    .end local v3    # "closeParenOffset":I
    :goto_3
    goto :goto_1

    :cond_c
    const-string v3, "("

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 531
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 532
    .restart local v3    # "closeParenOffset":I
    if-ne v3, v4, :cond_d

    .line 533
    return-object v1

    .line 535
    :cond_d
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 537
    .local v4, "genreNumString":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 538
    .local v5, "genreIndex":I
    if-ltz v5, :cond_e

    sget-object v6, Landroid/media/MediaMetadataRetriever;->STANDARD_GENRES:[Ljava/lang/String;

    array-length v7, v6

    if-ge v5, v7, :cond_e

    .line 539
    aget-object v6, v6, v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v6

    .line 545
    .end local v5    # "genreIndex":I
    nop

    .line 546
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 547
    .end local v3    # "closeParenOffset":I
    .end local v4    # "genreNumString":Ljava/lang/String;
    goto/16 :goto_1

    .line 541
    .restart local v3    # "closeParenOffset":I
    .restart local v4    # "genreNumString":Ljava/lang/String;
    .restart local v5    # "genreIndex":I
    :cond_e
    return-object v1

    .line 543
    .end local v5    # "genreIndex":I
    :catch_1
    move-exception v5

    .line 544
    .local v5, "e":Ljava/lang/NumberFormatException;
    return-object v1

    .line 549
    .end local v3    # "closeParenOffset":I
    .end local v4    # "genreNumString":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_f
    move-object v2, p1

    .line 550
    const-string p1, ""

    goto/16 :goto_1
.end method

.method private native greylist getEmbeddedPicture(I)[B
.end method

.method private greylist-max-o getFramesAtIndexInternal(IILandroid/media/MediaMetadataRetriever$BitmapParams;)Ljava/util/List;
    .locals 4
    .param p1, "frameIndex"    # I
    .param p2, "numFrames"    # I
    .param p3, "params"    # Landroid/media/MediaMetadataRetriever$BitmapParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/media/MediaMetadataRetriever$BitmapParams;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 948
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 951
    const/16 v0, 0x20

    .line 952
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 951
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 953
    .local v0, "frameCount":I
    if-ltz p1, :cond_0

    const/4 v1, 0x1

    if-lt p2, v1, :cond_0

    if-ge p1, v0, :cond_0

    sub-int v1, v0, p2

    if-gt p1, v1, :cond_0

    .line 959
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaMetadataRetriever;->_getFrameAtIndex(IILandroid/media/MediaMetadataRetriever$BitmapParams;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 956
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid frameIndex or numFrames: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 949
    .end local v0    # "frameCount":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Does not contain video or image sequences"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getImageAtIndexInternal(ILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "imageIndex"    # I
    .param p2, "params"    # Landroid/media/MediaMetadataRetriever$BitmapParams;

    .line 1066
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1070
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 1071
    .local v0, "imageCount":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 1075
    invoke-direct {p0, p1, p2}, Landroid/media/MediaMetadataRetriever;->_getImageAtIndex(ILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 1072
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid image index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1067
    .end local v0    # "imageCount":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Does not contain still images"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native blacklist nativeExtractMetadata(I)Ljava/lang/String;
.end method

.method private final native greylist-max-p native_finalize()V
.end method

.method private static native greylist-max-p native_init()V
.end method

.method private native greylist-max-p native_setup()V
.end method

.method private blacklist validate(III)V
    .locals 3
    .param p1, "option"    # I
    .param p2, "dstWidth"    # I
    .param p3, "dstHeight"    # I

    .line 727
    if-ltz p1, :cond_2

    const/4 v0, 0x3

    if-gt p1, v0, :cond_2

    .line 730
    if-lez p2, :cond_1

    .line 733
    if-lez p3, :cond_0

    .line 736
    return-void

    .line 734
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 731
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1104
    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1105
    return-void
.end method

.method public whitelist extractMetadata(I)Ljava/lang/String;
    .locals 2
    .param p1, "keyCode"    # I

    .line 445
    invoke-direct {p0, p1}, Landroid/media/MediaMetadataRetriever;->nativeExtractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "meta":Ljava/lang/String;
    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 448
    invoke-direct {p0, v0}, Landroid/media/MediaMetadataRetriever;->convertGenreTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    :cond_0
    return-object v0
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1127
    :try_start_0
    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;->native_finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1130
    nop

    .line 1131
    return-void

    .line 1129
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1130
    throw v0
.end method

.method public whitelist getEmbeddedPicture()[B
    .locals 1

    .line 1088
    const v0, 0xffff

    invoke-direct {p0, v0}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture(I)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFrameAtIndex(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "frameIndex"    # I

    .line 883
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaMetadataRetriever;->getFramesAtIndex(II)Ljava/util/List;

    move-result-object v0

    .line 884
    .local v0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public whitelist getFrameAtIndex(ILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "frameIndex"    # I
    .param p2, "params"    # Landroid/media/MediaMetadataRetriever$BitmapParams;

    .line 861
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/media/MediaMetadataRetriever;->getFramesAtIndex(IILandroid/media/MediaMetadataRetriever$BitmapParams;)Ljava/util/List;

    move-result-object v0

    .line 862
    .local v0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public whitelist getFrameAtTime()Landroid/graphics/Bitmap;
    .locals 7

    .line 785
    const-wide/16 v1, -0x1

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/media/MediaMetadataRetriever;->_getFrameAtTime(JIIILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFrameAtTime(J)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "timeUs"    # J

    .line 763
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFrameAtTime(JI)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "timeUs"    # J
    .param p3, "option"    # I

    .line 587
    if-ltz p3, :cond_0

    const/4 v0, 0x3

    if-gt p3, v0, :cond_0

    .line 592
    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    invoke-direct/range {v1 .. v7}, Landroid/media/MediaMetadataRetriever;->_getFrameAtTime(JIIILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 589
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getFrameAtTime(JILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "timeUs"    # J
    .param p3, "option"    # I
    .param p4, "params"    # Landroid/media/MediaMetadataRetriever$BitmapParams;

    .line 634
    if-ltz p3, :cond_0

    const/4 v0, 0x3

    if-gt p3, v0, :cond_0

    .line 639
    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/media/MediaMetadataRetriever;->_getFrameAtTime(JIIILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 636
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getFramesAtIndex(II)Ljava/util/List;
    .locals 1
    .param p1, "frameIndex"    # I
    .param p2, "numFrames"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 943
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaMetadataRetriever;->getFramesAtIndexInternal(IILandroid/media/MediaMetadataRetriever$BitmapParams;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFramesAtIndex(IILandroid/media/MediaMetadataRetriever$BitmapParams;)Ljava/util/List;
    .locals 1
    .param p1, "frameIndex"    # I
    .param p2, "numFrames"    # I
    .param p3, "params"    # Landroid/media/MediaMetadataRetriever$BitmapParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/media/MediaMetadataRetriever$BitmapParams;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 918
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaMetadataRetriever;->getFramesAtIndexInternal(IILandroid/media/MediaMetadataRetriever$BitmapParams;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getImageAtIndex(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "imageIndex"    # I

    .line 1024
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/MediaMetadataRetriever;->getImageAtIndexInternal(ILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getImageAtIndex(ILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "imageIndex"    # I
    .param p2, "params"    # Landroid/media/MediaMetadataRetriever$BitmapParams;

    .line 986
    invoke-direct {p0, p1, p2}, Landroid/media/MediaMetadataRetriever;->getImageAtIndexInternal(ILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPrimaryImage()Landroid/graphics/Bitmap;
    .locals 2

    .line 1062
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/MediaMetadataRetriever;->getImageAtIndexInternal(ILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPrimaryImage(Landroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "params"    # Landroid/media/MediaMetadataRetriever$BitmapParams;

    .line 1046
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Landroid/media/MediaMetadataRetriever;->getImageAtIndexInternal(ILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "timeUs"    # J
    .param p3, "option"    # I
    .param p4, "dstWidth"    # I
    .param p5, "dstHeight"    # I

    .line 676
    invoke-direct {p0, p3, p4, p5}, Landroid/media/MediaMetadataRetriever;->validate(III)V

    .line 677
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/media/MediaMetadataRetriever;->_getFrameAtTime(JIIILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getScaledFrameAtTime(JIIILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "timeUs"    # J
    .param p3, "option"    # I
    .param p4, "dstWidth"    # I
    .param p5, "dstHeight"    # I
    .param p6, "params"    # Landroid/media/MediaMetadataRetriever$BitmapParams;

    .line 722
    invoke-direct {p0, p3, p4, p5}, Landroid/media/MediaMetadataRetriever;->validate(III)V

    .line 723
    invoke-direct/range {p0 .. p6}, Landroid/media/MediaMetadataRetriever;->_getFrameAtTime(JIIILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public native greylist-max-o getThumbnailImageAtIndex(ILandroid/media/MediaMetadataRetriever$BitmapParams;II)Landroid/graphics/Bitmap;
.end method

.method public native whitelist release()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 367
    if-eqz p2, :cond_9

    .line 371
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_8

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_8

    .line 377
    :cond_0
    const/4 v1, 0x0

    .line 379
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    .local v2, "resolver":Landroid/content/ContentResolver;
    :try_start_1
    const-string v3, "fuse.sys.transcode_retriever_optimize"

    const/4 v4, 0x0

    .line 382
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 383
    .local v3, "optimize":Z
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 384
    .local v4, "opts":Landroid/os/Bundle;
    const-string v5, "android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 385
    if-eqz v3, :cond_1

    const-string v5, "*/*"

    invoke-virtual {v2, p2, v5, v4}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    goto :goto_0

    .line 386
    :cond_1
    const-string v5, "r"

    invoke-virtual {v2, p2, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    move-object v1, v5

    .line 389
    .end local v3    # "optimize":Z
    .end local v4    # "opts":Landroid/os/Bundle;
    nop

    .line 390
    if-eqz v1, :cond_5

    .line 393
    :try_start_2
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 394
    .local v3, "descriptor":Ljava/io/FileDescriptor;
    invoke-virtual {v3}, Ljava/io/FileDescriptor;->valid()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 400
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 401
    invoke-virtual {p0, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_1

    .line 403
    :cond_2
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v6

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v8

    move-object v4, p0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 409
    :goto_1
    if-eqz v1, :cond_3

    .line 410
    :try_start_3
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 412
    :catch_0
    move-exception v4

    goto :goto_3

    .line 413
    :cond_3
    :goto_2
    nop

    .line 405
    :goto_3
    return-void

    .line 395
    :cond_4
    :try_start_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got invalid FileDescriptor for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "scheme":Ljava/lang/String;
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local p0    # "this":Landroid/media/MediaMetadataRetriever;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "uri":Landroid/net/Uri;
    throw v4

    .line 391
    .end local v3    # "descriptor":Ljava/io/FileDescriptor;
    .restart local v0    # "scheme":Ljava/lang/String;
    .restart local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local p0    # "this":Landroid/media/MediaMetadataRetriever;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "uri":Landroid/net/Uri;
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got null FileDescriptor for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "scheme":Ljava/lang/String;
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local p0    # "this":Landroid/media/MediaMetadataRetriever;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "uri":Landroid/net/Uri;
    throw v3

    .line 387
    .restart local v0    # "scheme":Ljava/lang/String;
    .restart local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local p0    # "this":Landroid/media/MediaMetadataRetriever;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v3

    .line 388
    .local v3, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not access "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "scheme":Ljava/lang/String;
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local p0    # "this":Landroid/media/MediaMetadataRetriever;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "uri":Landroid/net/Uri;
    throw v4
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 408
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "scheme":Ljava/lang/String;
    .restart local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local p0    # "this":Landroid/media/MediaMetadataRetriever;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v2

    .line 409
    if-eqz v1, :cond_6

    .line 410
    :try_start_5
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 412
    :catch_2
    move-exception v3

    goto :goto_5

    .line 413
    :cond_6
    :goto_4
    nop

    .line 414
    :goto_5
    throw v2

    .line 406
    :catch_3
    move-exception v2

    .line 409
    if-eqz v1, :cond_7

    .line 410
    :try_start_6
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    .line 412
    :catch_4
    move-exception v2

    .line 414
    goto :goto_7

    .line 413
    :cond_7
    :goto_6
    nop

    .line 415
    :goto_7
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 416
    return-void

    .line 373
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    :cond_8
    :goto_8
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 374
    return-void

    .line 368
    .end local v0    # "scheme":Ljava/lang/String;
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDataSource(Landroid/media/MediaDataSource;)V
    .locals 0
    .param p1, "dataSource"    # Landroid/media/MediaDataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 425
    invoke-direct {p0, p1}, Landroid/media/MediaMetadataRetriever;->_setDataSource(Landroid/media/MediaDataSource;)V

    .line 426
    return-void
.end method

.method public whitelist setDataSource(Ljava/io/FileDescriptor;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 352
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 353
    return-void
.end method

.method public whitelist setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 326
    :try_start_0
    invoke-static {p1}, Landroid/os/FileUtils;->convertToModernFd(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .local v0, "modernFd":Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_0

    .line 328
    :try_start_1
    invoke-direct/range {p0 .. p5}, Landroid/media/MediaMetadataRetriever;->_setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    move-object v2, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/media/MediaMetadataRetriever;->_setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    :goto_0
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 334
    .end local v0    # "modernFd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    goto :goto_2

    .line 326
    .restart local v0    # "modernFd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/media/MediaMetadataRetriever;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "offset":J
    .end local p4    # "length":J
    :cond_2
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 332
    .end local v0    # "modernFd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/media/MediaMetadataRetriever;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "offset":J
    .restart local p4    # "length":J
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "MediaMetadataRetriever"

    const-string v2, "Ignoring IO error while setting data source"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method

.method public whitelist setDataSource(Ljava/lang/String;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 238
    if-eqz p1, :cond_3

    .line 242
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 243
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "scheme":Ljava/lang/String;
    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 246
    :cond_0
    if-eqz v1, :cond_1

    .line 247
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 248
    return-void

    .line 255
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 257
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 259
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 260
    .local v4, "fd":Ljava/io/FileDescriptor;
    const-wide/16 v5, 0x0

    const-wide v7, 0x7ffffffffffffffL

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    .end local v4    # "fd":Ljava/io/FileDescriptor;
    nop

    .line 272
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 274
    goto :goto_1

    :catch_0
    move-exception v3

    .line 275
    nop

    .line 277
    :goto_1
    return-void

    .line 270
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 263
    :catch_1
    move-exception v3

    .line 264
    .local v3, "ioEx":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t open "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local p0    # "this":Landroid/media/MediaMetadataRetriever;
    .end local p1    # "path":Ljava/lang/String;
    throw v4

    .line 261
    .end local v3    # "ioEx":Ljava/io/IOException;
    .restart local v0    # "uri":Landroid/net/Uri;
    .restart local v1    # "scheme":Ljava/lang/String;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    .restart local p0    # "this":Landroid/media/MediaMetadataRetriever;
    .restart local p1    # "path":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 262
    .local v3, "fileEx":Ljava/io/FileNotFoundException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local p0    # "this":Landroid/media/MediaMetadataRetriever;
    .end local p1    # "path":Ljava/lang/String;
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    .end local v3    # "fileEx":Ljava/io/FileNotFoundException;
    .restart local v0    # "uri":Landroid/net/Uri;
    .restart local v1    # "scheme":Ljava/lang/String;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    .restart local p0    # "this":Landroid/media/MediaMetadataRetriever;
    .restart local p1    # "path":Ljava/lang/String;
    :goto_2
    if-eqz v2, :cond_2

    .line 272
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 274
    :catch_3
    move-exception v4

    :cond_2
    :goto_3
    nop

    .line 275
    throw v3

    .line 239
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v2    # "is":Ljava/io/FileInputStream;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 290
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 291
    .local v0, "i":I
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 292
    .local v1, "keys":[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 293
    .local v2, "values":[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 294
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v0

    .line 295
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v2, v0

    .line 296
    nop

    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v0, v0, 0x1

    .line 297
    goto :goto_0

    .line 299
    :cond_0
    nop

    .line 300
    invoke-static {p1}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 299
    invoke-direct {p0, v3, p1, v1, v2}, Landroid/media/MediaMetadataRetriever;->_setDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 304
    return-void
.end method
