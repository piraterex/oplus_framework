.class public final Landroid/hardware/camera2/params/StreamConfigurationMap;
.super Ljava/lang/Object;
.source "StreamConfigurationMap.java"


# static fields
.field private static final greylist-max-o DURATION_20FPS_NS:J = 0x2faf080L

.field private static final greylist-max-o DURATION_MIN_FRAME:I = 0x0

.field private static final greylist-max-o DURATION_STALL:I = 0x1

.field public static final greylist-max-o HAL_DATASPACE_DEPTH:I = 0x1000

.field public static final blacklist HAL_DATASPACE_DYNAMIC_DEPTH:I = 0x1002

.field public static final blacklist HAL_DATASPACE_HEIF:I = 0x1003

.field private static final greylist-max-o HAL_DATASPACE_RANGE_SHIFT:I = 0x1b

.field private static final greylist-max-o HAL_DATASPACE_STANDARD_SHIFT:I = 0x10

.field private static final greylist-max-o HAL_DATASPACE_TRANSFER_SHIFT:I = 0x16

.field private static final greylist-max-o HAL_DATASPACE_UNKNOWN:I = 0x0

.field public static final greylist-max-o HAL_DATASPACE_V0_JFIF:I = 0x8c20000

.field public static final greylist-max-o HAL_PIXEL_FORMAT_BLOB:I = 0x21

.field private static final greylist-max-o HAL_PIXEL_FORMAT_IMPLEMENTATION_DEFINED:I = 0x22

.field private static final greylist-max-o HAL_PIXEL_FORMAT_RAW10:I = 0x25

.field private static final greylist-max-o HAL_PIXEL_FORMAT_RAW12:I = 0x26

.field private static final greylist-max-o HAL_PIXEL_FORMAT_RAW16:I = 0x20

.field private static final greylist-max-o HAL_PIXEL_FORMAT_RAW_OPAQUE:I = 0x24

.field private static final greylist-max-o HAL_PIXEL_FORMAT_Y16:I = 0x20363159

.field private static final greylist-max-o HAL_PIXEL_FORMAT_YCbCr_420_888:I = 0x23

.field private static final blacklist MAX_DIMEN_FOR_ROUNDING:I = 0x780

.field private static final greylist-max-o TAG:Ljava/lang/String; = "StreamConfigurationMap"


# instance fields
.field private final greylist-max-o mAllOutputFormats:Landroid/util/SparseIntArray;

.field private final greylist-max-o mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

.field private final greylist-max-o mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

.field private final greylist-max-o mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final greylist-max-o mDepthOutputFormats:Landroid/util/SparseIntArray;

.field private final greylist-max-o mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final blacklist mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

.field private final blacklist mDynamicDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final blacklist mDynamicDepthOutputFormats:Landroid/util/SparseIntArray;

.field private final blacklist mDynamicDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final blacklist mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

.field private final blacklist mHeicMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final blacklist mHeicOutputFormats:Landroid/util/SparseIntArray;

.field private final blacklist mHeicStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final greylist-max-o mHighResOutputFormats:Landroid/util/SparseIntArray;

.field private final greylist-max-o mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

.field private final greylist-max-o mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mHighSpeedVideoSizeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Size;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mInputFormats:Landroid/util/SparseIntArray;

.field private final greylist-max-o mInputOutputFormatsMap:Landroid/hardware/camera2/params/ReprocessFormatsMap;

.field private final greylist-max-o mListHighResolution:Z

.field private final greylist-max-o mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final greylist-max-o mOutputFormats:Landroid/util/SparseIntArray;

.field private final greylist-max-o mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;


# direct methods
.method public constructor blacklist <init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;Z)V
    .locals 17
    .param p1, "configurations"    # [Landroid/hardware/camera2/params/StreamConfiguration;
    .param p2, "minFrameDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p3, "stallDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p4, "depthConfigurations"    # [Landroid/hardware/camera2/params/StreamConfiguration;
    .param p5, "depthMinFrameDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p6, "depthStallDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p7, "dynamicDepthConfigurations"    # [Landroid/hardware/camera2/params/StreamConfiguration;
    .param p8, "dynamicDepthMinFrameDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p9, "dynamicDepthStallDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p10, "heicConfigurations"    # [Landroid/hardware/camera2/params/StreamConfiguration;
    .param p11, "heicMinFrameDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p12, "heicStallDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p13, "highSpeedVideoConfigurations"    # [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    .param p14, "inputOutputFormatsMap"    # Landroid/hardware/camera2/params/ReprocessFormatsMap;
    .param p15, "listHighResolution"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    .line 123
    const/16 v16, 0x1

    invoke-direct/range {v0 .. v16}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;ZZ)V

    .line 130
    return-void
.end method

