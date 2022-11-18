.class public final Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo$VideoCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PerformancePoint"
.end annotation


# static fields
.field public static final whitelist FHD_100:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist FHD_120:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist FHD_200:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist FHD_24:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist FHD_240:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist FHD_25:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist FHD_30:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist FHD_50:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist FHD_60:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist HD_100:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist HD_120:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist HD_200:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist HD_24:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist HD_240:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist HD_25:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist HD_30:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist HD_50:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist HD_60:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist SD_24:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist SD_25:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist SD_30:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist SD_48:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist SD_50:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist SD_60:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist UHD_100:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist UHD_120:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist UHD_200:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist UHD_24:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist UHD_240:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist UHD_25:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist UHD_30:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist UHD_50:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist UHD_60:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;


# instance fields
.field private blacklist mBlockSize:Landroid/util/Size;

.field private blacklist mHeight:I

.field private blacklist mMaxFrameRate:I

.field private blacklist mMaxMacroBlockRate:J

.field private blacklist mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 12

    .line 2122
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v1, 0x2d0

    const/16 v2, 0x1e0

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->SD_24:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2125
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v4, 0x240

    const/16 v5, 0x19

    invoke-direct {v0, v1, v4, v5}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->SD_25:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2128
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v6, 0x1e

    invoke-direct {v0, v1, v2, v6}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->SD_30:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2131
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v7, 0x30

    invoke-direct {v0, v1, v2, v7}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->SD_48:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2134
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v7, 0x32

    invoke-direct {v0, v1, v4, v7}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->SD_50:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2137
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v4, 0x3c

    invoke-direct {v0, v1, v2, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->SD_60:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2141
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v2, 0x500

    invoke-direct {v0, v2, v1, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->HD_24:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2144
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v2, v1, v5}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->HD_25:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2147
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v2, v1, v6}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->HD_30:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2150
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v2, v1, v7}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->HD_50:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2153
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v2, v1, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->HD_60:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2156
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v8, 0x64

    invoke-direct {v0, v2, v1, v8}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->HD_100:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2159
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v9, 0x78

    invoke-direct {v0, v2, v1, v9}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->HD_120:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2162
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v10, 0xc8

    invoke-direct {v0, v2, v1, v10}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->HD_200:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2165
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v11, 0xf0

    invoke-direct {v0, v2, v1, v11}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->HD_240:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2169
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->FHD_24:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2172
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v5}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->FHD_25:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2175
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v6}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->FHD_30:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2178
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v7}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->FHD_50:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2181
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->FHD_60:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2184
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v8}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->FHD_100:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2187
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v9}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->FHD_120:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2190
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v10}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->FHD_200:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2193
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v11}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->FHD_240:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2197
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v1, 0xf00

    const/16 v2, 0x870

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->UHD_24:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2200
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v5}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->UHD_25:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2203
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v6}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->UHD_30:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2206
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v7}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->UHD_50:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2209
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->UHD_60:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2212
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v8}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->UHD_100:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2215
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v9}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->UHD_120:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2218
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v10}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->UHD_200:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2221
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v11}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->UHD_240:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    return-void
.end method

.method public constructor whitelist <init>(III)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # I

    .line 2032
    new-instance v5, Landroid/util/Size;

    const/16 v0, 0x10

    invoke-direct {v5, v0, v0}, Landroid/util/Size;-><init>(II)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(IIIILandroid/util/Size;)V

    .line 2033
    return-void
.end method

.method public constructor blacklist <init>(IIIILandroid/util/Size;)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # I
    .param p4, "maxFrameRate"    # I
    .param p5, "blockSize"    # Landroid/util/Size;

    .line 1987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1988
    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    move-result v0

    const-string v1, "block width"

    invoke-static {v0, v1}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    .line 1989
    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result v0

    const-string v1, "block height"

    invoke-static {v0, v1}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    .line 1991
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    .line 1992
    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    .line 1994
    int-to-long v0, p1

    const-wide/16 v3, 0x1

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1995
    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v5, v5

    .line 1994
    invoke-static {v0, v1, v5, v6}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v0

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    .line 1996
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v0, v5

    long-to-int v0, v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mWidth:I

    .line 1997
    int-to-long v0, p2

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1998
    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    .line 1997
    invoke-static {v0, v1, v2, v3}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v0

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    .line 1999
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mHeight:I

    .line 2000
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    .line 2001
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxMacroBlockRate:J

    .line 2002
    return-void
.end method

