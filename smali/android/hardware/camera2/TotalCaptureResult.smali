.class public final Landroid/hardware/camera2/TotalCaptureResult;
.super Landroid/hardware/camera2/CaptureResult;
.source "TotalCaptureResult.java"


# instance fields
.field private final greylist-max-o mPartialResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPhysicalCaptureResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mSessionId:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;I)V
    .locals 1
    .param p1, "results"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "sequenceId"    # I

    .line 133
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;I)V

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPartialResults:Ljava/util/List;

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mSessionId:I

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/HashMap;

    .line 138
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;IJLjava/util/List;I[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V
    .locals 20
    .param p1, "logicalCameraId"    # Ljava/lang/String;
    .param p2, "results"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p3, "parent"    # Landroid/hardware/camera2/CaptureRequest;
    .param p4, "requestId"    # I
    .param p5, "frameNumber"    # J
    .param p8, "sessionId"    # I
    .param p9, "physicalResults"    # [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            "Landroid/hardware/camera2/CaptureRequest;",
            "IJ",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;I[",
            "Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;",
            ")V"
        }
    .end annotation

    .line 105
    .local p7, "partials":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p9

    invoke-direct/range {p0 .. p6}, Landroid/hardware/camera2/CaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;IJ)V

    .line 107
    if-nez v1, :cond_0

    .line 108
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Landroid/hardware/camera2/TotalCaptureResult;->mPartialResults:Ljava/util/List;

    goto :goto_0

    .line 110
    :cond_0
    iput-object v1, v0, Landroid/hardware/camera2/TotalCaptureResult;->mPartialResults:Ljava/util/List;

    .line 113
    :goto_0
    move/from16 v3, p8

    iput v3, v0, Landroid/hardware/camera2/TotalCaptureResult;->mSessionId:I

    .line 115
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Landroid/hardware/camera2/TotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/HashMap;

    .line 116
    array-length v14, v2

    const/4 v15, 0x0

    move v13, v15

    :goto_1
    if-ge v13, v14, :cond_1

    aget-object v16, v2, v13

    .line 117
    .local v16, "onePhysicalResult":Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    new-instance v17, Landroid/hardware/camera2/TotalCaptureResult;

    .line 118
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->getCameraId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->getCameraMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v6

    const/4 v11, 0x0

    new-array v12, v15, [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    move-object/from16 v4, v17

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-wide/from16 v9, p5

    move-object/from16 v18, v12

    move/from16 v12, p8

    move/from16 v19, v13

    move-object/from16 v13, v18

    invoke-direct/range {v4 .. v13}, Landroid/hardware/camera2/TotalCaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;IJLjava/util/List;I[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V

    .line 121
    .local v4, "physicalResult":Landroid/hardware/camera2/TotalCaptureResult;
    iget-object v5, v0, Landroid/hardware/camera2/TotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->getCameraId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .end local v4    # "physicalResult":Landroid/hardware/camera2/TotalCaptureResult;
    .end local v16    # "onePhysicalResult":Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    add-int/lit8 v13, v19, 0x1

    goto :goto_1

    .line 124
    :cond_1
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;Ljava/util/List;I[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V
    .locals 17
    .param p1, "logicalCameraId"    # Ljava/lang/String;
    .param p2, "results"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p3, "parent"    # Landroid/hardware/camera2/CaptureRequest;
    .param p4, "extras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;
    .param p6, "sessionId"    # I
    .param p7, "physicalResults"    # [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Landroid/hardware/camera2/impl/CaptureResultExtras;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;I[",
            "Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;",
            ")V"
        }
    .end annotation

    .line 76
    .local p5, "partials":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    invoke-direct/range {p0 .. p4}, Landroid/hardware/camera2/CaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 78
    if-nez v1, :cond_0

    .line 79
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Landroid/hardware/camera2/TotalCaptureResult;->mPartialResults:Ljava/util/List;

    goto :goto_0

    .line 81
    :cond_0
    iput-object v1, v0, Landroid/hardware/camera2/TotalCaptureResult;->mPartialResults:Ljava/util/List;

    .line 84
    :goto_0
    move/from16 v3, p6

    iput v3, v0, Landroid/hardware/camera2/TotalCaptureResult;->mSessionId:I

    .line 86
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Landroid/hardware/camera2/TotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/HashMap;

    .line 87
    array-length v12, v2

    const/4 v13, 0x0

    move v14, v13

    :goto_1
    if-ge v14, v12, :cond_1

    aget-object v15, v2, v14

    .line 88
    .local v15, "onePhysicalResult":Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    new-instance v16, Landroid/hardware/camera2/TotalCaptureResult;

    .line 89
    invoke-virtual {v15}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->getCameraId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->getCameraMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v6

    const/4 v9, 0x0

    new-array v11, v13, [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    move-object/from16 v4, v16

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v10, p6

    invoke-direct/range {v4 .. v11}, Landroid/hardware/camera2/TotalCaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;Ljava/util/List;I[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V

    .line 91
    .local v4, "physicalResult":Landroid/hardware/camera2/TotalCaptureResult;
    iget-object v5, v0, Landroid/hardware/camera2/TotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/HashMap;

    invoke-virtual {v15}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->getCameraId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .end local v4    # "physicalResult":Landroid/hardware/camera2/TotalCaptureResult;
    .end local v15    # "onePhysicalResult":Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 94
    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist getPartialResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPartialResults:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPhysicalCameraResults()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPhysicalCameraTotalResults()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getSessionId()I
    .locals 1

    .line 164
    iget v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mSessionId:I

    return v0
.end method
