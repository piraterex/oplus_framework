.class public final Landroid/hardware/camera2/params/OutputConfiguration;
.super Ljava/lang/Object;
.source "OutputConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/OutputConfiguration$MirrorMode;,
        Landroid/hardware/camera2/params/OutputConfiguration$StreamUseCase;,
        Landroid/hardware/camera2/params/OutputConfiguration$SensorPixelMode;,
        Landroid/hardware/camera2/params/OutputConfiguration$TimestampBase;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_SURFACES_COUNT:I = 0x4

.field public static final whitelist MIRROR_MODE_AUTO:I = 0x0

.field public static final whitelist MIRROR_MODE_H:I = 0x2

.field public static final whitelist MIRROR_MODE_NONE:I = 0x1

.field public static final whitelist MIRROR_MODE_V:I = 0x3

.field private static blacklist MULTI_RESOLUTION_GROUP_ID_COUNTER:I = 0x0

.field public static final whitelist ROTATION_0:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROTATION_180:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROTATION_270:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROTATION_90:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SURFACE_GROUP_ID_NONE:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "OutputConfiguration"

.field public static final whitelist TIMESTAMP_BASE_CHOREOGRAPHER_SYNCED:I = 0x4

.field public static final whitelist TIMESTAMP_BASE_DEFAULT:I = 0x0

.field public static final whitelist TIMESTAMP_BASE_MONOTONIC:I = 0x2

.field public static final whitelist TIMESTAMP_BASE_REALTIME:I = 0x3

.field public static final whitelist TIMESTAMP_BASE_SENSOR:I = 0x1


# instance fields
.field private final greylist-max-o SURFACE_TYPE_SURFACE_TEXTURE:I

.field private final greylist-max-o SURFACE_TYPE_SURFACE_VIEW:I

.field private final greylist-max-o SURFACE_TYPE_UNKNOWN:I

.field private final greylist-max-o mConfiguredDataspace:I

.field private final greylist-max-o mConfiguredFormat:I

.field private final greylist-max-o mConfiguredGenerationId:I

.field private final greylist-max-o mConfiguredSize:Landroid/util/Size;

.field private blacklist mDynamicRangeProfile:J

.field private final greylist-max-o mIsDeferredConfig:Z

.field private blacklist mIsMultiResolution:Z

.field private greylist-max-o mIsShared:Z

.field private blacklist mMirrorMode:I

.field private greylist-max-o mPhysicalCameraId:Ljava/lang/String;

.field private final greylist-max-o mRotation:I

.field private blacklist mSensorPixelModesUsed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStreamUseCase:J

.field private final greylist-max-o mSurfaceGroupId:I

.field private final greylist-max-o mSurfaceType:I

.field private greylist-max-o mSurfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTimestampBase:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1176
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration$1;

    invoke-direct {v0}, Landroid/hardware/camera2/params/OutputConfiguration$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1322
    const/4 v0, 0x0

    sput v0, Landroid/hardware/camera2/params/OutputConfiguration;->MULTI_RESOLUTION_GROUP_ID_COUNTER:I

    return-void
.end method

.method public constructor whitelist <init>(ILandroid/view/Surface;)V
    .locals 1
    .param p1, "surfaceGroupId"    # I
    .param p2, "surface"    # Landroid/view/Surface;

    .line 384
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;I)V

    .line 385
    return-void
.end method

