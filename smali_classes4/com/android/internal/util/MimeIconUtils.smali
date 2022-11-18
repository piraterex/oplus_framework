.class public Lcom/android/internal/util/MimeIconUtils;
.super Ljava/lang/Object;
.source "MimeIconUtils.java"


# static fields
.field private static final blacklist sCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/ContentResolver$MimeTypeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/MimeIconUtils;->sCache:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist buildGenericTypeInfo(Ljava/lang/String;)Landroid/content/ContentResolver$MimeTypeInfo;
    .locals 5
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 227
    const-string v0, "audio/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const v0, 0x1080395

    const v1, 0x10405b3

    const v2, 0x10405b4

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 230
    :cond_0
    const-string/jumbo v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    const v0, 0x10803a6

    const v1, 0x10405c2

    const v2, 0x10405c3

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 233
    :cond_1
    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    const v0, 0x10803a0

    const v1, 0x10405bc

    const v2, 0x10405bd

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 236
    :cond_2
    const-string/jumbo v0, "text/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    const v0, 0x10803a5

    const v1, 0x10405b7

    const v2, 0x10405b8

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 244
    :cond_3
    invoke-static {}, Llibcore/content/type/MimeMap;->getDefault()Llibcore/content/type/MimeMap;

    move-result-object v0

    .line 245
    .local v0, "mimeMap":Llibcore/content/type/MimeMap;
    nop

    .line 246
    invoke-virtual {v0, p0}, Llibcore/content/type/MimeMap;->guessExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llibcore/content/type/MimeMap;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "bouncedMimeType":Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-static {p0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 248
    invoke-static {v1}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v2

    return-object v2

    .line 252
    :cond_4
    const v2, 0x108039f

    const v3, 0x10405ba

    const v4, 0x10405bb

    invoke-static {p0, v2, v3, v4}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist buildTypeInfo(Ljava/lang/String;)Landroid/content/ContentResolver$MimeTypeInfo;
    .locals 10
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v0, "text/javascript"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x27

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v0, "text/x-c++src"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v0, "text/x-c++hdr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "application/x-x509-user-cert"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6a

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "application/rdf+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "application/mac-binhex40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x29

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "application/x-quicktimeplayer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "application/x-webarchive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x35

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "application/x-font-woff"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x41

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "application/vnd.stardivision.writer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5c

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "application/vnd.oasis.opendocument.spreadsheet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x51

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "application/x-kspread"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x56

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6f

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "application/x-pkcs12"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "application/x-object"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "application/font-woff"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "application/vnd.oasis.opendocument.text-master"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x59

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "application/x-7z-compressed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x38

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "application/javascript"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x25

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "application/vnd.oasis.opendocument.presentation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "application/x-latex"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "application/x-kword"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x62

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "application/vnd.sun.xml.impress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4c

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "application/vnd.oasis.opendocument.graphics-template"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x44

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "application/x-debian-package"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2d

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "application/x-apple-diskimage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    goto/16 :goto_1

    :sswitch_1b
    const-string/jumbo v0, "text/x-haskell"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_1c
    const-string v0, "application/x-pkcs7-crl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_1d
    const-string v0, "application/x-gtar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2e

    goto/16 :goto_1

    :sswitch_1e
    const-string v0, "application/x-font"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3f

    goto/16 :goto_1

    :sswitch_1f
    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x68

    goto/16 :goto_1

    :sswitch_20
    const-string v0, "application/x-pkcs7-certificates"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_21
    const-string v0, "application/msword"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x66

    goto/16 :goto_1

    :sswitch_22
    const-string v0, "application/x-abiword"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x61

    goto/16 :goto_1

    :sswitch_23
    const-string/jumbo v0, "text/x-tex"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_24
    const-string/jumbo v0, "text/x-tcl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_25
    const-string/jumbo v0, "text/x-csh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_26
    const-string/jumbo v0, "text/vcard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3c

    goto/16 :goto_1

    :sswitch_27
    const-string v0, "application/vnd.google-apps.document"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x63

    goto/16 :goto_1

    :sswitch_28
    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.template"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6e

    goto/16 :goto_1

    :sswitch_29
    const-string v0, "application/vnd.stardivision.impress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4b

    goto/16 :goto_1

    :sswitch_2a
    const-string v0, "application/x-texinfo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_2b
    const-string v0, "application/xhtml+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_2c
    const-string v0, "application/vnd.stardivision.writer-global"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5d

    goto/16 :goto_1

    :sswitch_2d
    const-string/jumbo v0, "text/x-vcard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3b

    goto/16 :goto_1

    :sswitch_2e
    const-string v0, "application/vnd.oasis.opendocument.graphics"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x43

    goto/16 :goto_1

    :sswitch_2f
    const-string v0, "application/pgp-keys"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_30
    const-string v0, "application/x-rar-compressed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3a

    goto/16 :goto_1

    :sswitch_31
    const-string v0, "application/ecmascript"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    goto/16 :goto_1

    :sswitch_32
    const-string/jumbo v0, "vnd.android.document/directory"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_33
    const-string/jumbo v0, "text/x-vcalendar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e

    goto/16 :goto_1

    :sswitch_34
    const-string v0, "application/vnd.google-apps.drawing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x49

    goto/16 :goto_1

    :sswitch_35
    const-string v0, "application/x-stuffit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x33

    goto/16 :goto_1

    :sswitch_36
    const-string v0, "application/pgp-signature"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_37
    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_38
    const-string v0, "application/x-iso9660-image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    goto/16 :goto_1

    :sswitch_39
    const-string v0, "application/json"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x24

    goto/16 :goto_1

    :sswitch_3a
    const-string v0, "application/gzip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x37

    goto/16 :goto_1

    :sswitch_3b
    const-string v0, "application/vnd.oasis.opendocument.spreadsheet-template"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x52

    goto/16 :goto_1

    :sswitch_3c
    const-string v0, "application/x-font-ttf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x42

    goto/16 :goto_1

    :sswitch_3d
    const-string v0, "application/x-pkcs7-mime"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_3e
    const-string/jumbo v0, "text/x-java"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_3f
    const-string/jumbo v0, "text/x-dsrc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_40
    const-string/jumbo v0, "text/x-csrc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_41
    const-string/jumbo v0, "text/x-chdr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_42
    const-string v0, "application/vnd.ms-excel"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x69

    goto/16 :goto_1

    :sswitch_43
    const-string v0, "application/vnd.sun.xml.impress.template"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4d

    goto/16 :goto_1

    :sswitch_44
    const-string v0, "application/x-webarchive-xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x36

    goto/16 :goto_1

    :sswitch_45
    const-string v0, "application/vnd.sun.xml.writer.global"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5f

    goto/16 :goto_1

    :sswitch_46
    const-string v0, "application/vnd.oasis.opendocument.text-web"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5b

    goto/16 :goto_1

    :sswitch_47
    const-string v0, "application/x-javascript"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    goto/16 :goto_1

    :sswitch_48
    const-string v0, "application/vnd.sun.xml.draw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x47

    goto/16 :goto_1

    :sswitch_49
    const-string v0, "application/vnd.sun.xml.calc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x54

    goto/16 :goto_1

    :sswitch_4a
    const-string v0, "application/vnd.google-apps.presentation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x50

    goto/16 :goto_1

    :sswitch_4b
    const-string/jumbo v0, "text/calendar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3d

    goto/16 :goto_1

    :sswitch_4c
    const-string/jumbo v0, "text/xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_4d
    const-string/jumbo v0, "text/css"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_4e
    const-string v0, "application/vnd.sun.xml.draw.template"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x48

    goto/16 :goto_1

    :sswitch_4f
    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x67

    goto/16 :goto_1

    :sswitch_50
    const-string v0, "application/vnd.ms-powerpoint"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6c

    goto/16 :goto_1

    :sswitch_51
    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6d

    goto/16 :goto_1

    :sswitch_52
    const-string/jumbo v0, "text/html"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_53
    const-string v0, "application/x-pkcs7-certreqresp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_54
    const-string v0, "application/x-pkcs7-signature"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_55
    const-string v0, "application/zip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2b

    goto/16 :goto_1

    :sswitch_56
    const-string v0, "application/xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x26

    goto/16 :goto_1

    :sswitch_57
    const-string v0, "application/rar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2a

    goto/16 :goto_1

    :sswitch_58
    const-string v0, "application/pdf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4a

    goto/16 :goto_1

    :sswitch_59
    const-string v0, "inode/directory"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_5a
    const-string v0, "application/atom+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    goto/16 :goto_1

    :sswitch_5b
    const-string v0, "application/vnd.oasis.opendocument.text-template"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5a

    goto/16 :goto_1

    :sswitch_5c
    const-string v0, "application/x-shockwave-flash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x65

    goto/16 :goto_1

    :sswitch_5d
    const-string v0, "application/x-tar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x34

    goto/16 :goto_1

    :sswitch_5e
    const-string v0, "application/x-lzx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x32

    goto/16 :goto_1

    :sswitch_5f
    const-string v0, "application/x-lzh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x31

    goto/16 :goto_1

    :sswitch_60
    const-string v0, "application/x-lha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x30

    goto/16 :goto_1

    :sswitch_61
    const-string v0, "application/x-deb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x39

    goto/16 :goto_1

    :sswitch_62
    const-string v0, "application/x-kpresenter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4e

    goto/16 :goto_1

    :sswitch_63
    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6b

    goto/16 :goto_1

    :sswitch_64
    const-string v0, "application/vnd.sun.xml.calc.template"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x55

    goto/16 :goto_1

    :sswitch_65
    const-string v0, "application/vnd.sun.xml.writer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5e

    goto/16 :goto_1

    :sswitch_66
    const-string v0, "application/vnd.oasis.opendocument.text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x58

    goto/16 :goto_1

    :sswitch_67
    const-string v0, "application/vnd.sun.xml.writer.template"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x60

    goto :goto_1

    :sswitch_68
    const-string v0, "application/vnd.oasis.opendocument.image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x45

    goto :goto_1

    :sswitch_69
    const-string/jumbo v0, "text/x-pascal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_1

    :sswitch_6a
    const-string v0, "application/rss+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_6b
    const-string/jumbo v0, "text/x-literate-haskell"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto :goto_1

    :sswitch_6c
    const-string v0, "application/x-x509-ca-cert"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_6d
    const-string v0, "application/vnd.google-apps.spreadsheet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x57

    goto :goto_1

    :sswitch_6e
    const-string v0, "application/vnd.stardivision.draw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x46

    goto :goto_1

    :sswitch_6f
    const-string v0, "application/vnd.stardivision.calc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x53

    goto :goto_1

    :goto_0
    move v0, v1

    :goto_1
    const v2, 0x10405c1

    const v3, 0x10405c0

    const v4, 0x10405bf

    const v5, 0x10405be

    const v6, 0x10405b8

    const v7, 0x10405b7

    const v8, 0x10405bb

    const v9, 0x10405ba

    packed-switch v0, :pswitch_data_0

    .line 221
    invoke-static {p0}, Lcom/android/internal/util/MimeIconUtils;->buildGenericTypeInfo(Ljava/lang/String;)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 217
    :pswitch_0
    const v0, 0x10803a2

    invoke-static {p0, v0, v5, v4}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 210
    :pswitch_1
    const v0, 0x108039c

    invoke-static {p0, v0, v3, v2}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 204
    :pswitch_2
    const v0, 0x10803a7

    invoke-static {p0, v0, v7, v6}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 198
    :pswitch_3
    const v0, 0x10803a6

    const v1, 0x10405c2

    const v2, 0x10405c3

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 193
    :pswitch_4
    const v0, 0x108039a

    invoke-static {p0, v0, v7, v6}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 178
    :pswitch_5
    const v0, 0x10803a4

    invoke-static {p0, v0, v3, v2}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 168
    :pswitch_6
    const v0, 0x10803a3

    invoke-static {p0, v0, v5, v4}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 159
    :pswitch_7
    const v0, 0x10803a1

    invoke-static {p0, v0, v7, v6}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 155
    :pswitch_8
    const v0, 0x10803a0

    const v1, 0x10405bc

    const v2, 0x10405bd

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 145
    :pswitch_9
    const v0, 0x108039e

    invoke-static {p0, v0, v9, v8}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 138
    :pswitch_a
    const v0, 0x108039b

    invoke-static {p0, v0, v9, v8}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 133
    :pswitch_b
    const v0, 0x1080399

    invoke-static {p0, v0, v9, v8}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 128
    :pswitch_c
    const v0, 0x1080398

    const v1, 0x10405b5

    const v2, 0x10405b6

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 107
    :pswitch_d
    const v0, 0x1080397

    invoke-static {p0, v0, v7, v6}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 76
    :pswitch_e
    const v0, 0x1080396

    invoke-static {p0, v0, v9, v8}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 63
    :pswitch_f
    const v0, 0x1080394

    const v2, 0x10405b2

    invoke-static {p0, v0, v2, v1}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 59
    :pswitch_10
    const v0, 0x108039d

    const v2, 0x10405b9

    invoke-static {p0, v0, v2, v1}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f44465d -> :sswitch_6f
        -0x7f43936e -> :sswitch_6e
        -0x7955041d -> :sswitch_6d
        -0x76852540 -> :sswitch_6c
        -0x72487174 -> :sswitch_6b
        -0x70497061 -> :sswitch_6a
        -0x6bce7a7d -> :sswitch_69
        -0x69ebbc0a -> :sswitch_68
        -0x68255665 -> :sswitch_67
        -0x667e94ce -> :sswitch_66
        -0x610e9853 -> :sswitch_65
        -0x5ed1e487 -> :sswitch_64
        -0x59c3e1a9 -> :sswitch_63
        -0x529f368f -> :sswitch_62
        -0x505c7453 -> :sswitch_61
        -0x505c55ef -> :sswitch_60
        -0x505c53ba -> :sswitch_5f
        -0x505c53aa -> :sswitch_5e
        -0x505c38af -> :sswitch_5d
        -0x4f184216 -> :sswitch_5c
        -0x4e7ea34b -> :sswitch_5b
        -0x4d468544 -> :sswitch_5a
        -0x4d29f4b7 -> :sswitch_59
        -0x4a68144d -> :sswitch_58
        -0x4a680d1c -> :sswitch_57
        -0x4a67f528 -> :sswitch_56
        -0x4a67ee1e -> :sswitch_55
        -0x46f4a83d -> :sswitch_54
        -0x442bbceb -> :sswitch_53
        -0x4081b8b3 -> :sswitch_52
        -0x3ffe58cb -> :sswitch_51
        -0x3fe2a28f -> :sswitch_50
        -0x3ea35d2d -> :sswitch_4f
        -0x3d99ba96 -> :sswitch_4e
        -0x3be339df -> :sswitch_4d
        -0x3be2ebcb -> :sswitch_4c
        -0x39206620 -> :sswitch_4b
        -0x38b79e1d -> :sswitch_4a
        -0x2e7d3bf1 -> :sswitch_49
        -0x2e7c8902 -> :sswitch_48
        -0x2b19e7bf -> :sswitch_47
        -0x28553dc7 -> :sswitch_46
        -0x1c904afc -> :sswitch_45
        -0x1978be74 -> :sswitch_44
        -0x17a6095d -> :sswitch_43
        -0x15d566cf -> :sswitch_42
        -0xf95e0f6 -> :sswitch_41
        -0xf95b608 -> :sswitch_40
        -0xf9541a9 -> :sswitch_3f
        -0xf92ca87 -> :sswitch_3e
        -0xd9915b7 -> :sswitch_3d
        -0xd3a98c4 -> :sswitch_3c
        -0x6850aa0 -> :sswitch_3b
        -0x29e3947 -> :sswitch_3a
        -0x29cf5b9 -> :sswitch_39
        0x19ac196 -> :sswitch_38
        0x4d6213b -> :sswitch_37
        0x9c18ec5 -> :sswitch_36
        0xabdbfcb -> :sswitch_35
        0xea677b5 -> :sswitch_34
        0xfa318bd -> :sswitch_33
        0x12030ada -> :sswitch_32
        0x120a481c -> :sswitch_31
        0x15b1ac3f -> :sswitch_30
        0x1785e3c7 -> :sswitch_2f
        0x198f4610 -> :sswitch_2e
        0x1de3300f -> :sswitch_2d
        0x22098aaf -> :sswitch_2c
        0x23fe04b0 -> :sswitch_2b
        0x26370b01 -> :sswitch_2a
        0x27e80391 -> :sswitch_29
        0x2967ba15 -> :sswitch_28
        0x2ac50064 -> :sswitch_27
        0x31080524 -> :sswitch_26
        0x310bafc1 -> :sswitch_25
        0x310beda6 -> :sswitch_24
        0x310bedf0 -> :sswitch_23
        0x33351d1e -> :sswitch_22
        0x35ebd34f -> :sswitch_21
        0x3e33d2d1 -> :sswitch_20
        0x3f3a9e32 -> :sswitch_1f
        0x44cefa23 -> :sswitch_1e
        0x44cf7fb2 -> :sswitch_1d
        0x49e22528 -> :sswitch_1c
        0x4ad1033d -> :sswitch_1b
        0x4c7ff8d7 -> :sswitch_1a
        0x4dd74e02 -> :sswitch_19
        0x5218db97 -> :sswitch_18
        0x527dd1a5 -> :sswitch_17
        0x555a66a1 -> :sswitch_16
        0x555e8f3e -> :sswitch_15
        0x55a6501f -> :sswitch_14
        0x55db338c -> :sswitch_13
        0x56aaa917 -> :sswitch_12
        0x57208d5d -> :sswitch_11
        0x598d9a57 -> :sswitch_10
        0x5b9b6c13 -> :sswitch_f
        0x5dcc17e0 -> :sswitch_e
        0x5e059df3 -> :sswitch_d
        0x6196074a -> :sswitch_c
        0x61f85627 -> :sswitch_b
        0x63c34841 -> :sswitch_a
        0x65e8cb02 -> :sswitch_9
        0x6e61adc2 -> :sswitch_8
        0x6f632747 -> :sswitch_7
        0x7422834d -> :sswitch_6
        0x7566acc1 -> :sswitch_5
        0x76d7a0a2 -> :sswitch_4
        0x79ada833 -> :sswitch_3
        0x7ae8e8aa -> :sswitch_2
        0x7ae91398 -> :sswitch_1
        0x7f17578f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;
    .locals 5
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "iconId"    # I
    .param p2, "labelId"    # I
    .param p3, "extLabelId"    # I

    .line 41
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 45
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {}, Llibcore/content/type/MimeMap;->getDefault()Llibcore/content/type/MimeMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Llibcore/content/type/MimeMap;->guessExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "ext":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    if-eq p3, v2, :cond_0

    .line 47
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "label":Ljava/lang/CharSequence;
    goto :goto_0

    .line 49
    .end local v2    # "label":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 52
    .restart local v2    # "label":Ljava/lang/CharSequence;
    :goto_0
    new-instance v3, Landroid/content/ContentResolver$MimeTypeInfo;

    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-direct {v3, v4, v2, v2}, Landroid/content/ContentResolver$MimeTypeInfo;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v3
.end method

.method public static blacklist getTypeInfo(Ljava/lang/String;)Landroid/content/ContentResolver$MimeTypeInfo;
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 258
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 260
    sget-object v0, Lcom/android/internal/util/MimeIconUtils;->sCache:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 261
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentResolver$MimeTypeInfo;

    .line 262
    .local v1, "res":Landroid/content/ContentResolver$MimeTypeInfo;
    if-nez v1, :cond_0

    .line 263
    invoke-static {p0}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v2

    move-object v1, v2

    .line 264
    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_0
    monitor-exit v0

    return-object v1

    .line 267
    .end local v1    # "res":Landroid/content/ContentResolver$MimeTypeInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
