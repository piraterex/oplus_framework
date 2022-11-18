.class public Landroid/graphics/ImageFormat;
.super Ljava/lang/Object;
.source "ImageFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ImageFormat$Format;
    }
.end annotation


# static fields
.field public static final whitelist DEPTH16:I = 0x44363159

.field public static final whitelist DEPTH_JPEG:I = 0x69656963

.field public static final whitelist DEPTH_POINT_CLOUD:I = 0x101

.field public static final whitelist FLEX_RGBA_8888:I = 0x2a

.field public static final whitelist FLEX_RGB_888:I = 0x29

.field public static final whitelist HEIC:I = 0x48454946

.field public static final whitelist JPEG:I = 0x100

.field public static final whitelist NV16:I = 0x10

.field public static final whitelist NV21:I = 0x11

.field public static final whitelist PRIVATE:I = 0x22

.field public static final whitelist RAW10:I = 0x25

.field public static final whitelist RAW12:I = 0x26

.field public static final greylist-max-o RAW_DEPTH:I = 0x1002

.field public static final blacklist RAW_DEPTH10:I = 0x1003

.field public static final whitelist RAW_PRIVATE:I = 0x24

.field public static final whitelist RAW_SENSOR:I = 0x20

.field public static final whitelist RGB_565:I = 0x4

.field public static final whitelist UNKNOWN:I = 0x0

.field public static final greylist-max-o Y16:I = 0x20363159

.field public static final whitelist Y8:I = 0x20203859

.field public static final whitelist YCBCR_P010:I = 0x36

.field public static final whitelist YUV_420_888:I = 0x23

.field public static final whitelist YUV_422_888:I = 0x27

.field public static final whitelist YUV_444_888:I = 0x28

.field public static final whitelist YUY2:I = 0x14

.field public static final whitelist YV12:I = 0x32315659


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getBitsPerPixel(I)I
    .locals 3
    .param p0, "format"    # I

    .line 801
    const/16 v0, 0x18

    const/16 v1, 0xc

    const/16 v2, 0x10

    sparse-switch p0, :sswitch_data_0

    .line 844
    const/4 v0, -0x1

    return v0

    .line 809
    :sswitch_0
    return v1

    .line 814
    :sswitch_1
    return v2

    .line 811
    :sswitch_2
    const/16 v0, 0x8

    return v0

    .line 831
    :sswitch_3
    invoke-static {}, Landroid/os/Build;->isQcomPlatform()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 833
    return v0

    .line 836
    :cond_0
    const/16 v0, 0x14

    return v0

    .line 826
    :sswitch_4
    const/16 v0, 0x20

    return v0

    .line 824
    :sswitch_5
    return v0

    .line 822
    :sswitch_6
    return v0

    .line 820
    :sswitch_7
    return v2

    .line 842
    :sswitch_8
    return v1

    .line 840
    :sswitch_9
    const/16 v0, 0xa

    return v0

    .line 818
    :sswitch_a
    return v1

    .line 829
    :sswitch_b
    return v2

    .line 807
    :sswitch_c
    return v2

    .line 816
    :sswitch_d
    return v1

    .line 805
    :sswitch_e
    return v2

    .line 803
    :sswitch_f
    return v2

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_f
        0x10 -> :sswitch_e
        0x11 -> :sswitch_d
        0x14 -> :sswitch_c
        0x20 -> :sswitch_b
        0x23 -> :sswitch_a
        0x25 -> :sswitch_9
        0x26 -> :sswitch_8
        0x27 -> :sswitch_7
        0x28 -> :sswitch_6
        0x29 -> :sswitch_5
        0x2a -> :sswitch_4
        0x36 -> :sswitch_3
        0x1002 -> :sswitch_b
        0x1003 -> :sswitch_9
        0x20203859 -> :sswitch_2
        0x20363159 -> :sswitch_1
        0x32315659 -> :sswitch_0
        0x44363159 -> :sswitch_1
    .end sparse-switch
.end method

.method public static greylist-max-o isPublicFormat(I)Z
    .locals 1
    .param p0, "format"    # I

    .line 860
    sparse-switch p0, :sswitch_data_0

    .line 888
    const/4 v0, 0x0

    return v0

    .line 885
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x14 -> :sswitch_0
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
        0x25 -> :sswitch_0
        0x26 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2a -> :sswitch_0
        0x36 -> :sswitch_0
        0x100 -> :sswitch_0
        0x101 -> :sswitch_0
        0x1002 -> :sswitch_0
        0x1003 -> :sswitch_0
        0x20203859 -> :sswitch_0
        0x32315659 -> :sswitch_0
        0x44363159 -> :sswitch_0
        0x48454946 -> :sswitch_0
        0x69656963 -> :sswitch_0
    .end sparse-switch
.end method