.method public constructor whitelist <init>(ILandroid/view/Surface;I)V
    .locals 4
    .param p1, "surfaceGroupId"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "rotation"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    .line 336
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    .line 341
    const/4 v2, 0x1

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    .line 493
    const-string v2, "Surface must not be null"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const/4 v2, 0x3

    const-string v3, "Rotation constant"

    invoke-static {p3, v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 495
    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    .line 496
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    .line 498
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    iput p3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    .line 500
    invoke-static {p2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    .line 501
    invoke-static {p2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    .line 502
    invoke-static {p2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    .line 503
    invoke-virtual {p2}, Landroid/view/Surface;->getGenerationId()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    .line 504
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    .line 505
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    .line 506
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    .line 507
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    .line 508
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    .line 509
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    .line 510
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    .line 511
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    .line 512
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    .line 513
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 2
    .param p1, "other"    # Landroid/hardware/camera2/params/OutputConfiguration;

    .line 1040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    .line 336
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    .line 341
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    .line 1041
    if-eqz p1, :cond_0

    .line 1045
    iget-object v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    .line 1046
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    .line 1047
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    .line 1048
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 1049
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    .line 1050
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    .line 1051
    iget-object v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    .line 1052
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    .line 1053
    iget-boolean v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    .line 1054
    iget-boolean v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    .line 1055
    iget-object v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    .line 1056
    iget-boolean v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    .line 1057
    iget-object v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    .line 1058
    iget-wide v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    iput-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    .line 1059
    iget-wide v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    iput-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    .line 1060
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    .line 1061
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    .line 1062
    return-void

    .line 1042
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OutputConfiguration shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 20
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1067
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 331
    const/4 v1, -0x1

    iput v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    .line 336
    const/4 v2, 0x0

    iput v2, v0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    .line 341
    const/4 v3, 0x1

    iput v3, v0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    .line 1068
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1069
    .local v4, "rotation":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1070
    .local v5, "surfaceSetId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1071
    .local v6, "surfaceType":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1072
    .local v7, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1073
    .local v8, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-ne v9, v3, :cond_0

    move v9, v3

    goto :goto_0

    :cond_0
    move v9, v2

    .line 1074
    .local v9, "isDeferred":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-ne v10, v3, :cond_1

    move v10, v3

    goto :goto_1

    :cond_1
    move v10, v2

    .line 1075
    .local v10, "isShared":Z
    :goto_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1076
    .local v11, "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    sget-object v12, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v13, p1

    invoke-virtual {v13, v11, v12}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 1077
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1078
    .local v12, "physicalCameraId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-ne v14, v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    .line 1079
    .local v3, "isMultiResolutionOutput":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v14

    .line 1080
    .local v14, "sensorPixelModesUsed":[I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1082
    .local v1, "streamUseCase":J
    const/4 v15, 0x3

    const-string v13, "Rotation constant"

    move-wide/from16 v17, v1

    const/4 v1, 0x0

    .end local v1    # "streamUseCase":J
    .local v17, "streamUseCase":J
    invoke-static {v4, v1, v15, v13}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 1083
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1084
    .local v1, "dynamicRangeProfile":J
    invoke-static {v1, v2}, Landroid/hardware/camera2/params/DynamicRangeProfiles;->checkProfileValue(J)V

    .line 1086
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1087
    .local v13, "timestampBase":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1089
    .local v15, "mirrorMode":I
    iput v5, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    .line 1090
    iput v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    .line 1091
    iput-object v11, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    .line 1092
    move/from16 v19, v4

    .end local v4    # "rotation":I
    .local v19, "rotation":I
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v7, v8}, Landroid/util/Size;-><init>(II)V

    iput-object v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    .line 1093
    iput-boolean v9, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    .line 1094
    iput-boolean v10, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    .line 1095
    iput-object v11, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    .line 1096
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1097
    const/4 v4, -0x1

    iput v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 1098
    iget-object v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    move/from16 v16, v5

    const/4 v5, 0x0

    .end local v5    # "surfaceSetId":I
    .local v16, "surfaceSetId":I
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    invoke-static {v4}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v4

    iput v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    .line 1099
    iget-object v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    invoke-static {v4}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v4

    iput v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    .line 1100
    iget-object v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    move-result v4

    iput v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    goto :goto_3

    .line 1102
    .end local v16    # "surfaceSetId":I
    .restart local v5    # "surfaceSetId":I
    :cond_3
    move/from16 v16, v5

    .end local v5    # "surfaceSetId":I
    .restart local v16    # "surfaceSetId":I
    iput v6, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 1103
    const/16 v4, 0x22

    invoke-static {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v5

    iput v5, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    .line 1104
    nop

    .line 1105
    invoke-static {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v4

    iput v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    .line 1106
    const/4 v4, 0x0

    iput v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    .line 1108
    :goto_3
    iput-object v12, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    .line 1109
    iput-boolean v3, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    .line 1110
    invoke-static {v14}, Landroid/hardware/camera2/params/OutputConfiguration;->convertIntArrayToIntegerList([I)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    .line 1111
    iput-wide v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    .line 1112
    move-wide/from16 v4, v17

    .end local v17    # "streamUseCase":J
    .local v4, "streamUseCase":J
    iput-wide v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    .line 1113
    iput v13, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    .line 1114
    iput v15, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    .line 1115
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/camera2/params/OutputConfiguration-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/util/Size;Ljava/lang/Class;)V
    .locals 4
    .param p1, "surfaceSize"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Size;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 582
    .local p2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    .line 336
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    .line 341
    const/4 v2, 0x1

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    .line 583
    const-string/jumbo v3, "surfaceSize must not be null"

    invoke-static {p2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const-string v3, "klass must not be null"

    invoke-static {p2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const-class v3, Landroid/view/SurfaceHolder;

    if-ne p2, v3, :cond_0

    .line 586
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    goto :goto_0

    .line 587
    :cond_0
    const-class v3, Landroid/graphics/SurfaceTexture;

    if-ne p2, v3, :cond_2

    .line 588
    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 594
    :goto_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-eqz v3, :cond_1

    .line 598
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    .line 599
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    .line 600
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    .line 601
    iput-object p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    .line 602
    const/16 v0, 0x22

    invoke-static {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v3

    iput v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    .line 603
    invoke-static {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    .line 604
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    .line 605
    iput-boolean v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    .line 606
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    .line 607
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    .line 608
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    .line 609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    .line 610
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    .line 611
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    .line 612
    return-void

    .line 595
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface size needs to be non-zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_2
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 591
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknow surface source class type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 325
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;I)V

    .line 326
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/Surface;I)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "rotation"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 467
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;I)V

    .line 468
    return-void
.end method

.method private static blacklist convertIntArrayToIntegerList([I)Ljava/util/ArrayList;
    .locals 3
    .param p0, "intArray"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1204
    .local v0, "integerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    .line 1205
    return-object v0

    .line 1207
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1208
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1210
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private static blacklist convertIntegerToIntList(Ljava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 1195
    .local p0, "integerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1196
    .local v0, "integerArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1197
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 1196
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1199
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static whitelist createInstancesForMultiResolutionOutput(Landroid/hardware/camera2/MultiResolutionImageReader;)Ljava/util/Collection;
    .locals 7
    .param p0, "multiResolutionImageReader"    # Landroid/hardware/camera2/MultiResolutionImageReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/MultiResolutionImageReader;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation

    .line 527
    const-string v0, "Multi-resolution image reader must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    sget v0, Landroid/hardware/camera2/params/OutputConfiguration;->MULTI_RESOLUTION_GROUP_ID_COUNTER:I

    .line 530
    .local v0, "groupId":I
    sget v1, Landroid/hardware/camera2/params/OutputConfiguration;->MULTI_RESOLUTION_GROUP_ID_COUNTER:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/hardware/camera2/params/OutputConfiguration;->MULTI_RESOLUTION_GROUP_ID_COUNTER:I

    .line 532
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 533
    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/hardware/camera2/params/OutputConfiguration;->MULTI_RESOLUTION_GROUP_ID_COUNTER:I

    .line 536
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/MultiResolutionImageReader;->getReaders()[Landroid/media/ImageReader;

    move-result-object v1

    .line 537
    .local v1, "imageReaders":[Landroid/media/ImageReader;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 539
    aget-object v4, v1, v3

    .line 540
    invoke-virtual {p0, v4}, Landroid/hardware/camera2/MultiResolutionImageReader;->getStreamInfoForImageReader(Landroid/media/ImageReader;)Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    move-result-object v4

    .line 542
    .local v4, "streamInfo":Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
    new-instance v5, Landroid/hardware/camera2/params/OutputConfiguration;

    aget-object v6, v1, v3

    .line 543
    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;)V

    .line 544
    .local v5, "config":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v4}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/params/OutputConfiguration;->setPhysicalCameraId(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v5}, Landroid/hardware/camera2/params/OutputConfiguration;->setMultiResolutionOutput()V

    .line 546
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    .end local v4    # "streamInfo":Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
    .end local v5    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 553
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method


# virtual methods
.method public whitelist addSensorPixelModeUsed(I)V
    .locals 3
    .param p1, "sensorPixelModeUsed"    # I

    .line 740
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 742
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid sensor pixel mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 746
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 748
    return-void

    .line 750
    :cond_2
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    return-void
.end method

.method public whitelist addSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 830
    const-string v0, "Surface must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 834
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 835
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot have 2 surfaces for a non-sharing configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 837
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    const/4 v1, 0x4

    if-gt v0, v1, :cond_6

    .line 842
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0

    .line 843
    .local v0, "surfaceSize":Landroid/util/Size;
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 844
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added surface size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is different than pre-configured size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", the pre-configured size will be used."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OutputConfiguration"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_2
    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 855
    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    const/16 v2, 0x22

    if-eq v1, v2, :cond_4

    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    .line 856
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v2

    if-ne v1, v2, :cond_3

    goto :goto_1

    .line 857
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The dataspace of added surface doesn\'t match"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 860
    :cond_4
    :goto_1
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    return-void

    .line 850
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The format of added surface format doesn\'t match"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 838
    .end local v0    # "surfaceSize":Landroid/util/Size;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exceeds maximum number of surfaces"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 832
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Surface is already added!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 1191
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist enableSurfaceSharing()V
    .locals 2

    .line 656
    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    if-nez v0, :cond_0

    .line 660
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    .line 661
    return-void

    .line 657
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot enable surface sharing on multi-resolution output configurations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1247
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1248
    return v0

    .line 1249
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 1250
    return v1

    .line 1251
    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/OutputConfiguration;

    if-eqz v2, :cond_a

    .line 1252
    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 1253
    .local v2, "other":Landroid/hardware/camera2/params/OutputConfiguration;
    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    iget-object v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    .line 1254
    invoke-virtual {v3, v4}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    if-ne v3, v4, :cond_9

    iget v5, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    iget v6, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    if-ne v5, v6, :cond_9

    iget v5, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    iget v6, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    if-ne v5, v6, :cond_9

    iget-boolean v5, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    iget-boolean v6, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    if-ne v5, v6, :cond_9

    iget-boolean v5, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    iget-boolean v6, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    if-ne v5, v6, :cond_9

    if-ne v3, v4, :cond_9

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    if-ne v3, v4, :cond_9

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    .line 1263
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    iget-boolean v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    if-ne v3, v4, :cond_9

    iget-wide v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    iget-wide v5, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    if-ne v3, v4, :cond_9

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    if-eq v3, v4, :cond_2

    goto :goto_2

    .line 1269
    :cond_2
    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 1270
    return v0

    .line 1272
    :cond_3
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    iget-object v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 1273
    iget-object v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eq v4, v5, :cond_4

    .line 1274
    return v0

    .line 1272
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1277
    .end local v3    # "j":I
    :cond_5
    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1278
    .local v3, "minLen":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_7

    .line 1279
    iget-object v5, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v5, v6, :cond_6

    .line 1280
    return v0

    .line 1278
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1282
    .end local v4    # "i":I
    :cond_7
    iget-wide v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    iget-wide v6, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8

    .line 1283
    return v0

    .line 1286
    :cond_8
    return v1

    .line 1268
    .end local v3    # "minLen":I
    :cond_9
    :goto_2
    return v0

    .line 1288
    .end local v2    # "other":Landroid/hardware/camera2/params/OutputConfiguration;
    :cond_a
    return v0
.end method

.method public whitelist getDynamicRangeProfile()J
    .locals 2

    .line 444
    iget-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    return-wide v0
.end method

.method public whitelist getMaxSharedSurfaceCount()I
    .locals 1

    .line 1125
    const/4 v0, 0x4

    return v0
.end method

.method public whitelist getMirrorMode()I
    .locals 1

    .line 1029
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    return v0
.end method

.method public whitelist getRotation()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1163
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    return v0
.end method

.method public whitelist getStreamUseCase()J
    .locals 2

    .line 952
    iget-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    return-wide v0
.end method

.method public whitelist getSurface()Landroid/view/Surface;
    .locals 2

    .line 1135
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1136
    const/4 v0, 0x0

    return-object v0

    .line 1139
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    return-object v0
.end method

.method public whitelist getSurfaceGroupId()I
    .locals 1

    .line 1173
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    return v0
.end method

.method public whitelist getSurfaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 1150
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTimestampBase()I
    .locals 1

    .line 993
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 19

    .line 1299
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    const/16 v2, 0xd

    const/16 v3, 0xc

    const/16 v4, 0xb

    const/16 v5, 0xa

    const/16 v6, 0x9

    const/16 v7, 0x8

    const/16 v8, 0xe

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    if-eqz v1, :cond_3

    .line 1300
    new-array v1, v8, [F

    iget v8, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    int-to-float v8, v8

    aput v8, v1, v16

    iget-object v8, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    .line 1301
    invoke-virtual {v8}, Landroid/util/Size;->hashCode()I

    move-result v8

    int-to-float v8, v8

    aput v8, v1, v15

    iget v8, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    int-to-float v8, v8

    aput v8, v1, v14

    iget v8, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    int-to-float v8, v8

    aput v8, v1, v13

    iget v8, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    int-to-float v8, v8

    aput v8, v1, v12

    iget v8, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    int-to-float v8, v8

    aput v8, v1, v11

    .line 1302
    iget-boolean v8, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    if-eqz v8, :cond_0

    move/from16 v8, v17

    goto :goto_0

    :cond_0
    move/from16 v8, v18

    :goto_0
    aput v8, v1, v10

    .line 1303
    iget-object v8, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    if-nez v8, :cond_1

    move/from16 v8, v18

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    int-to-float v8, v8

    :goto_1
    aput v8, v1, v9

    .line 1304
    iget-boolean v8, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v17, v18

    :goto_2
    aput v17, v1, v7

    iget-object v7, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->hashCode()I

    move-result v7

    int-to-float v7, v7

    aput v7, v1, v6

    iget-wide v6, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    long-to-float v6, v6

    aput v6, v1, v5

    iget-wide v5, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    long-to-float v5, v5

    aput v5, v1, v4

    iget v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    int-to-float v4, v4

    aput v4, v1, v3

    iget v3, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    int-to-float v3, v3

    aput v3, v1, v2

    .line 1300
    invoke-static {v1}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    move-result v1

    return v1

    .line 1308
    :cond_3
    const/16 v1, 0xf

    new-array v1, v1, [F

    iget v8, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    int-to-float v8, v8

    aput v8, v1, v16

    iget-object v8, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    .line 1309
    invoke-virtual {v8}, Ljava/util/ArrayList;->hashCode()I

    move-result v8

    int-to-float v8, v8

    aput v8, v1, v15

    iget v8, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    int-to-float v8, v8

    aput v8, v1, v14

    iget-object v8, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    .line 1310
    invoke-virtual {v8}, Landroid/util/Size;->hashCode()I

    move-result v8

    int-to-float v8, v8

    aput v8, v1, v13

    iget v8, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    int-to-float v8, v8

    aput v8, v1, v12

    iget v8, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    int-to-float v8, v8

    aput v8, v1, v11

    iget v8, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    int-to-float v8, v8

    aput v8, v1, v10

    .line 1311
    iget-boolean v8, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    if-eqz v8, :cond_4

    move/from16 v8, v17

    goto :goto_3

    :cond_4
    move/from16 v8, v18

    :goto_3
    aput v8, v1, v9

    .line 1312
    iget-object v8, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    if-nez v8, :cond_5

    move/from16 v8, v18

    goto :goto_4

    :cond_5
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    int-to-float v8, v8

    :goto_4
    aput v8, v1, v7

    .line 1313
    iget-boolean v7, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    if-eqz v7, :cond_6

    goto :goto_5

    :cond_6
    move/from16 v17, v18

    :goto_5
    aput v17, v1, v6

    iget-object v6, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->hashCode()I

    move-result v6

    int-to-float v6, v6

    aput v6, v1, v5

    iget-wide v5, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    long-to-float v5, v5

    aput v5, v1, v4

    iget-wide v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    long-to-float v4, v4

    aput v4, v1, v3

    iget v3, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    int-to-float v3, v3

    aput v3, v1, v2

    iget v2, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    int-to-float v2, v2

    const/16 v3, 0xe

    aput v2, v1, v3

    .line 1308
    invoke-static {v1}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    move-result v1

    return v1
.end method

.method public greylist-max-o isDeferredConfiguration()Z
    .locals 1

    .line 794
    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    return v0
.end method

.method public greylist-max-o isForPhysicalCamera()Z
    .locals 1

    .line 780
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist removeSensorPixelModeUsed(I)V
    .locals 3
    .param p1, "sensorPixelModeUsed"    # I

    .line 766
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    return-void

    .line 767
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sensorPixelMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not part of this output configuration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 879
    invoke-virtual {p0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 883
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    return-void

    .line 884
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface is not part of this output configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 880
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot remove surface associated with this output configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDynamicRangeProfile(J)V
    .locals 0
    .param p1, "profile"    # J

    .line 435
    iput-wide p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    .line 436
    return-void
.end method

.method public whitelist setMirrorMode(I)V
    .locals 3
    .param p1, "mirrorMode"    # I

    .line 1013
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 1017
    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    .line 1018
    return-void

    .line 1015
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid mirror mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist setMultiResolutionOutput()V
    .locals 2

    .line 402
    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    if-nez v0, :cond_1

    .line 406
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    .line 412
    return-void

    .line 407
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multi-resolution output flag should only be set for surface with non-negative group ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multi-resolution output flag must not be set for configuration with surface sharing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPhysicalCameraId(Ljava/lang/String;)V
    .locals 0
    .param p1, "physicalCameraId"    # Ljava/lang/String;

    .line 694
    iput-object p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    .line 695
    return-void
.end method

.method public whitelist setStreamUseCase(J)V
    .locals 5
    .param p1, "streamUseCase"    # J

    .line 933
    const-wide/16 v0, 0x5

    .line 934
    .local v0, "maxUseCaseValue":J
    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    const-wide/32 v2, 0x10000

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    goto :goto_0

    .line 936
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not a valid stream use case value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 940
    :cond_1
    :goto_0
    iput-wide p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    .line 941
    return-void
.end method

.method public whitelist setTimestampBase(I)V
    .locals 3
    .param p1, "timestampBase"    # I

    .line 976
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 981
    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    .line 982
    return-void

    .line 978
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid timestamp base value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1215
    if-eqz p1, :cond_0

    .line 1218
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1219
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1220
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1221
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1222
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1223
    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1224
    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1225
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1226
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1227
    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1229
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->convertIntegerToIntList(Ljava/util/List;)[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1230
    iget-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1231
    iget-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1232
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1233
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1234
    return-void

    .line 1216
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dest must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