.method public constructor blacklist <init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;ZZ)V
    .locals 26
    .param p1, "configurations"    # [Landroid/hardware/camera2/params/StreamConfiguration;
    .param p2, "minFrameDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p3, "stallDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p4, "depthConfigurations"    # [Landroid/hardware/camera2/params/StreamConfiguration;
    .param p5, "depthMinFrameDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p6, "depthStallDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p7, "dynamicDepthConfigurations"    # [Landroid/hardware/camera2/params/StreamConfiguration;
    .param p8, "dynamicDepthMinFrameDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p9, "dynamicDepthStallDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p10, "heicConfigurations"    # [Landroid/hardware/camera2/params/StreamConfiguration;
    .param p11, "heicMinFrameDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p12, "heicStallDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p13, "highSpeedVideoConfigurations"    # [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    .param p14, "inputOutputFormatsMap"    # Landroid/hardware/camera2/params/ReprocessFormatsMap;
    .param p15, "listHighResolution"    # Z
    .param p16, "enforceImplementationDefined"    # Z

    .line 184
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    move-object/from16 v4, p10

    move-object/from16 v5, p13

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1981
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    .line 1984
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighResOutputFormats:Landroid/util/SparseIntArray;

    .line 1986
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    .line 1988
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    .line 1990
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    .line 1992
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthOutputFormats:Landroid/util/SparseIntArray;

    .line 1994
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicOutputFormats:Landroid/util/SparseIntArray;

    .line 1997
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    .line 2000
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    .line 186
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-eqz v4, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "At least one of color/depth/heic configurations must not be null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 193
    :cond_1
    :goto_0
    const/4 v6, 0x0

    if-nez v1, :cond_2

    .line 195
    new-array v7, v6, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v7, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 196
    new-array v7, v6, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v7, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 197
    new-array v7, v6, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v7, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    goto :goto_1

    .line 199
    :cond_2
    const-string v7, "configurations"

    invoke-static {v1, v7}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v7, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 200
    const-string/jumbo v7, "minFrameDurations"

    move-object/from16 v8, p2

    invoke-static {v8, v7}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v7, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 201
    const-string/jumbo v7, "stallDurations"

    move-object/from16 v9, p3

    invoke-static {v9, v7}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v7, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 204
    :goto_1
    move/from16 v7, p15

    iput-boolean v7, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    .line 206
    if-nez v2, :cond_3

    .line 207
    new-array v10, v6, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 208
    new-array v10, v6, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 209
    new-array v10, v6, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    goto :goto_2

    .line 211
    :cond_3
    const-string v10, "depthConfigurations"

    invoke-static {v2, v10}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 213
    const-string v10, "depthMinFrameDurations"

    move-object/from16 v11, p5

    invoke-static {v11, v10}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 215
    const-string v10, "depthStallDurations"

    move-object/from16 v12, p6

    invoke-static {v12, v10}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 219
    :goto_2
    if-nez v3, :cond_4

    .line 220
    new-array v10, v6, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 221
    new-array v10, v6, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 222
    new-array v10, v6, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    goto :goto_3

    .line 224
    :cond_4
    const-string v10, "dynamicDepthConfigurations"

    invoke-static {v3, v10}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 226
    const-string v10, "dynamicDepthMinFrameDurations"

    move-object/from16 v13, p8

    invoke-static {v13, v10}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 228
    const-string v10, "dynamicDepthStallDurations"

    move-object/from16 v14, p9

    invoke-static {v14, v10}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 232
    :goto_3
    if-nez v4, :cond_5

    .line 233
    new-array v10, v6, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 234
    new-array v10, v6, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 235
    new-array v10, v6, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v15, p11

    move-object/from16 v6, p12

    goto :goto_4

    .line 237
    :cond_5
    const-string v10, "heicConfigurations"

    invoke-static {v4, v10}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 239
    const-string v10, "heicMinFrameDurations"

    move-object/from16 v15, p11

    invoke-static {v15, v10}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 241
    const-string v10, "heicStallDurations"

    move-object/from16 v6, p12

    invoke-static {v6, v10}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 245
    :goto_4
    if-nez v5, :cond_6

    .line 246
    const/4 v10, 0x0

    new-array v2, v10, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    iput-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    goto :goto_5

    .line 248
    :cond_6
    const-string v2, "highSpeedVideoConfigurations"

    invoke-static {v5, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    iput-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 253
    :goto_5
    iget-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    array-length v10, v2

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v10, :cond_c

    aget-object v17, v2, v3

    .line 254
    .local v17, "config":Landroid/hardware/camera2/params/StreamConfiguration;
    move-object/from16 v18, v2

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v2

    .line 255
    .local v2, "fmt":I
    const/16 v19, 0x0

    .line 256
    .local v19, "map":Landroid/util/SparseIntArray;
    invoke-virtual/range {v17 .. v17}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 257
    iget-object v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v20

    add-int/lit8 v5, v20, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 258
    const-wide/16 v4, 0x0

    .line 259
    .local v4, "duration":J
    move-wide/from16 v20, v4

    .end local v4    # "duration":J
    .local v20, "duration":J
    iget-boolean v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    if-eqz v4, :cond_9

    .line 260
    iget-object v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v5, :cond_9

    aget-object v22, v4, v6

    .line 261
    .local v22, "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    move-object/from16 v23, v4

    invoke-virtual/range {v22 .. v22}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getFormat()I

    move-result v4

    if-ne v4, v2, :cond_7

    .line 262
    invoke-virtual/range {v22 .. v22}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getWidth()I

    move-result v4

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v24

    move/from16 v25, v5

    invoke-virtual/range {v24 .. v24}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_8

    .line 263
    invoke-virtual/range {v22 .. v22}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getHeight()I

    move-result v4

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_8

    .line 264
    invoke-virtual/range {v22 .. v22}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getDuration()J

    move-result-wide v4

    .line 265
    .end local v20    # "duration":J
    .restart local v4    # "duration":J
    goto :goto_8

    .line 261
    .end local v4    # "duration":J
    .restart local v20    # "duration":J
    :cond_7
    move/from16 v25, v5

    .line 260
    .end local v22    # "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_8
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v23

    move/from16 v5, v25

    goto :goto_7

    .line 269
    :cond_9
    move-wide/from16 v4, v20

    .end local v20    # "duration":J
    .restart local v4    # "duration":J
    :goto_8
    const-wide/32 v20, 0x2faf080

    cmp-long v6, v4, v20

    if-gtz v6, :cond_a

    .line 270
    iget-object v6, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    goto :goto_9

    :cond_a
    iget-object v6, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighResOutputFormats:Landroid/util/SparseIntArray;

    :goto_9
    move-object v4, v6

    .line 271
    .end local v19    # "map":Landroid/util/SparseIntArray;
    .local v4, "map":Landroid/util/SparseIntArray;
    goto :goto_a

    .line 272
    .end local v4    # "map":Landroid/util/SparseIntArray;
    .restart local v19    # "map":Landroid/util/SparseIntArray;
    :cond_b
    iget-object v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    .line 274
    .end local v19    # "map":Landroid/util/SparseIntArray;
    .restart local v4    # "map":Landroid/util/SparseIntArray;
    :goto_a
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 253
    .end local v2    # "fmt":I
    .end local v4    # "map":Landroid/util/SparseIntArray;
    .end local v17    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v4, p10

    move-object/from16 v6, p12

    move-object/from16 v5, p13

    move-object/from16 v2, v18

    goto/16 :goto_6

    .line 278
    :cond_c
    iget-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v3, :cond_e

    aget-object v5, v2, v4

    .line 279
    .local v5, "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {v5}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v6

    if-nez v6, :cond_d

    .line 281
    move-object/from16 v17, v2

    move/from16 v18, v3

    goto :goto_c

    .line 284
    :cond_d
    iget-object v6, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v10

    move-object/from16 v17, v2

    iget-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    .line 285
    move/from16 v18, v3

    invoke-virtual {v5}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 284
    invoke-virtual {v6, v10, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 278
    .end local v5    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    :goto_c
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v17

    move/from16 v3, v18

    goto :goto_b

    .line 287
    :cond_e
    iget-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v3, :cond_10

    aget-object v5, v2, v4

    .line 288
    .restart local v5    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {v5}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v6

    if-nez v6, :cond_f

    .line 290
    move-object/from16 v17, v2

    move/from16 v18, v3

    goto :goto_e

    .line 293
    :cond_f
    iget-object v6, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v10

    move-object/from16 v17, v2

    iget-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthOutputFormats:Landroid/util/SparseIntArray;

    .line 294
    move/from16 v18, v3

    invoke-virtual {v5}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 293
    invoke-virtual {v6, v10, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 287
    .end local v5    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    :goto_e
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v17

    move/from16 v3, v18

    goto :goto_d

    .line 298
    :cond_10
    iget-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_12

    aget-object v5, v2, v4

    .line 299
    .restart local v5    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {v5}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v6

    if-nez v6, :cond_11

    .line 301
    move-object/from16 v17, v2

    move/from16 v18, v3

    goto :goto_10

    .line 304
    :cond_11
    iget-object v6, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v10

    move-object/from16 v17, v2

    iget-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicOutputFormats:Landroid/util/SparseIntArray;

    .line 305
    move/from16 v18, v3

    invoke-virtual {v5}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 304
    invoke-virtual {v6, v10, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 298
    .end local v5    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    :goto_10
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v17

    move/from16 v3, v18

    goto :goto_f

    .line 308
    :cond_12
    if-eqz v1, :cond_14

    if-eqz p16, :cond_14

    iget-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    const/16 v3, 0x22

    .line 309
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_13

    goto :goto_11

    .line 310
    :cond_13
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "At least one stream configuration for IMPLEMENTATION_DEFINED must exist"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 315
    :cond_14
    :goto_11
    iget-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    array-length v3, v2

    const/4 v10, 0x0

    :goto_12
    if-ge v10, v3, :cond_17

    aget-object v4, v2, v10

    .line 316
    .local v4, "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    invoke-virtual {v4}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getSize()Landroid/util/Size;

    move-result-object v5

    .line 317
    .local v5, "size":Landroid/util/Size;
    invoke-virtual {v4}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsRange()Landroid/util/Range;

    move-result-object v6

    .line 318
    .local v6, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 319
    .local v1, "fpsRangeCount":Ljava/lang/Integer;
    if-nez v1, :cond_15

    .line 320
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 322
    :cond_15
    move-object/from16 v17, v2

    iget-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v19, v1

    .end local v1    # "fpsRangeCount":Ljava/lang/Integer;
    .local v19, "fpsRangeCount":Ljava/lang/Integer;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 324
    .local v1, "sizeCount":Ljava/lang/Integer;
    if-nez v1, :cond_16

    .line 325
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_13

    .line 324
    :cond_16
    const/4 v2, 0x0

    .line 327
    :goto_13
    iget-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v20, v1

    .end local v1    # "sizeCount":Ljava/lang/Integer;
    .local v20, "sizeCount":Ljava/lang/Integer;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .end local v4    # "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    .end local v5    # "size":Landroid/util/Size;
    .end local v6    # "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v19    # "fpsRangeCount":Ljava/lang/Integer;
    .end local v20    # "sizeCount":Ljava/lang/Integer;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    goto :goto_12

    .line 330
    :cond_17
    move-object/from16 v1, p14

    iput-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputOutputFormatsMap:Landroid/hardware/camera2/params/ReprocessFormatsMap;

    .line 331
    return-void
.end method

.method private greylist-max-o appendHighResOutputsString(Ljava/lang/StringBuilder;)V
    .locals 20
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1786
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "HighResolutionOutputs("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1787
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v2

    .line 1788
    .local v2, "formats":[I
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v7, 0x1

    if-ge v5, v3, :cond_2

    aget v8, v2, v5

    .line 1789
    .local v8, "format":I
    invoke-virtual {v0, v8}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v9

    .line 1790
    .local v9, "sizes":[Landroid/util/Size;
    if-nez v9, :cond_0

    goto :goto_2

    .line 1791
    :cond_0
    array-length v10, v9

    move v11, v4

    :goto_1
    if-ge v11, v10, :cond_1

    aget-object v12, v9, v11

    .line 1792
    .local v12, "size":Landroid/util/Size;
    invoke-virtual {v0, v8, v12}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide v13

    .line 1793
    .local v13, "minFrameDuration":J
    invoke-virtual {v0, v8, v12}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputStallDuration(ILandroid/util/Size;)J

    move-result-wide v15

    .line 1794
    .local v15, "stallDuration":J
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    .line 1795
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v6, v4

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v6, v7

    invoke-static {v8}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v17, 0x2

    aput-object v18, v6, v17

    const/16 v18, 0x3

    .line 1796
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v6, v18

    const/16 v18, 0x4

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v6, v18

    const/16 v18, 0x5

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v6, v18

    .line 1794
    const-string v4, "[w:%d, h:%d, format:%s(%d), min_duration:%d, stall:%d], "

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1791
    .end local v12    # "size":Landroid/util/Size;
    .end local v13    # "minFrameDuration":J
    .end local v15    # "stallDuration":J
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    goto :goto_1

    .line 1788
    .end local v8    # "format":I
    .end local v9    # "sizes":[Landroid/util/Size;
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto :goto_0

    .line 1800
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_3

    .line 1801
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1803
    :cond_3
    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1804
    return-void
.end method

.method private greylist-max-o appendHighSpeedVideoConfigurationsString(Ljava/lang/StringBuilder;)V
    .locals 14
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1846
    const-string v0, "HighSpeedVideoConfigurations("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1847
    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizes()[Landroid/util/Size;

    move-result-object v0

    .line 1848
    .local v0, "sizes":[Landroid/util/Size;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    aget-object v6, v0, v3

    .line 1849
    .local v6, "size":Landroid/util/Size;
    invoke-virtual {p0, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;

    move-result-object v7

    .line 1850
    .local v7, "ranges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    array-length v8, v7

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_0

    aget-object v10, v7, v9

    .line 1851
    .local v10, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v2

    .line 1852
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-virtual {v10}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v12

    aput-object v12, v11, v4

    const/4 v12, 0x3

    invoke-virtual {v10}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v13

    aput-object v13, v11, v12

    .line 1851
    const-string v12, "[w:%d, h:%d, min_fps:%d, max_fps:%d], "

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1850
    .end local v10    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1848
    .end local v6    # "size":Landroid/util/Size;
    .end local v7    # "ranges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1856
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    .line 1857
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1859
    :cond_2
    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1860
    return-void
.end method

.method private greylist-max-o appendInputsString(Ljava/lang/StringBuilder;)V
    .locals 14
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1807
    const-string v0, "Inputs("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1808
    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    move-result-object v0

    .line 1809
    .local v0, "formats":[I
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    aget v6, v0, v3

    .line 1810
    .local v6, "format":I
    invoke-virtual {p0, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v7

    .line 1811
    .local v7, "sizes":[Landroid/util/Size;
    array-length v8, v7

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_0

    aget-object v10, v7, v9

    .line 1812
    .local v10, "size":Landroid/util/Size;
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v2

    .line 1813
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-static {v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v4

    const/4 v12, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    .line 1812
    const-string v12, "[w:%d, h:%d, format:%s(%d)], "

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1811
    .end local v10    # "size":Landroid/util/Size;
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1809
    .end local v6    # "format":I
    .end local v7    # "sizes":[Landroid/util/Size;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1817
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    .line 1818
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1820
    :cond_2
    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1821
    return-void
.end method

.method private greylist-max-o appendOutputsString(Ljava/lang/StringBuilder;)V
    .locals 20
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1766
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Outputs("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1767
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v2

    .line 1768
    .local v2, "formats":[I
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v7, 0x1

    if-ge v5, v3, :cond_1

    aget v8, v2, v5

    .line 1769
    .local v8, "format":I
    invoke-virtual {v0, v8}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v9

    .line 1770
    .local v9, "sizes":[Landroid/util/Size;
    array-length v10, v9

    move v11, v4

    :goto_1
    if-ge v11, v10, :cond_0

    aget-object v12, v9, v11

    .line 1771
    .local v12, "size":Landroid/util/Size;
    invoke-virtual {v0, v8, v12}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide v13

    .line 1772
    .local v13, "minFrameDuration":J
    invoke-virtual {v0, v8, v12}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputStallDuration(ILandroid/util/Size;)J

    move-result-wide v15

    .line 1773
    .local v15, "stallDuration":J
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    .line 1774
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v6, v4

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v6, v7

    invoke-static {v8}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v17, 0x2

    aput-object v18, v6, v17

    const/16 v18, 0x3

    .line 1775
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v6, v18

    const/16 v18, 0x4

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v6, v18

    const/16 v18, 0x5

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v6, v18

    .line 1773
    const-string v4, "[w:%d, h:%d, format:%s(%d), min_duration:%d, stall:%d], "

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1770
    .end local v12    # "size":Landroid/util/Size;
    .end local v13    # "minFrameDuration":J
    .end local v15    # "stallDuration":J
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    goto :goto_1

    .line 1768
    .end local v8    # "format":I
    .end local v9    # "sizes":[Landroid/util/Size;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto :goto_0

    .line 1779
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_2

    .line 1780
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1782
    :cond_2
    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1783
    return-void
.end method

.method private greylist-max-o appendValidOutputFormatsForInputString(Ljava/lang/StringBuilder;)V
    .locals 11
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1824
    const-string v0, "ValidOutputFormatsForInput("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1825
    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    move-result-object v0

    .line 1826
    .local v0, "inputFormats":[I
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v3, v1, :cond_2

    aget v6, v0, v3

    .line 1827
    .local v6, "inputFormat":I
    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    const-string v8, "[in:%s(%d), out:"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1828
    invoke-virtual {p0, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getValidOutputFormatsForInput(I)[I

    move-result-object v7

    .line 1829
    .local v7, "outputFormats":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v9, v7

    if-ge v8, v9, :cond_1

    .line 1830
    new-array v9, v4, [Ljava/lang/Object;

    aget v10, v7, v8

    invoke-static {v10}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    aget v10, v7, v8

    .line 1831
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    .line 1830
    const-string v10, "%s(%d)"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1832
    array-length v9, v7

    sub-int/2addr v9, v5

    if-ge v8, v9, :cond_0

    .line 1833
    const-string v9, ", "

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1829
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1836
    .end local v8    # "i":I
    :cond_1
    const-string v4, "], "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1826
    .end local v6    # "inputFormat":I
    .end local v7    # "outputFormats":[I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1839
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    .line 1840
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1842
    :cond_3
    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1843
    return-void
.end method

.method private static greylist-max-o arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .line 1673
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1674
    return v0

    .line 1677
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 1678
    .local v3, "el":Ljava/lang/Object;, "TT;"
    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1679
    const/4 v0, 0x1

    return v0

    .line 1677
    .end local v3    # "el":Ljava/lang/Object;, "TT;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1683
    :cond_2
    return v0
.end method

.method static greylist-max-o checkArgumentFormat(I)I
    .locals 4
    .param p0, "format"    # I

    .line 1233
    invoke-static {p0}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/graphics/PixelFormat;->isPublicFormat(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1234
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1235
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1234
    const-string v2, "format 0x%x was not defined in either ImageFormat or PixelFormat"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1238
    :cond_1
    :goto_0
    return p0
.end method

.method static greylist-max-o checkArgumentFormatInternal(I)I
    .locals 3
    .param p0, "format"    # I

    .line 1197
    sparse-switch p0, :sswitch_data_0

    .line 1208
    invoke-static {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormat(I)I

    move-result v0

    return v0

    .line 1205
    :sswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An unknown internal format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1202
    :sswitch_1
    return p0

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x22 -> :sswitch_1
        0x24 -> :sswitch_1
        0x100 -> :sswitch_0
        0x20363159 -> :sswitch_1
        0x48454946 -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o checkArgumentFormatSupported(IZ)I
    .locals 6
    .param p1, "format"    # I
    .param p2, "output"    # Z

    .line 1146
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormat(I)I

    .line 1148
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v0

    .line 1149
    .local v0, "internalFormat":I
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v1

    .line 1151
    .local v1, "internalDataspace":I
    if-eqz p2, :cond_3

    .line 1152
    const/16 v2, 0x1000

    if-ne v1, v2, :cond_0

    .line 1153
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_4

    .line 1154
    return p1

    .line 1156
    :cond_0
    const/16 v2, 0x1002

    if-ne v1, v2, :cond_1

    .line 1157
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_4

    .line 1158
    return p1

    .line 1160
    :cond_1
    const/16 v2, 0x1003

    if-ne v1, v2, :cond_2

    .line 1161
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_4

    .line 1162
    return p1

    .line 1165
    :cond_2
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_4

    .line 1166
    return p1

    .line 1170
    :cond_3
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_4

    .line 1171
    return p1

    .line 1175
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1176
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1175
    const-string v4, "format %x is not supported by this stream configuration map"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist compareSizes(IIII)I
    .locals 6
    .param p0, "widthA"    # I
    .param p1, "heightA"    # I
    .param p2, "widthB"    # I
    .param p3, "heightB"    # I

    .line 1756
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    .line 1757
    .local v0, "left":J
    int-to-long v2, p2

    int-to-long v4, p3

    mul-long/2addr v2, v4

    .line 1758
    .local v2, "right":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1759
    int-to-long v0, p0

    .line 1760
    int-to-long v2, p2

    .line 1762
    :cond_0
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/4 v4, -0x1

    goto :goto_0

    :cond_1
    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method public static greylist-max-o depthFormatToPublic(I)I
    .locals 3
    .param p0, "format"    # I

    .line 1317
    sparse-switch p0, :sswitch_data_0

    .line 1333
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown DATASPACE_DEPTH format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1321
    :sswitch_0
    const v0, 0x44363159

    return v0

    .line 1327
    :sswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageFormat.JPEG is an unknown internal format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1325
    :sswitch_2
    const/16 v0, 0x1003

    return v0

    .line 1330
    :sswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IMPLEMENTATION_DEFINED must not leak to public API"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1319
    :sswitch_4
    const/16 v0, 0x101

    return v0

    .line 1323
    :sswitch_5
    const/16 v0, 0x1002

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_5
        0x21 -> :sswitch_4
        0x22 -> :sswitch_3
        0x25 -> :sswitch_2
        0x100 -> :sswitch_1
        0x20363159 -> :sswitch_0
    .end sparse-switch
.end method

.method public static greylist-max-o formatToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "format"    # I

    .line 1866
    sparse-switch p0, :sswitch_data_0

    .line 1912
    const-string v0, "UNKNOWN"

    return-object v0

    .line 1902
    :sswitch_0
    const-string v0, "DEPTH_JPEG"

    return-object v0

    .line 1910
    :sswitch_1
    const-string v0, "HEIC"

    return-object v0

    .line 1898
    :sswitch_2
    const-string v0, "DEPTH16"

    return-object v0

    .line 1868
    :sswitch_3
    const-string v0, "YV12"

    return-object v0

    .line 1890
    :sswitch_4
    const-string v0, "Y16"

    return-object v0

    .line 1888
    :sswitch_5
    const-string v0, "Y8"

    return-object v0

    .line 1906
    :sswitch_6
    const-string v0, "RAW_DEPTH10"

    return-object v0

    .line 1904
    :sswitch_7
    const-string v0, "RAW_DEPTH"

    return-object v0

    .line 1900
    :sswitch_8
    const-string v0, "DEPTH_POINT_CLOUD"

    return-object v0

    .line 1884
    :sswitch_9
    const-string v0, "JPEG"

    return-object v0

    .line 1896
    :sswitch_a
    const-string v0, "RAW10"

    return-object v0

    .line 1894
    :sswitch_b
    const-string v0, "RAW_PRIVATE"

    return-object v0

    .line 1870
    :sswitch_c
    const-string v0, "YUV_420_888"

    return-object v0

    .line 1908
    :sswitch_d
    const-string v0, "PRIVATE"

    return-object v0

    .line 1892
    :sswitch_e
    const-string v0, "RAW_SENSOR"

    return-object v0

    .line 1886
    :sswitch_f
    const-string v0, "YUY2"

    return-object v0

    .line 1872
    :sswitch_10
    const-string v0, "NV21"

    return-object v0

    .line 1874
    :sswitch_11
    const-string v0, "NV16"

    return-object v0

    .line 1876
    :sswitch_12
    const-string v0, "RGB_565"

    return-object v0

    .line 1882
    :sswitch_13
    const-string v0, "RGB_888"

    return-object v0

    .line 1880
    :sswitch_14
    const-string v0, "RGBX_8888"

    return-object v0

    .line 1878
    :sswitch_15
    const-string v0, "RGBA_8888"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_14
        0x3 -> :sswitch_13
        0x4 -> :sswitch_12
        0x10 -> :sswitch_11
        0x11 -> :sswitch_10
        0x14 -> :sswitch_f
        0x20 -> :sswitch_e
        0x22 -> :sswitch_d
        0x23 -> :sswitch_c
        0x24 -> :sswitch_b
        0x25 -> :sswitch_a
        0x100 -> :sswitch_9
        0x101 -> :sswitch_8
        0x1002 -> :sswitch_7
        0x1003 -> :sswitch_6
        0x20203859 -> :sswitch_5
        0x20363159 -> :sswitch_4
        0x32315659 -> :sswitch_3
        0x44363159 -> :sswitch_2
        0x48454946 -> :sswitch_1
        0x69656963 -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o getDurations(II)[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .locals 3
    .param p1, "duration"    # I
    .param p2, "dataspace"    # I

    .line 1641
    const/16 v0, 0x1003

    const/16 v1, 0x1002

    const/16 v2, 0x1000

    packed-switch p1, :pswitch_data_0

    .line 1655
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "duration was invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1650
    :pswitch_0
    if-ne p2, v2, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_0

    .line 1651
    :cond_0
    if-ne p2, v1, :cond_1

    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_0

    .line 1652
    :cond_1
    if-ne p2, v0, :cond_2

    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_0

    .line 1653
    :cond_2
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1650
    :goto_0
    return-object v0

    .line 1643
    :pswitch_1
    if-ne p2, v2, :cond_3

    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_1

    .line 1644
    :cond_3
    if-ne p2, v1, :cond_4

    .line 1645
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_1

    .line 1646
    :cond_4
    if-ne p2, v0, :cond_5

    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_1

    .line 1647
    :cond_5
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1643
    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o getFormatsMap(Z)Landroid/util/SparseIntArray;
    .locals 1
    .param p1, "output"    # Z

    .line 1611
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    :goto_0
    return-object v0
.end method

.method private greylist-max-o getInternalFormatDuration(IILandroid/util/Size;I)J
    .locals 6
    .param p1, "format"    # I
    .param p2, "dataspace"    # I
    .param p3, "size"    # Landroid/util/Size;
    .param p4, "duration"    # I

    .line 1617
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isSupportedInternalConfiguration(IILandroid/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1621
    invoke-direct {p0, p4, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getDurations(II)[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-result-object v0

    .line 1623
    .local v0, "durations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1624
    .local v3, "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getFormat()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 1625
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1626
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getHeight()I

    move-result v4

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1627
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getDuration()J

    move-result-wide v1

    return-wide v1

    .line 1623
    .end local v3    # "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1631
    :cond_1
    const-wide/16 v1, 0x0

    return-wide v1

    .line 1618
    .end local v0    # "durations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size was not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getInternalFormatSizes(IIZZ)[Landroid/util/Size;
    .locals 21
    .param p1, "format"    # I
    .param p2, "dataspace"    # I
    .param p3, "output"    # Z
    .param p4, "highRes"    # Z

    .line 1494
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x0

    const/16 v6, 0x1000

    if-ne v2, v6, :cond_0

    if-eqz v4, :cond_0

    .line 1495
    new-array v5, v5, [Landroid/util/Size;

    return-object v5

    .line 1499
    :cond_0
    const/16 v7, 0x1003

    const/16 v8, 0x1002

    if-nez v3, :cond_1

    iget-object v9, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    goto :goto_0

    .line 1500
    :cond_1
    if-ne v2, v6, :cond_2

    iget-object v9, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    goto :goto_0

    .line 1501
    :cond_2
    if-ne v2, v8, :cond_3

    iget-object v9, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthOutputFormats:Landroid/util/SparseIntArray;

    goto :goto_0

    .line 1502
    :cond_3
    if-ne v2, v7, :cond_4

    iget-object v9, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicOutputFormats:Landroid/util/SparseIntArray;

    goto :goto_0

    .line 1503
    :cond_4
    if-eqz v4, :cond_5

    iget-object v9, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighResOutputFormats:Landroid/util/SparseIntArray;

    goto :goto_0

    .line 1504
    :cond_5
    iget-object v9, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    :goto_0
    nop

    .line 1506
    .local v9, "formatsMap":Landroid/util/SparseIntArray;
    invoke-virtual {v9, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    .line 1507
    .local v10, "sizesCount":I
    if-eqz v3, :cond_6

    if-eq v2, v6, :cond_6

    if-eq v2, v8, :cond_6

    if-ne v2, v7, :cond_7

    :cond_6
    if-eqz v10, :cond_1b

    :cond_7
    if-eqz v3, :cond_8

    if-eq v2, v6, :cond_8

    if-eq v2, v8, :cond_8

    if-eq v2, v7, :cond_8

    iget-object v11, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    .line 1513
    invoke-virtual {v11, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    if-nez v11, :cond_8

    goto/16 :goto_9

    .line 1517
    :cond_8
    new-array v11, v10, [Landroid/util/Size;

    .line 1518
    .local v11, "sizes":[Landroid/util/Size;
    const/4 v12, 0x0

    .line 1521
    .local v12, "sizeIndex":I
    if-ne v2, v6, :cond_9

    iget-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_1

    .line 1522
    :cond_9
    if-ne v2, v8, :cond_a

    iget-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_1

    .line 1523
    :cond_a
    if-ne v2, v7, :cond_b

    iget-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_1

    .line 1524
    :cond_b
    iget-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    :goto_1
    nop

    .line 1526
    .local v13, "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    if-ne v2, v6, :cond_c

    iget-object v14, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_2

    .line 1527
    :cond_c
    if-ne v2, v8, :cond_d

    iget-object v14, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_2

    .line 1528
    :cond_d
    if-ne v2, v7, :cond_e

    iget-object v14, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_2

    .line 1529
    :cond_e
    iget-object v14, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    :goto_2
    nop

    .line 1531
    .local v14, "minFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    array-length v15, v13

    :goto_3
    if-ge v5, v15, :cond_15

    aget-object v16, v13, v5

    .line 1532
    .local v16, "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v7

    .line 1533
    .local v7, "fmt":I
    if-ne v7, v1, :cond_14

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v8

    if-ne v8, v3, :cond_14

    .line 1534
    if-eqz v3, :cond_12

    iget-boolean v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    if-eqz v8, :cond_12

    .line 1537
    const-wide/16 v17, 0x0

    .line 1538
    .local v17, "duration":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    array-length v6, v14

    if-ge v8, v6, :cond_10

    .line 1539
    aget-object v6, v14, v8

    .line 1540
    .local v6, "d":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    invoke-virtual {v6}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getFormat()I

    move-result v0

    if-ne v0, v7, :cond_f

    .line 1541
    invoke-virtual {v6}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getWidth()I

    move-result v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 1542
    invoke-virtual {v6}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getHeight()I

    move-result v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 1543
    invoke-virtual {v6}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getDuration()J

    move-result-wide v17

    .line 1544
    goto :goto_5

    .line 1538
    .end local v6    # "d":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_f
    add-int/lit8 v8, v8, 0x1

    const/16 v6, 0x1000

    move-object/from16 v0, p0

    move/from16 v1, p1

    goto :goto_4

    .line 1547
    .end local v8    # "i":I
    :cond_10
    :goto_5
    const/16 v0, 0x1000

    if-eq v2, v0, :cond_13

    const-wide/32 v19, 0x2faf080

    cmp-long v1, v17, v19

    if-lez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_6

    :cond_11
    const/4 v1, 0x0

    :goto_6
    if-eq v4, v1, :cond_13

    .line 1549
    goto :goto_7

    .line 1534
    .end local v17    # "duration":J
    :cond_12
    move v0, v6

    .line 1552
    :cond_13
    add-int/lit8 v1, v12, 0x1

    .end local v12    # "sizeIndex":I
    .local v1, "sizeIndex":I
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v6

    aput-object v6, v11, v12

    move v12, v1

    goto :goto_7

    .line 1533
    .end local v1    # "sizeIndex":I
    .restart local v12    # "sizeIndex":I
    :cond_14
    move v0, v6

    .line 1531
    .end local v7    # "fmt":I
    .end local v16    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    :goto_7
    add-int/lit8 v5, v5, 0x1

    const/16 v7, 0x1003

    const/16 v8, 0x1002

    move/from16 v1, p1

    move v6, v0

    move-object/from16 v0, p0

    goto :goto_3

    .line 1557
    :cond_15
    const-string v0, ")"

    const-string v1, ", actual "

    if-eq v12, v10, :cond_19

    const/16 v5, 0x1002

    if-eq v2, v5, :cond_16

    const/16 v5, 0x1003

    if-ne v2, v5, :cond_19

    .line 1560
    :cond_16
    if-gt v12, v10, :cond_18

    .line 1566
    if-gtz v12, :cond_17

    .line 1567
    const/4 v0, 0x0

    new-array v11, v0, [Landroid/util/Size;

    goto :goto_8

    .line 1569
    :cond_17
    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [Landroid/util/Size;

    goto :goto_8

    .line 1561
    :cond_18
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too many dynamic depth sizes (expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 1571
    :cond_19
    if-ne v12, v10, :cond_1a

    .line 1576
    :goto_8
    return-object v11

    .line 1572
    :cond_1a
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too few sizes (expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 1514
    .end local v11    # "sizes":[Landroid/util/Size;
    .end local v12    # "sizeIndex":I
    .end local v13    # "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v14    # "minFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_1b
    :goto_9
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o getPublicFormatCount(Z)I
    .locals 3
    .param p1, "output"    # Z

    .line 1661
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getFormatsMap(Z)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 1662
    .local v0, "formatsMap":Landroid/util/SparseIntArray;
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 1663
    .local v1, "size":I
    if-eqz p1, :cond_0

    .line 1664
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 1665
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 1666
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 1669
    :cond_0
    return v1
.end method

.method private greylist-max-o getPublicFormatSizes(IZZ)[Landroid/util/Size;
    .locals 3
    .param p1, "format"    # I
    .param p2, "output"    # Z
    .param p3, "highRes"    # Z

    .line 1480
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatSupported(IZ)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1483
    nop

    .line 1485
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v0

    .line 1486
    .local v0, "internalFormat":I
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v1

    .line 1488
    .local v1, "dataspace":I
    invoke-direct {p0, v0, v1, p2, p3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatSizes(IIZZ)[Landroid/util/Size;

    move-result-object v2

    return-object v2

    .line 1481
    .end local v0    # "internalFormat":I
    .end local v1    # "dataspace":I
    :catch_0
    move-exception v0

    .line 1482
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o getPublicFormats(Z)[I
    .locals 7
    .param p1, "output"    # Z

    .line 1581
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatCount(Z)I

    move-result v0

    new-array v0, v0, [I

    .line 1583
    .local v0, "formats":[I
    const/4 v1, 0x0

    .line 1585
    .local v1, "i":I
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getFormatsMap(Z)Landroid/util/SparseIntArray;

    move-result-object v2

    .line 1586
    .local v2, "map":Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1587
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 1588
    .local v4, "format":I
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "i":I
    .local v5, "i":I
    invoke-static {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic(I)I

    move-result v6

    aput v6, v0, v1

    .line 1586
    .end local v4    # "format":I
    add-int/lit8 v3, v3, 0x1

    move v1, v5

    goto :goto_0

    .line 1590
    .end local v3    # "j":I
    .end local v5    # "i":I
    .restart local v1    # "i":I
    :cond_0
    if-eqz p1, :cond_3

    .line 1591
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_1
    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1592
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    iget-object v5, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->depthFormatToPublic(I)I

    move-result v5

    aput v5, v0, v1

    .line 1591
    add-int/lit8 v3, v3, 0x1

    move v1, v4

    goto :goto_1

    .line 1594
    .end local v3    # "j":I
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_1
    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1596
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    const v4, 0x69656963

    aput v4, v0, v1

    move v1, v3

    .line 1598
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :cond_2
    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1599
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .restart local v3    # "i":I
    const v4, 0x48454946

    aput v4, v0, v1

    move v1, v3

    .line 1602
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :cond_3
    array-length v3, v0

    if-ne v3, v1, :cond_4

    .line 1606
    return-object v0

    .line 1603
    :cond_4
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too few formats "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method static greylist-max-o imageFormatToDataspace(I)I
    .locals 1
    .param p0, "format"    # I

    .line 1439
    sparse-switch p0, :sswitch_data_0

    .line 1452
    const/4 v0, 0x0

    return v0

    .line 1448
    :sswitch_0
    const/16 v0, 0x1002

    return v0

    .line 1450
    :sswitch_1
    const/16 v0, 0x1003

    return v0

    .line 1446
    :sswitch_2
    const/16 v0, 0x1000

    return v0

    .line 1441
    :sswitch_3
    const/high16 v0, 0x8c20000

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_3
        0x101 -> :sswitch_2
        0x1002 -> :sswitch_2
        0x1003 -> :sswitch_2
        0x44363159 -> :sswitch_2
        0x48454946 -> :sswitch_1
        0x69656963 -> :sswitch_0
    .end sparse-switch
.end method

.method static greylist-max-o imageFormatToInternal(I)I
    .locals 1
    .param p0, "format"    # I

    .line 1389
    sparse-switch p0, :sswitch_data_0

    .line 1402
    return p0

    .line 1396
    :sswitch_0
    const v0, 0x20363159

    return v0

    .line 1400
    :sswitch_1
    const/16 v0, 0x25

    return v0

    .line 1398
    :sswitch_2
    const/16 v0, 0x20

    return v0

    .line 1394
    :sswitch_3
    const/16 v0, 0x21

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_3
        0x101 -> :sswitch_3
        0x1002 -> :sswitch_2
        0x1003 -> :sswitch_1
        0x44363159 -> :sswitch_0
        0x48454946 -> :sswitch_3
        0x69656963 -> :sswitch_3
    .end sparse-switch
.end method

.method public static greylist-max-o imageFormatToInternal([I)[I
    .locals 2
    .param p0, "formats"    # [I

    .line 1467
    if-nez p0, :cond_0

    .line 1468
    const/4 v0, 0x0

    return-object v0

    .line 1471
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1472
    aget v1, p0, v0

    invoke-static {v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v1

    aput v1, p0, v0

    .line 1471
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1475
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method public static greylist-max-o imageFormatToPublic(I)I
    .locals 2
    .param p0, "format"    # I

    .line 1273
    sparse-switch p0, :sswitch_data_0

    .line 1280
    return p0

    .line 1277
    :sswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageFormat.JPEG is an unknown internal format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1275
    :sswitch_1
    const/16 v0, 0x100

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method static greylist-max-o imageFormatToPublic([I)[I
    .locals 2
    .param p0, "formats"    # [I

    .line 1347
    if-nez p0, :cond_0

    .line 1348
    const/4 v0, 0x0

    return-object v0

    .line 1351
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1352
    aget v1, p0, v0

    invoke-static {v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic(I)I

    move-result v1

    aput v1, p0, v0

    .line 1351
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1355
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method public static whitelist isOutputSupportedFor(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 494
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "klass must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 496
    const-class v0, Landroid/media/ImageReader;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    .line 497
    return v1

    .line 498
    :cond_0
    const-class v0, Landroid/media/MediaRecorder;

    if-ne p0, v0, :cond_1

    .line 499
    return v1

    .line 500
    :cond_1
    const-class v0, Landroid/media/MediaCodec;

    if-ne p0, v0, :cond_2

    .line 501
    return v1

    .line 502
    :cond_2
    const-class v0, Landroid/renderscript/Allocation;

    if-ne p0, v0, :cond_3

    .line 503
    return v1

    .line 504
    :cond_3
    const-class v0, Landroid/view/SurfaceHolder;

    if-ne p0, v0, :cond_4

    .line 505
    return v1

    .line 506
    :cond_4
    const-class v0, Landroid/graphics/SurfaceTexture;

    if-ne p0, v0, :cond_5

    .line 507
    return v1

    .line 510
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o isSupportedInternalConfiguration(IILandroid/util/Size;)Z
    .locals 3
    .param p1, "format"    # I
    .param p2, "dataspace"    # I
    .param p3, "size"    # Landroid/util/Size;

    .line 1688
    const/16 v0, 0x1000

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_0

    .line 1689
    :cond_0
    const/16 v0, 0x1002

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_0

    .line 1690
    :cond_1
    const/16 v0, 0x1003

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_0

    .line 1691
    :cond_2
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    :goto_0
    nop

    .line 1693
    .local v0, "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 1694
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v2

    if-ne v2, p1, :cond_3

    aget-object v2, v0, v1

    .line 1695
    invoke-virtual {v2}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1696
    const/4 v2, 0x1

    return v2

    .line 1693
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1700
    .end local v1    # "i":I
    :cond_4
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1101
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1102
    return v0

    .line 1104
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 1105
    return v1

    .line 1107
    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v2, :cond_3

    .line 1108
    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1110
    .local v2, "other":Landroid/hardware/camera2/params/StreamConfigurationMap;
    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1111
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1112
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1113
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1114
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1115
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1116
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1117
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1119
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1120
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1121
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1122
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 1123
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    nop

    .line 1110
    :goto_0
    return v0

    .line 1126
    .end local v2    # "other":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :cond_3
    return v0
.end method

.method public whitelist getHighResolutionOutputSizes(I)[Landroid/util/Size;
    .locals 1
    .param p1, "format"    # I

    .line 857
    iget-boolean v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 859
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatSizes(IZZ)[Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHighSpeedVideoFpsRanges()[Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 800
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 801
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Landroid/util/Range;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Range;

    return-object v1
.end method

.method public whitelist getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;
    .locals 9
    .param p1, "size"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            ")[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 736
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 737
    .local v0, "fpsRangeCount":Ljava/lang/Integer;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    .line 743
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v2, v2, [Landroid/util/Range;

    .line 744
    .local v2, "fpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 745
    .local v3, "i":I
    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    array-length v5, v4

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v6, v4, v1

    .line 746
    .local v6, "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    invoke-virtual {v6}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getSize()Landroid/util/Size;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 747
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "i":I
    .local v7, "i":I
    invoke-virtual {v6}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsRange()Landroid/util/Range;

    move-result-object v8

    aput-object v8, v2, v3

    move v3, v7

    .line 745
    .end local v6    # "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    .end local v7    # "i":I
    .restart local v3    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 750
    :cond_1
    return-object v2

    .line 738
    .end local v2    # "fpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v3    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string v1, "Size %s does not support high speed video recording"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getHighSpeedVideoSizes()[Landroid/util/Size;
    .locals 2

    .line 709
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 710
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Size;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Landroid/util/Size;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Size;

    return-object v1
.end method

.method public whitelist getHighSpeedVideoSizesFor(Landroid/util/Range;)[Landroid/util/Size;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 818
    .local p1, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 819
    .local v0, "sizeCount":Ljava/lang/Integer;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    .line 824
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v2, v2, [Landroid/util/Size;

    .line 825
    .local v2, "sizes":[Landroid/util/Size;
    const/4 v3, 0x0

    .line 826
    .local v3, "i":I
    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    array-length v5, v4

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v6, v4, v1

    .line 827
    .local v6, "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    invoke-virtual {v6}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsRange()Landroid/util/Range;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 828
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "i":I
    .local v7, "i":I
    invoke-virtual {v6}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getSize()Landroid/util/Size;

    move-result-object v8

    aput-object v8, v2, v3

    move v3, v7

    .line 826
    .end local v6    # "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    .end local v7    # "i":I
    .restart local v3    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 831
    :cond_1
    return-object v2

    .line 820
    .end local v2    # "sizes":[Landroid/util/Size;
    .end local v3    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string v1, "FpsRange %s does not support high speed video recording"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getInputFormats()[I
    .locals 1

    .line 399
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormats(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInputSizes(I)[Landroid/util/Size;
    .locals 1
    .param p1, "format"    # I

    .line 412
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatSizes(IZZ)[Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOutputFormats()[I
    .locals 1

    .line 348
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormats(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOutputMinFrameDuration(ILandroid/util/Size;)J
    .locals 3
    .param p1, "format"    # I
    .param p2, "size"    # Landroid/util/Size;

    .line 900
    const-string/jumbo v0, "size must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 901
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatSupported(IZ)I

    .line 903
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v0

    .line 904
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v1

    .line 903
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p2, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getOutputMinFrameDuration(Ljava/lang/Class;Landroid/util/Size;)J
    .locals 2
    .param p2, "size"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/util/Size;",
            ")J"
        }
    .end annotation

    .line 953
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    const/16 v0, 0x22

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    move-result-wide v0

    return-wide v0

    .line 954
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "klass was not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getOutputSizes(I)[Landroid/util/Size;
    .locals 2
    .param p1, "format"    # I

    .line 671
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatSizes(IZZ)[Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 639
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 640
    const/4 v0, 0x0

    return-object v0

    .line 643
    :cond_0
    const/16 v0, 0x22

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatSizes(IIZZ)[Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOutputStallDuration(ILandroid/util/Size;)J
    .locals 3
    .param p1, "format"    # I
    .param p2, "size"    # Landroid/util/Size;

    .line 1046
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatSupported(IZ)I

    .line 1048
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v1

    .line 1049
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v2

    .line 1048
    invoke-direct {p0, v1, v2, p2, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getOutputStallDuration(Ljava/lang/Class;Landroid/util/Size;)J
    .locals 3
    .param p2, "size"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/util/Size;",
            ")J"
        }
    .end annotation

    .line 1083
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    const/16 v0, 0x22

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p2, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    move-result-wide v0

    return-wide v0

    .line 1084
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "klass was not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getValidOutputFormatsForInput(I)[I
    .locals 4
    .param p1, "inputFormat"    # I

    .line 372
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputOutputFormatsMap:Landroid/hardware/camera2/params/ReprocessFormatsMap;

    if-nez v0, :cond_0

    .line 373
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0

    .line 376
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/ReprocessFormatsMap;->getOutputs(I)[I

    move-result-object v0

    .line 377
    .local v0, "outputs":[I
    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 379
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 380
    .local v1, "outputsWithHeic":[I
    array-length v2, v0

    const v3, 0x48454946

    aput v3, v1, v2

    .line 381
    return-object v1

    .line 383
    .end local v1    # "outputsWithHeic":[I
    :cond_1
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 1135
    const/16 v0, 0xd

    new-array v0, v0, [[Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCodeGeneric([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isOutputSupportedFor(I)Z
    .locals 5
    .param p1, "format"    # I

    .line 440
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormat(I)I

    .line 442
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v0

    .line 443
    .local v0, "internalFormat":I
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v1

    .line 444
    .local v1, "dataspace":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1000

    if-ne v1, v4, :cond_1

    .line 445
    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_0

    move v2, v3

    :cond_0
    return v2

    .line 446
    :cond_1
    const/16 v4, 0x1002

    if-ne v1, v4, :cond_3

    .line 447
    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_2

    move v2, v3

    :cond_2
    return v2

    .line 448
    :cond_3
    const/16 v4, 0x1003

    if-ne v1, v4, :cond_5

    .line 449
    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_4

    move v2, v3

    :cond_4
    return v2

    .line 451
    :cond_5
    invoke-direct {p0, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getFormatsMap(Z)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_6

    move v2, v3

    :cond_6
    return v2
.end method

.method public blacklist isOutputSupportedFor(Landroid/util/Size;I)Z
    .locals 8
    .param p1, "size"    # Landroid/util/Size;
    .param p2, "format"    # I

    .line 593
    invoke-static {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v0

    .line 594
    .local v0, "internalFormat":I
    invoke-static {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v1

    .line 597
    .local v1, "dataspace":I
    const/16 v2, 0x1000

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_0

    .line 598
    :cond_0
    const/16 v2, 0x1002

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_0

    .line 599
    :cond_1
    const/16 v2, 0x1003

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_0

    .line 600
    :cond_2
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    :goto_0
    nop

    .line 601
    .local v2, "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_4

    aget-object v6, v2, v5

    .line 602
    .local v6, "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {v6}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v7

    if-ne v7, v0, :cond_3

    invoke-virtual {v6}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 603
    invoke-virtual {v6}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 604
    const/4 v3, 0x1

    return v3

    .line 601
    .end local v6    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 608
    :cond_4
    return v4
.end method

.method public whitelist isOutputSupportedFor(Landroid/view/Surface;)Z
    .locals 12
    .param p1, "surface"    # Landroid/view/Surface;

    .line 551
    const-string/jumbo v0, "surface must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 553
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0

    .line 554
    .local v0, "surfaceSize":Landroid/util/Size;
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v1

    .line 555
    .local v1, "surfaceFormat":I
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v2

    .line 558
    .local v2, "surfaceDataspace":I
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->isFlexibleConsumer(Landroid/view/Surface;)Z

    move-result v3

    .line 561
    .local v3, "isFlexible":Z
    const/16 v4, 0x1000

    if-ne v2, v4, :cond_0

    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_0

    .line 562
    :cond_0
    const/16 v4, 0x1002

    if-ne v2, v4, :cond_1

    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_0

    .line 563
    :cond_1
    const/16 v4, 0x1003

    if-ne v2, v4, :cond_2

    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_0

    .line 564
    :cond_2
    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    :goto_0
    nop

    .line 565
    .local v4, "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_5

    aget-object v8, v4, v7

    .line 566
    .local v8, "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {v8}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v9

    if-ne v9, v1, :cond_4

    invoke-virtual {v8}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 569
    invoke-virtual {v8}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_3

    .line 570
    return v10

    .line 571
    :cond_3
    if-eqz v3, :cond_4

    .line 572
    invoke-virtual {v8}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v9

    const/16 v11, 0x780

    if-gt v9, v11, :cond_4

    .line 573
    return v10

    .line 565
    .end local v8    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 577
    :cond_5
    return v6
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1735
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StreamConfiguration("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1736
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendOutputsString(Ljava/lang/StringBuilder;)V

    .line 1737
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1738
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendHighResOutputsString(Ljava/lang/StringBuilder;)V

    .line 1739
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1740
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendInputsString(Ljava/lang/StringBuilder;)V

    .line 1741
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1742
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendValidOutputFormatsForInputString(Ljava/lang/StringBuilder;)V

    .line 1743
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1744
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendHighSpeedVideoConfigurationsString(Ljava/lang/StringBuilder;)V

    .line 1745
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1747
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