.method public constructor blacklist <init>(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/util/Size;)V
    .locals 8
    .param p1, "pp"    # Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    .param p2, "newBlockSize"    # Landroid/util/Size;

    .line 2014
    iget v0, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mWidth:I

    mul-int/lit8 v2, v0, 0x10

    iget v0, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mHeight:I

    mul-int/lit8 v3, v0, 0x10

    iget-wide v0, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxMacroBlockRate:J

    .line 2017
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v0, v1, v4, v5}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v0

    long-to-int v4, v0

    iget v5, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    new-instance v6, Landroid/util/Size;

    .line 2019
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2020
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object v7, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    mul-int/lit8 v7, v7, 0x10

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v6, v0, v1}, Landroid/util/Size;-><init>(II)V

    .line 2014
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(IIIILandroid/util/Size;)V

    .line 2022
    return-void
.end method

.method private blacklist align(II)I
    .locals 1
    .param p1, "value"    # I
    .param p2, "alignment"    # I

    .line 2048
    invoke-static {p1, p2}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    mul-int/2addr v0, p2

    return v0
.end method

.method private blacklist checkPowerOfTwo2(ILjava/lang/String;)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 2053
    if-eqz p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 2057
    return-void

    .line 2054
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") must be a power of 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getCommonBlockSize(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Landroid/util/Size;
    .locals 4
    .param p1, "other"    # Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2099
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    .line 2100
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    .line 2101
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v3, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 2099
    return-object v0
.end method

.method private blacklist saturateLongToInt(J)I
    .locals 2
    .param p1, "value"    # J

    .line 2037
    const-wide/32 v0, -0x80000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 2038
    const/high16 v0, -0x80000000

    return v0

    .line 2039
    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 2040
    const v0, 0x7fffffff

    return v0

    .line 2042
    :cond_1
    long-to-int v0, p1

    return v0
.end method


# virtual methods
.method public whitelist covers(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Z
    .locals 7
    .param p1, "other"    # Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2089
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getCommonBlockSize(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Landroid/util/Size;

    move-result-object v0

    .line 2090
    .local v0, "commonSize":Landroid/util/Size;
    new-instance v1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v1, p0, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/util/Size;)V

    .line 2091
    .local v1, "aligned":Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    new-instance v2, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v2, p1, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/util/Size;)V

    .line 2093
    .local v2, "otherAligned":Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v3

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v4

    if-lt v3, v4, :cond_0

    iget v3, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    iget v4, v2, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    if-lt v3, v4, :cond_0

    iget-wide v3, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxMacroBlockRate:J

    iget-wide v5, v2, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxMacroBlockRate:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public whitelist covers(Landroid/media/MediaFormat;)Z
    .locals 6
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 2067
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2068
    const-string/jumbo v1, "width"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v1

    .line 2069
    const-string v3, "height"

    invoke-virtual {p1, v3, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v3

    .line 2072
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "frame-rate"

    invoke-virtual {p1, v4, v2}, Landroid/media/MediaFormat;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    .line 2073
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 2072
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 2071
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    .line 2074
    .local v0, "other":Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->covers(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 2106
    instance-of v0, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2108
    move-object v0, p1

    check-cast v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2109
    .local v0, "other":Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    invoke-direct {p0, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getCommonBlockSize(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Landroid/util/Size;

    move-result-object v2

    .line 2110
    .local v2, "commonSize":Landroid/util/Size;
    new-instance v3, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v3, p0, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/util/Size;)V

    .line 2111
    .local v3, "aligned":Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    new-instance v4, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v4, v0, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/util/Size;)V

    .line 2113
    .local v4, "otherAligned":Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v5

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v6

    if-ne v5, v6, :cond_0

    iget v5, v3, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    iget v6, v4, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    if-ne v5, v6, :cond_0

    iget-wide v5, v3, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxMacroBlockRate:J

    iget-wide v7, v4, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxMacroBlockRate:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 2117
    .end local v0    # "other":Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    .end local v2    # "commonSize":Landroid/util/Size;
    .end local v3    # "aligned":Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    .end local v4    # "otherAligned":Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    :cond_1
    return v1
.end method

.method public blacklist getMaxFrameRate()I
    .locals 1

    .line 1935
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    return v0
.end method

.method public blacklist getMaxMacroBlockRate()J
    .locals 2

    .line 1945
    iget-wide v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxMacroBlockRate:J

    return-wide v0
.end method

.method public blacklist getMaxMacroBlocks()I
    .locals 4

    .line 1925
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mWidth:I

    int-to-long v0, v0

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mHeight:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->saturateLongToInt(J)I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 1967
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 8

    .line 1950
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    const/16 v1, 0x10

    mul-int/2addr v0, v1

    .line 1951
    .local v0, "blockWidth":I
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    mul-int/2addr v2, v1

    .line 1952
    .local v2, "blockHeight":I
    iget-wide v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxMacroBlockRate:J

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 1953
    .local v3, "origRate":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mWidth:I

    mul-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mHeight:I

    mul-int/2addr v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "@"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1954
    .local v4, "info":Ljava/lang/String;
    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    if-ge v3, v6, :cond_0

    .line 1955
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", max "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "fps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1957
    :cond_0
    if-gt v0, v1, :cond_1

    if-le v2, v1, :cond_2

    .line 1958
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " blocks"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1960
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PerformancePoint("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
