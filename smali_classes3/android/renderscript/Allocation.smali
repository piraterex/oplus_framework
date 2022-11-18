.class public Landroid/renderscript/Allocation;
.super Landroid/renderscript/BaseObj;
.source "Allocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Allocation$OnBufferAvailableListener;,
        Landroid/renderscript/Allocation$MipmapControl;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o MAX_NUMBER_IO_INPUT_ALLOC:I = 0x10

.field public static final whitelist USAGE_GRAPHICS_CONSTANTS:I = 0x8

.field public static final whitelist USAGE_GRAPHICS_RENDER_TARGET:I = 0x10

.field public static final whitelist USAGE_GRAPHICS_TEXTURE:I = 0x2

.field public static final whitelist USAGE_GRAPHICS_VERTEX:I = 0x4

.field public static final whitelist USAGE_IO_INPUT:I = 0x20

.field public static final whitelist USAGE_IO_OUTPUT:I = 0x40

.field public static final whitelist USAGE_SCRIPT:I = 0x1

.field public static final whitelist USAGE_SHARED:I = 0x80

.field static greylist-max-o mAllocationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/renderscript/Allocation;",
            ">;"
        }
    .end annotation
.end field

.field static greylist-max-o mBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field greylist-max-o mAdaptedAllocation:Landroid/renderscript/Allocation;

.field greylist-max-o mAutoPadding:Z

.field greylist-max-o mBitmap:Landroid/graphics/Bitmap;

.field greylist-max-o mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

.field private greylist-max-o mByteBuffer:Ljava/nio/ByteBuffer;

.field private greylist-max-o mByteBufferStride:J

.field greylist-max-o mCurrentCount:I

.field greylist-max-o mCurrentDimX:I

.field greylist-max-o mCurrentDimY:I

.field greylist-max-o mCurrentDimZ:I

.field private greylist-max-o mGetSurfaceSurface:Landroid/view/Surface;

.field greylist-max-o mMipmapControl:Landroid/renderscript/Allocation$MipmapControl;

.field greylist-max-o mOwningType:Z

.field greylist-max-o mReadAllowed:Z

.field greylist-max-o mSelectedArray:[I

.field greylist-max-o mSelectedFace:Landroid/renderscript/Type$CubemapFace;

.field greylist-max-o mSelectedLOD:I

.field greylist-max-o mSelectedX:I

.field greylist-max-o mSelectedY:I

.field greylist-max-o mSelectedZ:I

.field greylist-max-o mSize:I

.field greylist-max-o mTimeStamp:J

.field greylist-max-o mType:Landroid/renderscript/Type;

.field greylist-max-o mUsage:I

.field greylist-max-o mWriteAllowed:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    .line 2653
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 2655
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 2656
    return-void
.end method

.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;
    .param p4, "t"    # Landroid/renderscript/Type;
    .param p5, "usage"    # I

    .line 387
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/renderscript/Allocation;->mOwningType:Z

    .line 72
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/renderscript/Allocation;->mTimeStamp:J

    .line 73
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/renderscript/Allocation;->mReadAllowed:Z

    .line 74
    iput-boolean v3, p0, Landroid/renderscript/Allocation;->mWriteAllowed:Z

    .line 75
    iput-boolean v0, p0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    .line 81
    sget-object v4, Landroid/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/renderscript/Type$CubemapFace;

    iput-object v4, p0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    .line 91
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    .line 92
    iput-object v4, p0, Landroid/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 93
    iput-wide v1, p0, Landroid/renderscript/Allocation;->mByteBufferStride:J

    .line 388
    and-int/lit16 v1, p5, -0x100

    if-nez v1, :cond_3

    .line 399
    and-int/lit8 v1, p5, 0x20

    if-eqz v1, :cond_1

    .line 400
    iput-boolean v0, p0, Landroid/renderscript/Allocation;->mWriteAllowed:Z

    .line 402
    and-int/lit8 v1, p5, -0x24

    if-nez v1, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid usage combination."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_1
    :goto_0
    iput-object p4, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 410
    iput p5, p0, Landroid/renderscript/Allocation;->mUsage:I

    .line 412
    if-eqz p4, :cond_2

    .line 416
    invoke-virtual {p4}, Landroid/renderscript/Type;->getCount()I

    move-result v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, Landroid/renderscript/Allocation;->mSize:I

    .line 417
    invoke-direct {p0, p4}, Landroid/renderscript/Allocation;->updateCacheInfo(Landroid/renderscript/Type;)V

    .line 420
    :cond_2
    :try_start_0
    sget-object v1, Landroid/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    sget-object v2, Landroid/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Landroid/renderscript/Allocation;->mSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    nop

    .line 425
    iget-object v0, p0, Landroid/renderscript/Allocation;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "destroy"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 426
    return-void

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t invoke registerNativeAllocation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RenderScript_jni"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Unknown usage specified."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V
    .locals 6
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;
    .param p4, "t"    # Landroid/renderscript/Type;
    .param p5, "owningType"    # Z
    .param p6, "usage"    # I
    .param p7, "mips"    # Landroid/renderscript/Allocation$MipmapControl;

    .line 429
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    .line 430
    iput-boolean p5, p0, Landroid/renderscript/Allocation;->mOwningType:Z

    .line 431
    iput-object p7, p0, Landroid/renderscript/Allocation;->mMipmapControl:Landroid/renderscript/Allocation$MipmapControl;

    .line 432
    return-void
.end method

.method private greylist-max-o copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 22
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;
    .param p4, "dt"    # Landroid/renderscript/Element$DataType;
    .param p5, "arrayLen"    # I

    move-object/from16 v7, p0

    .line 1144
    const-wide/32 v8, 0x8000

    :try_start_0
    const-string v0, "copy1DRangeFromUnchecked"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1145
    iget-object v0, v7, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    mul-int v0, v0, p2

    .line 1147
    .local v0, "dataSize":I
    const/4 v1, 0x0

    .line 1148
    .local v1, "usePadding":Z
    iget-boolean v2, v7, Landroid/renderscript/Allocation;->mAutoPadding:Z

    if-eqz v2, :cond_0

    iget-object v2, v7, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1149
    const/4 v1, 0x1

    move/from16 v21, v1

    goto :goto_0

    .line 1151
    :cond_0
    move/from16 v21, v1

    .end local v1    # "usePadding":Z
    .local v21, "usePadding":Z
    :goto_0
    move-object/from16 v15, p4

    iget v1, v15, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v4, p5, v1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move v5, v0

    move/from16 v6, v21

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;->data1DChecks(IIIIZ)V

    .line 1152
    iget-object v10, v7, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v11

    iget v14, v7, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v1, v7, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v1, v1, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v13, p1

    move/from16 v15, p2

    move-object/from16 v16, p3

    move/from16 v17, v0

    move-object/from16 v18, p4

    move/from16 v19, v1

    move/from16 v20, v21

    invoke-virtual/range {v10 .. v20}, Landroid/renderscript/RenderScript;->nAllocationData1D(JIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1155
    .end local v0    # "dataSize":I
    .end local v21    # "usePadding":Z
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1156
    nop

    .line 1157
    return-void

    .line 1155
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1156
    throw v0
.end method

.method private greylist-max-o copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 22
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;
    .param p4, "dt"    # Landroid/renderscript/Element$DataType;
    .param p5, "arrayLen"    # I

    move-object/from16 v7, p0

    .line 2098
    const-wide/32 v8, 0x8000

    :try_start_0
    const-string v0, "copy1DRangeToUnchecked"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2099
    iget-object v0, v7, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    mul-int v0, v0, p2

    .line 2101
    .local v0, "dataSize":I
    const/4 v1, 0x0

    .line 2102
    .local v1, "usePadding":Z
    iget-boolean v2, v7, Landroid/renderscript/Allocation;->mAutoPadding:Z

    if-eqz v2, :cond_0

    iget-object v2, v7, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 2103
    const/4 v1, 0x1

    move/from16 v21, v1

    goto :goto_0

    .line 2105
    :cond_0
    move/from16 v21, v1

    .end local v1    # "usePadding":Z
    .local v21, "usePadding":Z
    :goto_0
    move-object/from16 v15, p4

    iget v1, v15, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v4, p5, v1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move v5, v0

    move/from16 v6, v21

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;->data1DChecks(IIIIZ)V

    .line 2106
    iget-object v10, v7, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v11

    iget v14, v7, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v1, v7, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v1, v1, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v13, p1

    move/from16 v15, p2

    move-object/from16 v16, p3

    move/from16 v17, v0

    move-object/from16 v18, p4

    move/from16 v19, v1

    move/from16 v20, v21

    invoke-virtual/range {v10 .. v20}, Landroid/renderscript/RenderScript;->nAllocationRead1D(JIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2109
    .end local v0    # "dataSize":I
    .end local v21    # "usePadding":Z
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2110
    nop

    .line 2111
    return-void

    .line 2109
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2110
    throw v0
.end method

.method private greylist-max-o copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 21
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "array"    # Ljava/lang/Object;
    .param p8, "dt"    # Landroid/renderscript/Element$DataType;
    .param p9, "arrayLen"    # I

    move-object/from16 v1, p0

    .line 1753
    const-wide/32 v2, 0x8000

    :try_start_0
    const-string v0, "copy3DRangeFromUnchecked"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1754
    iget-object v0, v1, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1755
    invoke-direct/range {p0 .. p6}, Landroid/renderscript/Allocation;->validate3DRange(IIIIII)V

    .line 1756
    iget-object v0, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    mul-int v0, v0, p4

    mul-int v0, v0, p5

    mul-int v0, v0, p6

    .line 1758
    .local v0, "dataSize":I
    const/4 v4, 0x0

    .line 1759
    .local v4, "usePadding":Z
    move-object/from16 v15, p8

    iget v5, v15, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v5, v5, p9

    .line 1760
    .local v5, "sizeBytes":I
    iget-boolean v6, v1, Landroid/renderscript/Allocation;->mAutoPadding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "Array too small for allocation type."

    if-eqz v6, :cond_1

    :try_start_1
    iget-object v6, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_1

    .line 1761
    div-int/lit8 v6, v0, 0x4

    mul-int/2addr v6, v8

    if-gt v6, v5, :cond_0

    .line 1764
    const/4 v4, 0x1

    .line 1765
    move v5, v0

    move/from16 v19, v4

    move/from16 v20, v5

    goto :goto_0

    .line 1762
    :cond_0
    new-instance v6, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {v6, v7}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/renderscript/Allocation;
    .end local p1    # "xoff":I
    .end local p2    # "yoff":I
    .end local p3    # "zoff":I
    .end local p4    # "w":I
    .end local p5    # "h":I
    .end local p6    # "d":I
    .end local p7    # "array":Ljava/lang/Object;
    .end local p8    # "dt":Landroid/renderscript/Element$DataType;
    .end local p9    # "arrayLen":I
    throw v6

    .line 1767
    .restart local p0    # "this":Landroid/renderscript/Allocation;
    .restart local p1    # "xoff":I
    .restart local p2    # "yoff":I
    .restart local p3    # "zoff":I
    .restart local p4    # "w":I
    .restart local p5    # "h":I
    .restart local p6    # "d":I
    .restart local p7    # "array":Ljava/lang/Object;
    .restart local p8    # "dt":Landroid/renderscript/Element$DataType;
    .restart local p9    # "arrayLen":I
    :cond_1
    if-gt v0, v5, :cond_2

    move/from16 v19, v4

    move/from16 v20, v5

    .line 1771
    .end local v4    # "usePadding":Z
    .end local v5    # "sizeBytes":I
    .local v19, "usePadding":Z
    .local v20, "sizeBytes":I
    :goto_0
    iget-object v4, v1, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v5

    iget v10, v1, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v7, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v7, v7, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v7, v7, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v14, v7, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v17, v14

    move-object/from16 v14, p7

    move/from16 v15, v20

    move-object/from16 v16, p8

    move/from16 v18, v19

    invoke-virtual/range {v4 .. v18}, Landroid/renderscript/RenderScript;->nAllocationData3D(JIIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1775
    .end local v0    # "dataSize":I
    .end local v19    # "usePadding":Z
    .end local v20    # "sizeBytes":I
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1776
    nop

    .line 1777
    return-void

    .line 1768
    .restart local v0    # "dataSize":I
    .restart local v4    # "usePadding":Z
    .restart local v5    # "sizeBytes":I
    :cond_2
    :try_start_2
    new-instance v6, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {v6, v7}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/renderscript/Allocation;
    .end local p1    # "xoff":I
    .end local p2    # "yoff":I
    .end local p3    # "zoff":I
    .end local p4    # "w":I
    .end local p5    # "h":I
    .end local p6    # "d":I
    .end local p7    # "array":Ljava/lang/Object;
    .end local p8    # "dt":Landroid/renderscript/Element$DataType;
    .end local p9    # "arrayLen":I
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1775
    .end local v0    # "dataSize":I
    .end local v4    # "usePadding":Z
    .end local v5    # "sizeBytes":I
    .restart local p0    # "this":Landroid/renderscript/Allocation;
    .restart local p1    # "xoff":I
    .restart local p2    # "yoff":I
    .restart local p3    # "zoff":I
    .restart local p4    # "w":I
    .restart local p5    # "h":I
    .restart local p6    # "d":I
    .restart local p7    # "array":Ljava/lang/Object;
    .restart local p8    # "dt":Landroid/renderscript/Element$DataType;
    .restart local p9    # "arrayLen":I
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1776
    throw v0
.end method

.method private greylist-max-o copy3DRangeToUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 21
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "array"    # Ljava/lang/Object;
    .param p8, "dt"    # Landroid/renderscript/Element$DataType;
    .param p9, "arrayLen"    # I

    move-object/from16 v1, p0

    .line 2592
    const-wide/32 v2, 0x8000

    :try_start_0
    const-string v0, "copy3DRangeToUnchecked"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2593
    iget-object v0, v1, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2594
    invoke-direct/range {p0 .. p6}, Landroid/renderscript/Allocation;->validate3DRange(IIIIII)V

    .line 2595
    iget-object v0, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    mul-int v0, v0, p4

    mul-int v0, v0, p5

    mul-int v0, v0, p6

    .line 2597
    .local v0, "dataSize":I
    const/4 v4, 0x0

    .line 2598
    .local v4, "usePadding":Z
    move-object/from16 v15, p8

    iget v5, v15, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v5, v5, p9

    .line 2599
    .local v5, "sizeBytes":I
    iget-boolean v6, v1, Landroid/renderscript/Allocation;->mAutoPadding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "Array too small for allocation type."

    if-eqz v6, :cond_1

    :try_start_1
    iget-object v6, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_1

    .line 2600
    div-int/lit8 v6, v0, 0x4

    mul-int/2addr v6, v8

    if-gt v6, v5, :cond_0

    .line 2603
    const/4 v4, 0x1

    .line 2604
    move v5, v0

    move/from16 v19, v4

    move/from16 v20, v5

    goto :goto_0

    .line 2601
    :cond_0
    new-instance v6, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {v6, v7}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/renderscript/Allocation;
    .end local p1    # "xoff":I
    .end local p2    # "yoff":I
    .end local p3    # "zoff":I
    .end local p4    # "w":I
    .end local p5    # "h":I
    .end local p6    # "d":I
    .end local p7    # "array":Ljava/lang/Object;
    .end local p8    # "dt":Landroid/renderscript/Element$DataType;
    .end local p9    # "arrayLen":I
    throw v6

    .line 2606
    .restart local p0    # "this":Landroid/renderscript/Allocation;
    .restart local p1    # "xoff":I
    .restart local p2    # "yoff":I
    .restart local p3    # "zoff":I
    .restart local p4    # "w":I
    .restart local p5    # "h":I
    .restart local p6    # "d":I
    .restart local p7    # "array":Ljava/lang/Object;
    .restart local p8    # "dt":Landroid/renderscript/Element$DataType;
    .restart local p9    # "arrayLen":I
    :cond_1
    if-gt v0, v5, :cond_2

    move/from16 v19, v4

    move/from16 v20, v5

    .line 2610
    .end local v4    # "usePadding":Z
    .end local v5    # "sizeBytes":I
    .local v19, "usePadding":Z
    .local v20, "sizeBytes":I
    :goto_0
    iget-object v4, v1, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v5

    iget v10, v1, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v7, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v7, v7, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v7, v7, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v14, v7, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v17, v14

    move-object/from16 v14, p7

    move/from16 v15, v20

    move-object/from16 v16, p8

    move/from16 v18, v19

    invoke-virtual/range {v4 .. v18}, Landroid/renderscript/RenderScript;->nAllocationRead3D(JIIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2613
    .end local v0    # "dataSize":I
    .end local v19    # "usePadding":Z
    .end local v20    # "sizeBytes":I
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2614
    nop

    .line 2615
    return-void

    .line 2607
    .restart local v0    # "dataSize":I
    .restart local v4    # "usePadding":Z
    .restart local v5    # "sizeBytes":I
    :cond_2
    :try_start_2
    new-instance v6, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {v6, v7}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/renderscript/Allocation;
    .end local p1    # "xoff":I
    .end local p2    # "yoff":I
    .end local p3    # "zoff":I
    .end local p4    # "w":I
    .end local p5    # "h":I
    .end local p6    # "d":I
    .end local p7    # "array":Ljava/lang/Object;
    .end local p8    # "dt":Landroid/renderscript/Element$DataType;
    .end local p9    # "arrayLen":I
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2613
    .end local v0    # "dataSize":I
    .end local v4    # "usePadding":Z
    .end local v5    # "sizeBytes":I
    .restart local p0    # "this":Landroid/renderscript/Allocation;
    .restart local p1    # "xoff":I
    .restart local p2    # "yoff":I
    .restart local p3    # "zoff":I
    .restart local p4    # "w":I
    .restart local p5    # "h":I
    .restart local p6    # "d":I
    .restart local p7    # "array":Ljava/lang/Object;
    .restart local p8    # "dt":Landroid/renderscript/Element$DataType;
    .restart local p9    # "arrayLen":I
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2614
    throw v0
.end method

.method private greylist-max-o copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 14
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "dt"    # Landroid/renderscript/Element$DataType;
    .param p3, "arrayLen"    # I

    move-object v11, p0

    .line 693
    const-wide/32 v12, 0x8000

    :try_start_0
    const-string v0, "copyFromUnchecked"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 694
    iget-object v0, v11, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 695
    iget v7, v11, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v7, :cond_0

    .line 696
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v11, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v6, v11, Landroid/renderscript/Allocation;->mCurrentDimY:I

    move-object v1, p0

    move-object v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    invoke-direct/range {v1 .. v10}, Landroid/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    goto :goto_0

    .line 697
    :cond_0
    iget v5, v11, Landroid/renderscript/Allocation;->mCurrentDimY:I

    if-lez v5, :cond_1

    .line 698
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v11, Landroid/renderscript/Allocation;->mCurrentDimX:I

    move-object v1, p0

    move-object v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    goto :goto_0

    .line 700
    :cond_1
    const/4 v2, 0x0

    iget v3, v11, Landroid/renderscript/Allocation;->mCurrentCount:I

    move-object v1, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    :goto_0
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 704
    nop

    .line 705
    return-void

    .line 703
    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 704
    throw v0
.end method

.method private greylist-max-o copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 10
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "dt"    # Landroid/renderscript/Element$DataType;
    .param p3, "arrayLen"    # I

    .line 1863
    const-wide/32 v0, 0x8000

    :try_start_0
    const-string v2, "copyTo"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1864
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 1865
    const/4 v2, 0x0

    .line 1866
    .local v2, "usePadding":Z
    iget-boolean v3, p0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    const/4 v4, 0x3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v4, :cond_0

    .line 1867
    const/4 v2, 0x1

    .line 1869
    :cond_0
    const-string v3, "Size of output array cannot be smaller than size of allocation."

    if-eqz v2, :cond_2

    .line 1870
    :try_start_1
    iget v5, p2, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int/2addr v5, p3

    iget v6, p0, Landroid/renderscript/Allocation;->mSize:I

    div-int/lit8 v6, v6, 0x4

    mul-int/2addr v6, v4

    if-lt v5, v6, :cond_1

    goto :goto_0

    .line 1871
    :cond_1
    new-instance v4, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {v4, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/renderscript/Allocation;
    .end local p1    # "array":Ljava/lang/Object;
    .end local p2    # "dt":Landroid/renderscript/Element$DataType;
    .end local p3    # "arrayLen":I
    throw v4

    .line 1875
    .restart local p0    # "this":Landroid/renderscript/Allocation;
    .restart local p1    # "array":Ljava/lang/Object;
    .restart local p2    # "dt":Landroid/renderscript/Element$DataType;
    .restart local p3    # "arrayLen":I
    :cond_2
    iget v4, p2, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int/2addr v4, p3

    iget v5, p0, Landroid/renderscript/Allocation;->mSize:I

    if-lt v4, v5, :cond_3

    .line 1880
    :goto_0
    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v4, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v6, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v6, v6, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v6, v6, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v8, v6, Landroid/renderscript/Element$DataType;->mSize:I

    move-object v6, p1

    move-object v7, p2

    move v9, v2

    invoke-virtual/range {v3 .. v9}, Landroid/renderscript/RenderScript;->nAllocationRead(JLjava/lang/Object;Landroid/renderscript/Element$DataType;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1882
    .end local v2    # "usePadding":Z
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1883
    nop

    .line 1884
    return-void

    .line 1876
    .restart local v2    # "usePadding":Z
    :cond_3
    :try_start_2
    new-instance v4, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {v4, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/renderscript/Allocation;
    .end local p1    # "array":Ljava/lang/Object;
    .end local p2    # "dt":Landroid/renderscript/Element$DataType;
    .end local p3    # "arrayLen":I
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1882
    .end local v2    # "usePadding":Z
    .restart local p0    # "this":Landroid/renderscript/Allocation;
    .restart local p1    # "array":Ljava/lang/Object;
    .restart local p2    # "dt":Landroid/renderscript/Element$DataType;
    .restart local p3    # "arrayLen":I
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1883
    throw v2
.end method

.method public static whitelist createAllocations(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;II)[Landroid/renderscript/Allocation;
    .locals 6
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "t"    # Landroid/renderscript/Type;
    .param p2, "usage"    # I
    .param p3, "numAlloc"    # I

    .line 2892
    const-wide/32 v0, 0x8000

    :try_start_0
    const-string v2, "createAllocations"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2893
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2894
    invoke-virtual {p1, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 2898
    new-array v2, p3, [Landroid/renderscript/Allocation;

    .line 2899
    .local v2, "mAllocationArray":[Landroid/renderscript/Allocation;
    invoke-static {p0, p1, p2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2900
    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_1

    .line 2901
    const/16 v3, 0x10

    if-gt p3, v3, :cond_0

    .line 2906
    aget-object v3, v2, v4

    invoke-virtual {v3, p3}, Landroid/renderscript/Allocation;->setupBufferQueue(I)V

    goto :goto_0

    .line 2902
    :cond_0
    aget-object v3, v2, v4

    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    .line 2903
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "Exceeds the max number of Allocations allowed: 16"

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "t":Landroid/renderscript/Type;
    .end local p2    # "usage":I
    .end local p3    # "numAlloc":I
    throw v3

    .line 2909
    .restart local p0    # "rs":Landroid/renderscript/RenderScript;
    .restart local p1    # "t":Landroid/renderscript/Type;
    .restart local p2    # "usage":I
    .restart local p3    # "numAlloc":I
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    if-ge v3, p3, :cond_2

    .line 2910
    aget-object v5, v2, v4

    invoke-static {p0, v5}, Landroid/renderscript/Allocation;->createFromAllocation(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/Allocation;

    move-result-object v5

    aput-object v5, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2909
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2912
    .end local v3    # "i":I
    :cond_2
    nop

    .line 2914
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2912
    return-object v2

    .line 2895
    .end local v2    # "mAllocationArray":[Landroid/renderscript/Allocation;
    :cond_3
    :try_start_1
    new-instance v2, Landroid/renderscript/RSInvalidStateException;

    const-string v3, "Bad Type"

    invoke-direct {v2, v3}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "t":Landroid/renderscript/Type;
    .end local p2    # "usage":I
    .end local p3    # "numAlloc":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2914
    .restart local p0    # "rs":Landroid/renderscript/RenderScript;
    .restart local p1    # "t":Landroid/renderscript/Type;
    .restart local p2    # "usage":I
    .restart local p3    # "numAlloc":I
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2915
    throw v2
.end method

.method public static whitelist createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .line 3138
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 19
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "mips"    # Landroid/renderscript/Allocation$MipmapControl;
    .param p3, "usage"    # I

    .line 3092
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3094
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 3095
    .local v10, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 3097
    .local v11, "width":I
    rem-int/lit8 v0, v11, 0x6

    if-nez v0, :cond_5

    .line 3100
    div-int/lit8 v0, v11, 0x6

    if-ne v0, v10, :cond_4

    .line 3103
    add-int/lit8 v0, v10, -0x1

    and-int/2addr v0, v10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v12, v0

    .line 3104
    .local v12, "isPow2":Z
    if-eqz v12, :cond_3

    .line 3108
    invoke-static/range {p0 .. p1}, Landroid/renderscript/Allocation;->elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    move-result-object v13

    .line 3109
    .local v13, "e":Landroid/renderscript/Element;
    new-instance v0, Landroid/renderscript/Type$Builder;

    invoke-direct {v0, v8, v13}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    move-object v14, v0

    .line 3110
    .local v14, "tb":Landroid/renderscript/Type$Builder;
    invoke-virtual {v14, v10}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 3111
    invoke-virtual {v14, v10}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 3112
    invoke-virtual {v14, v2}, Landroid/renderscript/Type$Builder;->setFaces(Z)Landroid/renderscript/Type$Builder;

    .line 3113
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    if-ne v9, v0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v14, v1}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    .line 3114
    invoke-virtual {v14}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v15

    .line 3116
    .local v15, "t":Landroid/renderscript/Type;
    invoke-virtual {v15, v8}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    iget v3, v9, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nAllocationCubeCreateFromBitmap(JILandroid/graphics/Bitmap;I)J

    move-result-wide v16

    .line 3117
    .local v16, "id":J
    const-wide/16 v0, 0x0

    cmp-long v0, v16, v0

    if-eqz v0, :cond_2

    .line 3120
    new-instance v18, Landroid/renderscript/Allocation;

    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    move-object/from16 v3, p0

    move-object v4, v15

    move/from16 v6, p3

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V

    return-object v18

    .line 3118
    :cond_2
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load failed for bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " element "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3105
    .end local v13    # "e":Landroid/renderscript/Element;
    .end local v14    # "tb":Landroid/renderscript/Type$Builder;
    .end local v15    # "t":Landroid/renderscript/Type;
    .end local v16    # "id":J
    :cond_3
    move-object/from16 v2, p1

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Only power of 2 cube faces supported"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3101
    .end local v12    # "isPow2":Z
    :cond_4
    move-object/from16 v2, p1

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Only square cube map faces supported"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3098
    :cond_5
    move-object/from16 v2, p1

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Cubemap height must be multiple of 6"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createCubemapFromCubeFaces(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .locals 9
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "xpos"    # Landroid/graphics/Bitmap;
    .param p2, "xneg"    # Landroid/graphics/Bitmap;
    .param p3, "ypos"    # Landroid/graphics/Bitmap;
    .param p4, "yneg"    # Landroid/graphics/Bitmap;
    .param p5, "zpos"    # Landroid/graphics/Bitmap;
    .param p6, "zneg"    # Landroid/graphics/Bitmap;

    .line 3233
    sget-object v7, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v8, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v8}, Landroid/renderscript/Allocation;->createCubemapFromCubeFaces(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createCubemapFromCubeFaces(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 16
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "xpos"    # Landroid/graphics/Bitmap;
    .param p2, "xneg"    # Landroid/graphics/Bitmap;
    .param p3, "ypos"    # Landroid/graphics/Bitmap;
    .param p4, "yneg"    # Landroid/graphics/Bitmap;
    .param p5, "zpos"    # Landroid/graphics/Bitmap;
    .param p6, "zneg"    # Landroid/graphics/Bitmap;
    .param p7, "mips"    # Landroid/renderscript/Allocation$MipmapControl;
    .param p8, "usage"    # I

    .line 3169
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 3170
    .local v2, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v2, :cond_8

    .line 3171
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v2, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v3, v2, :cond_7

    .line 3172
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v2, :cond_6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v3, v2, :cond_6

    .line 3173
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v2, :cond_5

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 3174
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v2, :cond_4

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 3175
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v2, :cond_3

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 3178
    add-int/lit8 v3, v2, -0x1

    and-int/2addr v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 3179
    .local v3, "isPow2":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 3183
    invoke-static/range {p0 .. p1}, Landroid/renderscript/Allocation;->elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    move-result-object v6

    .line 3184
    .local v6, "e":Landroid/renderscript/Element;
    new-instance v7, Landroid/renderscript/Type$Builder;

    invoke-direct {v7, v0, v6}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 3185
    .local v7, "tb":Landroid/renderscript/Type$Builder;
    invoke-virtual {v7, v2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 3186
    invoke-virtual {v7, v2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 3187
    invoke-virtual {v7, v5}, Landroid/renderscript/Type$Builder;->setFaces(Z)Landroid/renderscript/Type$Builder;

    .line 3188
    sget-object v8, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    if-ne v1, v8, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {v7, v4}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    .line 3189
    invoke-virtual {v7}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    .line 3190
    .local v4, "t":Landroid/renderscript/Type;
    move/from16 v5, p8

    invoke-static {v0, v4, v1, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v8

    .line 3192
    .local v8, "cubemap":Landroid/renderscript/Allocation;
    invoke-static {v0, v8}, Landroid/renderscript/AllocationAdapter;->create2D(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/AllocationAdapter;

    move-result-object v9

    .line 3193
    .local v9, "adapter":Landroid/renderscript/AllocationAdapter;
    sget-object v10, Landroid/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v9, v10}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 3194
    move-object/from16 v10, p1

    invoke-virtual {v9, v10}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 3195
    sget-object v11, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_X:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v9, v11}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 3196
    move-object/from16 v11, p2

    invoke-virtual {v9, v11}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 3197
    sget-object v12, Landroid/renderscript/Type$CubemapFace;->POSITIVE_Y:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v9, v12}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 3198
    move-object/from16 v12, p3

    invoke-virtual {v9, v12}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 3199
    sget-object v13, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Y:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v9, v13}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 3200
    move-object/from16 v13, p4

    invoke-virtual {v9, v13}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 3201
    sget-object v14, Landroid/renderscript/Type$CubemapFace;->POSITIVE_Z:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v9, v14}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 3202
    move-object/from16 v14, p5

    invoke-virtual {v9, v14}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 3203
    sget-object v15, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Z:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v9, v15}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 3204
    move-object/from16 v15, p6

    invoke-virtual {v9, v15}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 3206
    return-object v8

    .line 3180
    .end local v4    # "t":Landroid/renderscript/Type;
    .end local v6    # "e":Landroid/renderscript/Element;
    .end local v7    # "tb":Landroid/renderscript/Type$Builder;
    .end local v8    # "cubemap":Landroid/renderscript/Allocation;
    .end local v9    # "adapter":Landroid/renderscript/AllocationAdapter;
    :cond_2
    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v5, p8

    new-instance v4, Landroid/renderscript/RSIllegalArgumentException;

    const-string v6, "Only power of 2 cube faces supported"

    invoke-direct {v4, v6}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3175
    .end local v3    # "isPow2":Z
    :cond_3
    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v5, p8

    goto :goto_1

    .line 3174
    :cond_4
    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v5, p8

    goto :goto_1

    .line 3173
    :cond_5
    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v5, p8

    goto :goto_1

    .line 3172
    :cond_6
    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v5, p8

    goto :goto_1

    .line 3171
    :cond_7
    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v5, p8

    goto :goto_1

    .line 3170
    :cond_8
    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v5, p8

    .line 3176
    :goto_1
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "Only square cube map faces supported"

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static greylist-max-o createFromAllocation(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/Allocation;
    .locals 18
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "alloc"    # Landroid/renderscript/Allocation;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 2931
    const-wide/32 v11, 0x8000

    :try_start_0
    const-string v0, "createFromAllcation"

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2932
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2933
    invoke-virtual {v10, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    const-wide/16 v13, 0x0

    cmp-long v0, v0, v13

    if-eqz v0, :cond_2

    .line 2937
    invoke-virtual/range {p1 .. p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .line 2938
    .local v0, "type":Landroid/renderscript/Type;
    invoke-virtual/range {p1 .. p1}, Landroid/renderscript/Allocation;->getUsage()I

    move-result v1

    move v15, v1

    .line 2939
    .local v15, "usage":I
    invoke-virtual/range {p1 .. p1}, Landroid/renderscript/Allocation;->getMipmap()Landroid/renderscript/Allocation$MipmapControl;

    move-result-object v1

    move-object v8, v1

    .line 2940
    .local v8, "mips":Landroid/renderscript/Allocation$MipmapControl;
    invoke-virtual {v0, v9}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget v4, v8, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    const-wide/16 v6, 0x0

    move-object/from16 v1, p0

    move v5, v15

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nAllocationCreateTyped(JIIJ)J

    move-result-wide v1

    move-wide/from16 v16, v1

    .line 2941
    .local v16, "id":J
    cmp-long v1, v16, v13

    if-eqz v1, :cond_1

    .line 2944
    new-instance v13, Landroid/renderscript/Allocation;

    const/4 v6, 0x0

    move-object v1, v13

    move-wide/from16 v2, v16

    move-object/from16 v4, p0

    move-object v5, v0

    move v7, v15

    move-object v14, v8

    .end local v8    # "mips":Landroid/renderscript/Allocation$MipmapControl;
    .local v14, "mips":Landroid/renderscript/Allocation$MipmapControl;
    invoke-direct/range {v1 .. v8}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V

    move-object v1, v13

    .line 2945
    .local v1, "outAlloc":Landroid/renderscript/Allocation;
    and-int/lit8 v2, v15, 0x20

    if-eqz v2, :cond_0

    .line 2946
    invoke-virtual {v1, v10}, Landroid/renderscript/Allocation;->shareBufferQueue(Landroid/renderscript/Allocation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2948
    :cond_0
    nop

    .line 2950
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 2948
    return-object v1

    .line 2942
    .end local v1    # "outAlloc":Landroid/renderscript/Allocation;
    .end local v14    # "mips":Landroid/renderscript/Allocation$MipmapControl;
    .restart local v8    # "mips":Landroid/renderscript/Allocation$MipmapControl;
    :cond_1
    move-object v14, v8

    .end local v8    # "mips":Landroid/renderscript/Allocation$MipmapControl;
    .restart local v14    # "mips":Landroid/renderscript/Allocation$MipmapControl;
    :try_start_1
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Allocation creation failed."

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "alloc":Landroid/renderscript/Allocation;
    throw v1

    .line 2934
    .end local v0    # "type":Landroid/renderscript/Type;
    .end local v14    # "mips":Landroid/renderscript/Allocation$MipmapControl;
    .end local v15    # "usage":I
    .end local v16    # "id":J
    .restart local p0    # "rs":Landroid/renderscript/RenderScript;
    .restart local p1    # "alloc":Landroid/renderscript/Allocation;
    :cond_2
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Bad input Allocation"

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "alloc":Landroid/renderscript/Allocation;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2950
    .restart local p0    # "rs":Landroid/renderscript/RenderScript;
    .restart local p1    # "alloc":Landroid/renderscript/Allocation;
    :catchall_0
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 2951
    throw v0
.end method

.method public static whitelist createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .line 3066
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 3067
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/16 v1, 0x83

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0

    .line 3070
    :cond_0
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 19
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "mips"    # Landroid/renderscript/Allocation$MipmapControl;
    .param p3, "usage"    # I

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    .line 2801
    const-wide/32 v13, 0x8000

    :try_start_0
    const-string v0, "createFromBitmap"

    invoke-static {v13, v14, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2802
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2805
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2806
    and-int/lit16 v0, v12, 0x80

    if-nez v0, :cond_0

    .line 2809
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2810
    .local v0, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2811
    .local v1, "c":Landroid/graphics/Canvas;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v10, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2812
    invoke-static {v9, v0, v11, v12}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2839
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 2812
    return-object v2

    .line 2807
    .end local v0    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "c":Landroid/graphics/Canvas;
    :cond_0
    :try_start_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "USAGE_SHARED cannot be used with a Bitmap that has a null config."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "b":Landroid/graphics/Bitmap;
    .end local p2    # "mips":Landroid/renderscript/Allocation$MipmapControl;
    .end local p3    # "usage":I
    throw v0

    .line 2815
    .restart local p0    # "rs":Landroid/renderscript/RenderScript;
    .restart local p1    # "b":Landroid/graphics/Bitmap;
    .restart local p2    # "mips":Landroid/renderscript/Allocation$MipmapControl;
    .restart local p3    # "usage":I
    :cond_1
    invoke-static/range {p0 .. p2}, Landroid/renderscript/Allocation;->typeFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Type;

    move-result-object v0

    .line 2818
    .local v0, "t":Landroid/renderscript/Type;
    sget-object v1, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, "Load failed."

    const-wide/16 v15, 0x0

    if-ne v11, v1, :cond_3

    .line 2819
    :try_start_2
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-static/range {p0 .. p0}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x83

    if-ne v12, v1, :cond_3

    .line 2821
    invoke-virtual {v0, v9}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget v4, v11, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nAllocationCreateBitmapBackedAllocation(JILandroid/graphics/Bitmap;I)J

    move-result-wide v1

    move-wide/from16 v17, v1

    .line 2822
    .local v17, "id":J
    cmp-long v1, v17, v15

    if-eqz v1, :cond_2

    .line 2827
    new-instance v15, Landroid/renderscript/Allocation;

    const/4 v6, 0x1

    move-object v1, v15

    move-wide/from16 v2, v17

    move-object/from16 v4, p0

    move-object v5, v0

    move/from16 v7, p3

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V

    move-object v1, v15

    .line 2828
    .local v1, "alloc":Landroid/renderscript/Allocation;
    invoke-direct {v1, v10}, Landroid/renderscript/Allocation;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2829
    nop

    .line 2839
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 2829
    return-object v1

    .line 2823
    .end local v1    # "alloc":Landroid/renderscript/Allocation;
    :cond_2
    :try_start_3
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    invoke-direct {v1, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "b":Landroid/graphics/Bitmap;
    .end local p2    # "mips":Landroid/renderscript/Allocation$MipmapControl;
    .end local p3    # "usage":I
    throw v1

    .line 2833
    .end local v17    # "id":J
    .restart local p0    # "rs":Landroid/renderscript/RenderScript;
    .restart local p1    # "b":Landroid/graphics/Bitmap;
    .restart local p2    # "mips":Landroid/renderscript/Allocation$MipmapControl;
    .restart local p3    # "usage":I
    :cond_3
    invoke-virtual {v0, v9}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget v4, v11, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nAllocationCreateFromBitmap(JILandroid/graphics/Bitmap;I)J

    move-result-wide v1

    move-wide/from16 v17, v1

    .line 2834
    .restart local v17    # "id":J
    cmp-long v1, v17, v15

    if-eqz v1, :cond_4

    .line 2837
    new-instance v15, Landroid/renderscript/Allocation;

    const/4 v6, 0x1

    move-object v1, v15

    move-wide/from16 v2, v17

    move-object/from16 v4, p0

    move-object v5, v0

    move/from16 v7, p3

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2839
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 2837
    return-object v15

    .line 2835
    :cond_4
    :try_start_4
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    invoke-direct {v1, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "b":Landroid/graphics/Bitmap;
    .end local p2    # "mips":Landroid/renderscript/Allocation$MipmapControl;
    .end local p3    # "usage":I
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2839
    .end local v0    # "t":Landroid/renderscript/Type;
    .end local v17    # "id":J
    .restart local p0    # "rs":Landroid/renderscript/RenderScript;
    .restart local p1    # "b":Landroid/graphics/Bitmap;
    .restart local p2    # "mips":Landroid/renderscript/Allocation$MipmapControl;
    .restart local p3    # "usage":I
    :catchall_0
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 2840
    throw v0
.end method

.method public static whitelist createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/Allocation;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I

    .line 3288
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 3289
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x3

    invoke-static {p0, p1, p2, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0

    .line 3293
    :cond_0
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x2

    invoke-static {p0, p1, p2, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "mips"    # Landroid/renderscript/Allocation$MipmapControl;
    .param p4, "usage"    # I

    .line 3259
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3260
    and-int/lit16 v0, p4, 0xe0

    if-nez v0, :cond_0

    .line 3263
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3264
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-static {p0, v0, p3, p4}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 3265
    .local v1, "alloc":Landroid/renderscript/Allocation;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3266
    return-object v1

    .line 3261
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "alloc":Landroid/renderscript/Allocation;
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Unsupported usage specified."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createFromString(Landroid/renderscript/RenderScript;Ljava/lang/String;I)Landroid/renderscript/Allocation;
    .locals 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "usage"    # I

    .line 3310
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3311
    const/4 v0, 0x0

    .line 3313
    .local v0, "allocArray":[B
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, v1

    .line 3314
    invoke-static {p0}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    array-length v2, v0

    invoke-static {p0, v1, v2, p2}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 3315
    .local v1, "alloc":Landroid/renderscript/Allocation;
    invoke-virtual {v1, v0}, Landroid/renderscript/Allocation;->copyFrom([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3316
    return-object v1

    .line 3318
    .end local v1    # "alloc":Landroid/renderscript/Allocation;
    :catch_0
    move-exception v1

    .line 3319
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Could not convert string to utf-8."

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "count"    # I

    .line 2754
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;
    .locals 18
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "count"    # I
    .param p3, "usage"    # I

    move-object/from16 v9, p0

    .line 2728
    const-wide/32 v10, 0x8000

    :try_start_0
    const-string v0, "createSized"

    invoke-static {v10, v11, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2729
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2730
    new-instance v0, Landroid/renderscript/Type$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v12, p1

    :try_start_1
    invoke-direct {v0, v9, v12}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2731
    .local v0, "b":Landroid/renderscript/Type$Builder;
    move/from16 v13, p2

    :try_start_2
    invoke-virtual {v0, v13}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 2732
    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v1

    move-object v14, v1

    .line 2734
    .local v14, "t":Landroid/renderscript/Type;
    invoke-virtual {v14, v9}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    sget-object v1, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    iget v4, v1, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    const-wide/16 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nAllocationCreateTyped(JIIJ)J

    move-result-wide v1

    move-wide v15, v1

    .line 2735
    .local v15, "id":J
    const-wide/16 v1, 0x0

    cmp-long v1, v15, v1

    if-eqz v1, :cond_0

    .line 2738
    new-instance v17, Landroid/renderscript/Allocation;

    const/4 v6, 0x1

    sget-object v8, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    move-object/from16 v1, v17

    move-wide v2, v15

    move-object/from16 v4, p0

    move-object v5, v14

    move/from16 v7, p3

    invoke-direct/range {v1 .. v8}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2740
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 2738
    return-object v17

    .line 2736
    :cond_0
    :try_start_3
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Allocation creation failed."

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "e":Landroid/renderscript/Element;
    .end local p2    # "count":I
    .end local p3    # "usage":I
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2740
    .end local v0    # "b":Landroid/renderscript/Type$Builder;
    .end local v14    # "t":Landroid/renderscript/Type;
    .end local v15    # "id":J
    .restart local p0    # "rs":Landroid/renderscript/RenderScript;
    .restart local p1    # "e":Landroid/renderscript/Element;
    .restart local p2    # "count":I
    .restart local p3    # "usage":I
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object/from16 v12, p1

    :goto_0
    move/from16 v13, p2

    :goto_1
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 2741
    throw v0
.end method

.method public static whitelist createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "type"    # Landroid/renderscript/Type;

    .line 2711
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "type"    # Landroid/renderscript/Type;
    .param p2, "usage"    # I

    .line 2698
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {p0, p1, v0, p2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 18
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "type"    # Landroid/renderscript/Type;
    .param p2, "mips"    # Landroid/renderscript/Allocation$MipmapControl;
    .param p3, "usage"    # I

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 2670
    const-wide/32 v11, 0x8000

    :try_start_0
    const-string v0, "createTyped"

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2671
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2672
    invoke-virtual {v10, v9}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    const-wide/16 v13, 0x0

    cmp-long v0, v0, v13

    if-eqz v0, :cond_1

    .line 2676
    invoke-virtual {v10, v9}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v15, p2

    :try_start_1
    iget v4, v15, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    const-wide/16 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nAllocationCreateTyped(JIIJ)J

    move-result-wide v0

    move-wide/from16 v16, v0

    .line 2677
    .local v16, "id":J
    cmp-long v0, v16, v13

    if-eqz v0, :cond_0

    .line 2680
    new-instance v0, Landroid/renderscript/Allocation;

    const/4 v6, 0x0

    move-object v1, v0

    move-wide/from16 v2, v16

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v7, p3

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2682
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 2680
    return-object v0

    .line 2678
    :cond_0
    :try_start_2
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Allocation creation failed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "type":Landroid/renderscript/Type;
    .end local p2    # "mips":Landroid/renderscript/Allocation$MipmapControl;
    .end local p3    # "usage":I
    throw v0

    .line 2673
    .end local v16    # "id":J
    .restart local p0    # "rs":Landroid/renderscript/RenderScript;
    .restart local p1    # "type":Landroid/renderscript/Type;
    .restart local p2    # "mips":Landroid/renderscript/Allocation$MipmapControl;
    .restart local p3    # "usage":I
    :cond_1
    move-object/from16 v15, p2

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Bad Type"

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "type":Landroid/renderscript/Type;
    .end local p2    # "mips":Landroid/renderscript/Allocation$MipmapControl;
    .end local p3    # "usage":I
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2682
    .restart local p0    # "rs":Landroid/renderscript/RenderScript;
    .restart local p1    # "type":Landroid/renderscript/Type;
    .restart local p2    # "mips":Landroid/renderscript/Allocation$MipmapControl;
    .restart local p3    # "usage":I
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v15, p2

    :goto_0
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 2683
    throw v0
.end method

.method private greylist-max-o data1DChecks(IIIIZ)V
    .locals 3
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "len"    # I
    .param p4, "dataSize"    # I
    .param p5, "usePadding"    # Z

    .line 1105
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1106
    if-ltz p1, :cond_5

    .line 1109
    const/4 v0, 0x1

    if-lt p2, v0, :cond_4

    .line 1112
    add-int v0, p1, p2

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    if-gt v0, v1, :cond_3

    .line 1116
    const-string v0, "Array too small for allocation type."

    if-eqz p5, :cond_1

    .line 1117
    div-int/lit8 v1, p4, 0x4

    mul-int/lit8 v1, v1, 0x3

    if-lt p3, v1, :cond_0

    goto :goto_0

    .line 1118
    :cond_0
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {v1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1121
    :cond_1
    if-lt p3, p4, :cond_2

    .line 1125
    :goto_0
    return-void

    .line 1122
    :cond_2
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {v1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1113
    :cond_3
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overflow, Available count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1110
    :cond_4
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Count must be >= 1."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1107
    :cond_5
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset must be >= 0."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;
    .locals 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .line 2758
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 2759
    .local v0, "bc":Landroid/graphics/Bitmap$Config;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    .line 2760
    invoke-static {p0}, Landroid/renderscript/Element;->A_8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    return-object v1

    .line 2762
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1

    .line 2763
    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_4444(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    return-object v1

    .line 2765
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_2

    .line 2766
    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    return-object v1

    .line 2768
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_3

    .line 2769
    invoke-static {p0}, Landroid/renderscript/Element;->RGB_565(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    return-object v1

    .line 2771
    :cond_3
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad bitmap type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o getIDSafe()J
    .locals 2

    .line 264
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_0

    .line 265
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    return-wide v0

    .line 267
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    return-wide v0
.end method

.method static greylist-max-o sendBufferNotification(J)V
    .locals 3
    .param p0, "id"    # J

    .line 3347
    sget-object v0, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3348
    :try_start_0
    sget-object v1, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p0, p1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/Allocation;

    .line 3350
    .local v1, "a":Landroid/renderscript/Allocation;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/renderscript/Allocation;->mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

    if-eqz v2, :cond_0

    .line 3351
    invoke-interface {v2, v1}, Landroid/renderscript/Allocation$OnBufferAvailableListener;->onBufferAvailable(Landroid/renderscript/Allocation;)V

    .line 3353
    .end local v1    # "a":Landroid/renderscript/Allocation;
    :cond_0
    monitor-exit v0

    .line 3354
    return-void

    .line 3353
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .line 383
    iput-object p1, p0, Landroid/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    .line 384
    return-void
.end method

.method static greylist-max-o typeFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Type;
    .locals 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "mip"    # Landroid/renderscript/Allocation$MipmapControl;

    .line 2776
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    move-result-object v0

    .line 2777
    .local v0, "e":Landroid/renderscript/Element;
    new-instance v1, Landroid/renderscript/Type$Builder;

    invoke-direct {v1, p0, v0}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 2778
    .local v1, "tb":Landroid/renderscript/Type$Builder;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 2779
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 2780
    sget-object v2, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    if-ne p2, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    .line 2781
    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o updateCacheInfo(Landroid/renderscript/Type;)V
    .locals 4
    .param p1, "t"    # Landroid/renderscript/Type;

    .line 370
    invoke-virtual {p1}, Landroid/renderscript/Type;->getX()I

    move-result v0

    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    .line 371
    invoke-virtual {p1}, Landroid/renderscript/Type;->getY()I

    move-result v0

    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    .line 372
    invoke-virtual {p1}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    .line 373
    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iput v1, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    .line 374
    iget v2, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 375
    mul-int/2addr v1, v2

    iput v1, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    .line 377
    :cond_0
    if-le v0, v3, :cond_1

    .line 378
    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    mul-int/2addr v1, v0

    iput v1, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    .line 380
    :cond_1
    return-void
.end method

.method private greylist-max-o validate2DRange(IIII)V
    .locals 2
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .line 1457
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1461
    :cond_0
    if-ltz p1, :cond_3

    if-ltz p2, :cond_3

    .line 1464
    if-ltz p4, :cond_2

    if-ltz p3, :cond_2

    .line 1467
    add-int v0, p1, p3

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    if-gt v0, v1, :cond_1

    add-int v0, p2, p4

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    if-gt v0, v1, :cond_1

    .line 1471
    :goto_0
    return-void

    .line 1468
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Updated region larger than allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1465
    :cond_2
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Height or width cannot be negative."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1462
    :cond_3
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset cannot be negative."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o validate3DRange(IIIIII)V
    .locals 2
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I

    .line 1727
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1731
    :cond_0
    if-ltz p1, :cond_3

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    .line 1734
    if-ltz p5, :cond_2

    if-ltz p4, :cond_2

    if-ltz p6, :cond_2

    .line 1737
    add-int v0, p1, p4

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    if-gt v0, v1, :cond_1

    add-int v0, p2, p5

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    if-gt v0, v1, :cond_1

    add-int v0, p3, p6

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    if-gt v0, v1, :cond_1

    .line 1741
    :goto_0
    return-void

    .line 1738
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Updated region larger than allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1735
    :cond_2
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Height or width cannot be negative."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1732
    :cond_3
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset cannot be negative."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o validateBitmapFormat(Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .line 637
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 638
    .local v0, "bc":Landroid/graphics/Bitmap$Config;
    if-eqz v0, :cond_4

    .line 641
    sget-object v1, Landroid/renderscript/Allocation$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    const-string v3, " bytes, passed bitmap was "

    const-string v4, " of "

    const-string v5, ", type "

    const-string v6, "Allocation kind is "

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 672
    :pswitch_0
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    sget-object v7, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-ne v1, v7, :cond_0

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 673
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    if-ne v1, v2, :cond_0

    goto/16 :goto_0

    .line 674
    :cond_0
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 675
    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    iget-object v6, v6, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 676
    invoke-virtual {v5}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v5

    iget-object v5, v5, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 677
    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 662
    :pswitch_1
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    sget-object v7, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    if-ne v1, v7, :cond_1

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 663
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    if-ne v1, v2, :cond_1

    goto/16 :goto_0

    .line 664
    :cond_1
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 665
    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    iget-object v6, v6, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 666
    invoke-virtual {v5}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v5

    iget-object v5, v5, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 667
    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 652
    :pswitch_2
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 653
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    goto/16 :goto_0

    .line 654
    :cond_2
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 655
    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    iget-object v6, v6, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 656
    invoke-virtual {v5}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v5

    iget-object v5, v5, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 657
    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 643
    :pswitch_3
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    if-ne v1, v2, :cond_3

    goto :goto_0

    .line 644
    :cond_3
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 645
    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    iget-object v6, v6, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 646
    invoke-virtual {v5}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v5

    iget-object v5, v5, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 647
    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 683
    :goto_0
    return-void

    .line 639
    :cond_4
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Bitmap has an unsupported format for this operation"

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o validateBitmapSize(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .line 686
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 689
    return-void

    .line 687
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Cannot update allocation from bitmap, sizes mismatch"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o validateIsFloat32()V
    .locals 3

    .line 477
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_0

    .line 478
    return-void

    .line 480
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "32 bit float source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o validateIsFloat64()V
    .locals 3

    .line 485
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_0

    .line 486
    return-void

    .line 488
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "64 bit float source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o validateIsInt16OrFloat16()V
    .locals 3

    .line 458
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 463
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "16 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o validateIsInt32()V
    .locals 3

    .line 449
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 453
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "32 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o validateIsInt64()V
    .locals 3

    .line 440
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 444
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "64 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o validateIsInt8()V
    .locals 3

    .line 468
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 472
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "8 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o validateIsObject()V
    .locals 3

    .line 493
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_MESH:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 505
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;
    .locals 5
    .param p1, "d"    # Ljava/lang/Object;
    .param p2, "checkType"    # Z

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 97
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 100
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 101
    .local v1, "cmp":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 105
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    .line 106
    if-eqz p2, :cond_0

    .line 107
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt64()V

    .line 108
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    return-object v2

    .line 110
    :cond_0
    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    return-object v2

    .line 113
    :cond_1
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_3

    .line 114
    if-eqz p2, :cond_2

    .line 115
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    .line 116
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    return-object v2

    .line 118
    :cond_2
    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    return-object v2

    .line 121
    :cond_3
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_5

    .line 122
    if-eqz p2, :cond_4

    .line 123
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    .line 124
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    return-object v2

    .line 126
    :cond_4
    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    return-object v2

    .line 129
    :cond_5
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_7

    .line 130
    if-eqz p2, :cond_6

    .line 131
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    .line 132
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    return-object v2

    .line 134
    :cond_6
    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    return-object v2

    .line 137
    :cond_7
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_9

    .line 138
    if-eqz p2, :cond_8

    .line 139
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    .line 141
    :cond_8
    sget-object v2, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    return-object v2

    .line 144
    :cond_9
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_b

    .line 145
    if-eqz p2, :cond_a

    .line 146
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat64()V

    .line 148
    :cond_a
    sget-object v2, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    return-object v2

    .line 151
    :cond_b
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parameter of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[] is not compatible with data type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v4, v4, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v4, v4, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 152
    invoke-virtual {v4}, Landroid/renderscript/Element$DataType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of allocation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_c
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Object passed is not an Array of primitives."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    .end local v1    # "cmp":Ljava/lang/Class;
    :cond_d
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Object passed is not an array of primitives."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist copy1DRangeFrom(IILandroid/renderscript/Allocation;I)V
    .locals 20
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "data"    # Landroid/renderscript/Allocation;
    .param p4, "dataOff"    # I

    .line 1448
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-wide/32 v2, 0x8000

    const-string v4, "copy1DRangeFrom"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1449
    iget-object v5, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v6

    iget v10, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v4, v0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v11, v4, Landroid/renderscript/Type$CubemapFace;->mID:I

    iget-object v4, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    .line 1451
    invoke-virtual {v1, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v14

    iget v4, v1, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v8, v1, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v13, v8, Landroid/renderscript/Type$CubemapFace;->mID:I

    .line 1449
    const/4 v9, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v8, p1

    move/from16 v12, p2

    move/from16 v19, v13

    move/from16 v13, v16

    move/from16 v16, p4

    move/from16 v18, v4

    invoke-virtual/range {v5 .. v19}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIIIIJIIII)V

    .line 1453
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1454
    return-void
.end method

.method public whitelist copy1DRangeFrom(IILjava/lang/Object;)V
    .locals 7
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;

    .line 1317
    nop

    .line 1318
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v5

    .line 1319
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    .line 1317
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1320
    return-void
.end method

.method public whitelist copy1DRangeFrom(II[B)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [B

    .line 1405
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    .line 1406
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1407
    return-void
.end method

.method public whitelist copy1DRangeFrom(II[F)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [F

    .line 1434
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    .line 1435
    sget-object v4, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1436
    return-void
.end method

.method public whitelist copy1DRangeFrom(II[I)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [I

    .line 1347
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    .line 1348
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1349
    return-void
.end method

.method public whitelist copy1DRangeFrom(II[S)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [S

    .line 1376
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    .line 1377
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1378
    return-void
.end method

.method public whitelist copy1DRangeFromUnchecked(IILjava/lang/Object;)V
    .locals 7
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;

    .line 1183
    nop

    .line 1184
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v5

    .line 1185
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    .line 1183
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1186
    return-void
.end method

.method public whitelist copy1DRangeFromUnchecked(II[B)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [B

    .line 1263
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1264
    return-void
.end method

.method public whitelist copy1DRangeFromUnchecked(II[F)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [F

    .line 1289
    sget-object v4, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1290
    return-void
.end method

.method public whitelist copy1DRangeFromUnchecked(II[I)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [I

    .line 1211
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1212
    return-void
.end method

.method public whitelist copy1DRangeFromUnchecked(II[S)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [S

    .line 1237
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1238
    return-void
.end method

.method public whitelist copy1DRangeTo(IILjava/lang/Object;)V
    .locals 7
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;

    .line 2270
    nop

    .line 2271
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v5

    .line 2272
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    .line 2270
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2273
    return-void
.end method

.method public whitelist copy1DRangeTo(II[B)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [B

    .line 2358
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    .line 2359
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2360
    return-void
.end method

.method public whitelist copy1DRangeTo(II[F)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [F

    .line 2387
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    .line 2388
    sget-object v4, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2389
    return-void
.end method

.method public whitelist copy1DRangeTo(II[I)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [I

    .line 2300
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    .line 2301
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2302
    return-void
.end method

.method public whitelist copy1DRangeTo(II[S)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [S

    .line 2329
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    .line 2330
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2331
    return-void
.end method

.method public whitelist copy1DRangeToUnchecked(IILjava/lang/Object;)V
    .locals 7
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;

    .line 2136
    nop

    .line 2137
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v5

    .line 2138
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    .line 2136
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2139
    return-void
.end method

.method public whitelist copy1DRangeToUnchecked(II[B)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [B

    .line 2216
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2217
    return-void
.end method

.method public whitelist copy1DRangeToUnchecked(II[F)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [F

    .line 2242
    sget-object v4, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2243
    return-void
.end method

.method public whitelist copy1DRangeToUnchecked(II[I)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [I

    .line 2164
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2165
    return-void
.end method

.method public whitelist copy1DRangeToUnchecked(II[S)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [S

    .line 2190
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2191
    return-void
.end method

.method public whitelist copy2DRangeFrom(IIIILandroid/renderscript/Allocation;II)V
    .locals 20
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # Landroid/renderscript/Allocation;
    .param p6, "dataXoff"    # I
    .param p7, "dataYoff"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    .line 1686
    const-wide/32 v3, 0x8000

    :try_start_0
    const-string v0, "copy2DRangeFrom"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1687
    iget-object v0, v1, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1688
    invoke-direct/range {p0 .. p4}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    .line 1689
    iget-object v5, v1, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v6

    iget v10, v1, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v0, v1, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v11, v0, Landroid/renderscript/Type$CubemapFace;->mID:I

    iget-object v0, v1, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    .line 1691
    invoke-virtual {v2, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v14

    iget v0, v2, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v8, v2, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v13, v8, Landroid/renderscript/Type$CubemapFace;->mID:I

    .line 1689
    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v12, p3

    move/from16 v19, v13

    move/from16 v13, p4

    move/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, v0

    invoke-virtual/range {v5 .. v19}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIIIIJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1694
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1695
    nop

    .line 1696
    return-void

    .line 1694
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1695
    throw v0
.end method

.method public whitelist copy2DRangeFrom(IIIILjava/lang/Object;)V
    .locals 13
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "array"    # Ljava/lang/Object;

    .line 1530
    const-wide/32 v1, 0x8000

    :try_start_0
    const-string v0, "copy2DRangeFrom"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1531
    const/4 v0, 0x1

    .line 1532
    move-object v11, p0

    move-object/from16 v12, p5

    :try_start_1
    invoke-direct {p0, v12, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v9

    .line 1533
    invoke-static/range {p5 .. p5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    .line 1531
    move-object v3, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v10}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1535
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1536
    nop

    .line 1537
    return-void

    .line 1535
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v11, p0

    move-object/from16 v12, p5

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1536
    throw v0
.end method

.method public whitelist copy2DRangeFrom(IIII[B)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [B

    .line 1567
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    .line 1568
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1570
    return-void
.end method

.method public whitelist copy2DRangeFrom(IIII[F)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [F

    .line 1666
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    .line 1667
    sget-object v6, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1669
    return-void
.end method

.method public whitelist copy2DRangeFrom(IIII[I)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [I

    .line 1633
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    .line 1634
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1636
    return-void
.end method

.method public whitelist copy2DRangeFrom(IIII[S)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [S

    .line 1600
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    .line 1601
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1603
    return-void
.end method

.method public whitelist copy2DRangeFrom(IILandroid/graphics/Bitmap;)V
    .locals 12
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "data"    # Landroid/graphics/Bitmap;

    .line 1709
    const-wide/32 v0, 0x8000

    :try_start_0
    const-string v2, "copy2DRangeFrom"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1710
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 1711
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1712
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1713
    .local v2, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1714
    .local v3, "c":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p3, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1715
    invoke-virtual {p0, p1, p2, v2}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1722
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1716
    return-void

    .line 1718
    .end local v2    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "c":Landroid/graphics/Canvas;
    :cond_0
    :try_start_1
    invoke-direct {p0, p3}, Landroid/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    .line 1719
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p0, p1, p2, v2, v3}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    .line 1720
    iget-object v4, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v5

    iget v9, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v2, p0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v10, v2, Landroid/renderscript/Type$CubemapFace;->mID:I

    move v7, p1

    move v8, p2

    move-object v11, p3

    invoke-virtual/range {v4 .. v11}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIILandroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1722
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1723
    nop

    .line 1724
    return-void

    .line 1722
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1723
    throw v2
.end method

.method greylist-max-o copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 20
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "array"    # Ljava/lang/Object;
    .param p6, "dt"    # Landroid/renderscript/Element$DataType;
    .param p7, "arrayLen"    # I

    move-object/from16 v1, p0

    .line 1476
    const-wide/32 v2, 0x8000

    :try_start_0
    const-string v0, "copy2DRangeFromUnchecked"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1477
    iget-object v0, v1, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1478
    invoke-direct/range {p0 .. p4}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    .line 1479
    iget-object v0, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    mul-int v0, v0, p3

    mul-int v0, v0, p4

    .line 1481
    .local v0, "dataSize":I
    const/4 v4, 0x0

    .line 1482
    .local v4, "usePadding":Z
    move-object/from16 v15, p6

    iget v5, v15, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v5, v5, p7

    .line 1483
    .local v5, "sizeBytes":I
    iget-boolean v6, v1, Landroid/renderscript/Allocation;->mAutoPadding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "Array too small for allocation type."

    if-eqz v6, :cond_1

    :try_start_1
    iget-object v6, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_1

    .line 1484
    div-int/lit8 v6, v0, 0x4

    mul-int/2addr v6, v8

    if-gt v6, v5, :cond_0

    .line 1487
    const/4 v4, 0x1

    .line 1488
    move v5, v0

    move/from16 v18, v4

    move/from16 v19, v5

    goto :goto_0

    .line 1485
    :cond_0
    new-instance v6, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {v6, v7}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/renderscript/Allocation;
    .end local p1    # "xoff":I
    .end local p2    # "yoff":I
    .end local p3    # "w":I
    .end local p4    # "h":I
    .end local p5    # "array":Ljava/lang/Object;
    .end local p6    # "dt":Landroid/renderscript/Element$DataType;
    .end local p7    # "arrayLen":I
    throw v6

    .line 1490
    .restart local p0    # "this":Landroid/renderscript/Allocation;
    .restart local p1    # "xoff":I
    .restart local p2    # "yoff":I
    .restart local p3    # "w":I
    .restart local p4    # "h":I
    .restart local p5    # "array":Ljava/lang/Object;
    .restart local p6    # "dt":Landroid/renderscript/Element$DataType;
    .restart local p7    # "arrayLen":I
    :cond_1
    if-gt v0, v5, :cond_2

    move/from16 v18, v4

    move/from16 v19, v5

    .line 1494
    .end local v4    # "usePadding":Z
    .end local v5    # "sizeBytes":I
    .local v18, "usePadding":Z
    .local v19, "sizeBytes":I
    :goto_0
    iget-object v4, v1, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v5

    iget v9, v1, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v7, v1, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v10, v7, Landroid/renderscript/Type$CubemapFace;->mID:I

    iget-object v7, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v7, v7, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v7, v7, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v14, v7, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v16, v14

    move/from16 v14, v19

    move-object/from16 v15, p6

    move/from16 v17, v18

    invoke-virtual/range {v4 .. v17}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1498
    .end local v0    # "dataSize":I
    .end local v18    # "usePadding":Z
    .end local v19    # "sizeBytes":I
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1499
    nop

    .line 1500
    return-void

    .line 1491
    .restart local v0    # "dataSize":I
    .restart local v4    # "usePadding":Z
    .restart local v5    # "sizeBytes":I
    :cond_2
    :try_start_2
    new-instance v6, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {v6, v7}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/renderscript/Allocation;
    .end local p1    # "xoff":I
    .end local p2    # "yoff":I
    .end local p3    # "w":I
    .end local p4    # "h":I
    .end local p5    # "array":Ljava/lang/Object;
    .end local p6    # "dt":Landroid/renderscript/Element$DataType;
    .end local p7    # "arrayLen":I
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1498
    .end local v0    # "dataSize":I
    .end local v4    # "usePadding":Z
    .end local v5    # "sizeBytes":I
    .restart local p0    # "this":Landroid/renderscript/Allocation;
    .restart local p1    # "xoff":I
    .restart local p2    # "yoff":I
    .restart local p3    # "w":I
    .restart local p4    # "h":I
    .restart local p5    # "array":Ljava/lang/Object;
    .restart local p6    # "dt":Landroid/renderscript/Element$DataType;
    .restart local p7    # "arrayLen":I
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1499
    throw v0
.end method

.method public whitelist copy2DRangeTo(IIIILjava/lang/Object;)V
    .locals 9
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "array"    # Ljava/lang/Object;

    .line 2447
    nop

    .line 2448
    const/4 v0, 0x1

    invoke-direct {p0, p5, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v7

    .line 2449
    invoke-static {p5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v8

    .line 2447
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2450
    return-void
.end method

.method public whitelist copy2DRangeTo(IIII[B)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [B

    .line 2479
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    .line 2480
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2482
    return-void
.end method

.method public whitelist copy2DRangeTo(IIII[F)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [F

    .line 2575
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    .line 2576
    sget-object v6, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2578
    return-void
.end method

.method public whitelist copy2DRangeTo(IIII[I)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [I

    .line 2543
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    .line 2544
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2546
    return-void
.end method

.method public whitelist copy2DRangeTo(IIII[S)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [S

    .line 2511
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    .line 2512
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2514
    return-void
.end method

.method greylist-max-o copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 20
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "array"    # Ljava/lang/Object;
    .param p6, "dt"    # Landroid/renderscript/Element$DataType;
    .param p7, "arrayLen"    # I

    move-object/from16 v1, p0

    .line 2395
    const-wide/32 v2, 0x8000

    :try_start_0
    const-string v0, "copy2DRangeToUnchecked"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2396
    iget-object v0, v1, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2397
    invoke-direct/range {p0 .. p4}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    .line 2398
    iget-object v0, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    mul-int v0, v0, p3

    mul-int v0, v0, p4

    .line 2400
    .local v0, "dataSize":I
    const/4 v4, 0x0

    .line 2401
    .local v4, "usePadding":Z
    move-object/from16 v15, p6

    iget v5, v15, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v5, v5, p7

    .line 2402
    .local v5, "sizeBytes":I
    iget-boolean v6, v1, Landroid/renderscript/Allocation;->mAutoPadding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "Array too small for allocation type."

    if-eqz v6, :cond_1

    :try_start_1
    iget-object v6, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_1

    .line 2403
    div-int/lit8 v6, v0, 0x4

    mul-int/2addr v6, v8

    if-gt v6, v5, :cond_0

    .line 2406
    const/4 v4, 0x1

    .line 2407
    move v5, v0

    move/from16 v18, v4

    move/from16 v19, v5

    goto :goto_0

    .line 2404
    :cond_0
    new-instance v6, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {v6, v7}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/renderscript/Allocation;
    .end local p1    # "xoff":I
    .end local p2    # "yoff":I
    .end local p3    # "w":I
    .end local p4    # "h":I
    .end local p5    # "array":Ljava/lang/Object;
    .end local p6    # "dt":Landroid/renderscript/Element$DataType;
    .end local p7    # "arrayLen":I
    throw v6

    .line 2409
    .restart local p0    # "this":Landroid/renderscript/Allocation;
    .restart local p1    # "xoff":I
    .restart local p2    # "yoff":I
    .restart local p3    # "w":I
    .restart local p4    # "h":I
    .restart local p5    # "array":Ljava/lang/Object;
    .restart local p6    # "dt":Landroid/renderscript/Element$DataType;
    .restart local p7    # "arrayLen":I
    :cond_1
    if-gt v0, v5, :cond_2

    move/from16 v18, v4

    move/from16 v19, v5

    .line 2413
    .end local v4    # "usePadding":Z
    .end local v5    # "sizeBytes":I
    .local v18, "usePadding":Z
    .local v19, "sizeBytes":I
    :goto_0
    iget-object v4, v1, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v5

    iget v9, v1, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v7, v1, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v10, v7, Landroid/renderscript/Type$CubemapFace;->mID:I

    iget-object v7, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v7, v7, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v7, v7, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v14, v7, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v16, v14

    move/from16 v14, v19

    move-object/from16 v15, p6

    move/from16 v17, v18

    invoke-virtual/range {v4 .. v17}, Landroid/renderscript/RenderScript;->nAllocationRead2D(JIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2416
    .end local v0    # "dataSize":I
    .end local v18    # "usePadding":Z
    .end local v19    # "sizeBytes":I
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2417
    nop

    .line 2418
    return-void

    .line 2410
    .restart local v0    # "dataSize":I
    .restart local v4    # "usePadding":Z
    .restart local v5    # "sizeBytes":I
    :cond_2
    :try_start_2
    new-instance v6, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {v6, v7}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/renderscript/Allocation;
    .end local p1    # "xoff":I
    .end local p2    # "yoff":I
    .end local p3    # "w":I
    .end local p4    # "h":I
    .end local p5    # "array":Ljava/lang/Object;
    .end local p6    # "dt":Landroid/renderscript/Element$DataType;
    .end local p7    # "arrayLen":I
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2416
    .end local v0    # "dataSize":I
    .end local v4    # "usePadding":Z
    .end local v5    # "sizeBytes":I
    .restart local p0    # "this":Landroid/renderscript/Allocation;
    .restart local p1    # "xoff":I
    .restart local p2    # "yoff":I
    .restart local p3    # "w":I
    .restart local p4    # "h":I
    .restart local p5    # "array":Ljava/lang/Object;
    .restart local p6    # "dt":Landroid/renderscript/Element$DataType;
    .restart local p7    # "arrayLen":I
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2417
    throw v0
.end method

.method public whitelist copy3DRangeFrom(IIIIIILandroid/renderscript/Allocation;III)V
    .locals 19
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "data"    # Landroid/renderscript/Allocation;
    .param p8, "dataXoff"    # I
    .param p9, "dataYoff"    # I
    .param p10, "dataZoff"    # I

    .line 1835
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    iget-object v2, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 1836
    invoke-direct/range {p0 .. p6}, Landroid/renderscript/Allocation;->validate3DRange(IIIIII)V

    .line 1837
    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v4

    iget v9, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v2, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    .line 1838
    invoke-virtual {v1, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v13

    iget v2, v1, Landroid/renderscript/Allocation;->mSelectedLOD:I

    .line 1837
    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v15, p8

    move/from16 v16, p9

    move/from16 v17, p10

    move/from16 v18, v2

    invoke-virtual/range {v3 .. v18}, Landroid/renderscript/RenderScript;->nAllocationData3D(JIIIIIIIJIIII)V

    .line 1840
    return-void
.end method

.method public whitelist copy3DRangeFrom(IIIIIILjava/lang/Object;)V
    .locals 15
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "array"    # Ljava/lang/Object;

    .line 1809
    const-wide/32 v1, 0x8000

    :try_start_0
    const-string v0, "copy3DRangeFrom"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1810
    const/4 v0, 0x1

    .line 1811
    move-object v13, p0

    move-object/from16 v14, p7

    :try_start_1
    invoke-direct {p0, v14, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v11

    .line 1812
    invoke-static/range {p7 .. p7}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v12

    .line 1810
    move-object v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v3 .. v12}, Landroid/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1814
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1815
    nop

    .line 1816
    return-void

    .line 1814
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v13, p0

    move-object/from16 v14, p7

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1815
    throw v0
.end method

.method public whitelist copy3DRangeTo(IIIIIILjava/lang/Object;)V
    .locals 13
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "array"    # Ljava/lang/Object;

    .line 2646
    nop

    .line 2647
    const/4 v0, 0x1

    move-object v11, p0

    move-object/from16 v12, p7

    invoke-direct {p0, v12, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v9

    .line 2648
    invoke-static/range {p7 .. p7}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    .line 2646
    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v10}, Landroid/renderscript/Allocation;->copy3DRangeToUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2649
    return-void
.end method

.method public whitelist copyFrom(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .line 995
    const-wide/32 v0, 0x8000

    :try_start_0
    const-string v2, "copyFrom"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 996
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 997
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-nez v2, :cond_0

    .line 998
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 999
    .local v2, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1000
    .local v3, "c":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1001
    invoke-virtual {p0, v2}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1002
    return-void

    .line 1004
    .end local v2    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "c":Landroid/graphics/Canvas;
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapSize(Landroid/graphics/Bitmap;)V

    .line 1005
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    .line 1006
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p1}, Landroid/renderscript/RenderScript;->nAllocationCopyFromBitmap(JLandroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1008
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1009
    nop

    .line 1010
    return-void

    .line 1008
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1009
    throw v2
.end method

.method public whitelist copyFrom(Landroid/renderscript/Allocation;)V
    .locals 11
    .param p1, "a"    # Landroid/renderscript/Allocation;

    .line 1020
    const-wide/32 v0, 0x8000

    :try_start_0
    const-string v2, "copyFrom"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1021
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 1022
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/renderscript/Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1025
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v7, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-object v8, p1

    invoke-virtual/range {v3 .. v10}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIIILandroid/renderscript/Allocation;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1027
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1028
    nop

    .line 1029
    return-void

    .line 1023
    :cond_0
    :try_start_1
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Types of allocations must match."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/renderscript/Allocation;
    .end local p1    # "a":Landroid/renderscript/Allocation;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1027
    .restart local p0    # "this":Landroid/renderscript/Allocation;
    .restart local p1    # "a":Landroid/renderscript/Allocation;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1028
    throw v2
.end method

.method public whitelist copyFrom(Ljava/lang/Object;)V
    .locals 4
    .param p1, "array"    # Ljava/lang/Object;

    .line 864
    const-wide/32 v0, 0x8000

    :try_start_0
    const-string v2, "copyFrom"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 865
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v2

    .line 866
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 865
    invoke-direct {p0, p1, v2, v3}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 869
    nop

    .line 870
    return-void

    .line 868
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 869
    throw v2
.end method

.method public whitelist copyFrom([B)V
    .locals 2
    .param p1, "d"    # [B

    .line 949
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    .line 950
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 951
    return-void
.end method

.method public whitelist copyFrom([F)V
    .locals 2
    .param p1, "d"    # [F

    .line 976
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    .line 977
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 978
    return-void
.end method

.method public whitelist copyFrom([I)V
    .locals 2
    .param p1, "d"    # [I

    .line 895
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    .line 896
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 897
    return-void
.end method

.method public whitelist copyFrom([Landroid/renderscript/BaseObj;)V
    .locals 8
    .param p1, "d"    # [Landroid/renderscript/BaseObj;

    .line 610
    const-wide/32 v0, 0x8000

    :try_start_0
    const-string v2, "copyFrom"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 611
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 612
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsObject()V

    .line 613
    array-length v2, p1

    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    if-ne v2, v3, :cond_3

    .line 618
    sget v2, Landroid/renderscript/RenderScript;->sPointerSize:I

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    .line 619
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x4

    new-array v2, v2, [J

    .line 620
    .local v2, "i":[J
    const/4 v3, 0x0

    .local v3, "ct":I
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_0

    .line 621
    mul-int/lit8 v5, v3, 0x4

    aget-object v6, p1, v3

    iget-object v7, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v7}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    aput-wide v6, v2, v5

    .line 620
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 623
    .end local v3    # "ct":I
    :cond_0
    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v4, v3, v2}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;)V

    .line 624
    .end local v2    # "i":[J
    goto :goto_2

    .line 625
    :cond_1
    array-length v2, p1

    new-array v2, v2, [I

    .line 626
    .local v2, "i":[I
    const/4 v3, 0x0

    .restart local v3    # "ct":I
    :goto_1
    array-length v5, p1

    if-ge v3, v5, :cond_2

    .line 627
    aget-object v5, p1, v3

    iget-object v6, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v5, v6}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    long-to-int v5, v5

    aput v5, v2, v3

    .line 626
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 629
    .end local v3    # "ct":I
    :cond_2
    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v4, v3, v2}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    .end local v2    # "i":[I
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 633
    nop

    .line 634
    return-void

    .line 614
    :cond_3
    :try_start_1
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array size mismatch, allocation sizeX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", array length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/renderscript/Allocation;
    .end local p1    # "d":[Landroid/renderscript/BaseObj;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 632
    .restart local p0    # "this":Landroid/renderscript/Allocation;
    .restart local p1    # "d":[Landroid/renderscript/BaseObj;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 633
    throw v2
.end method

.method public whitelist copyFrom([S)V
    .locals 2
    .param p1, "d"    # [S

    .line 922
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    .line 923
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 924
    return-void
.end method

.method public whitelist copyFromUnchecked(Ljava/lang/Object;)V
    .locals 4
    .param p1, "array"    # Ljava/lang/Object;

    .line 731
    const-wide/32 v0, 0x8000

    :try_start_0
    const-string v2, "copyFromUnchecked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 732
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v2

    .line 733
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 732
    invoke-direct {p0, p1, v2, v3}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 736
    nop

    .line 737
    return-void

    .line 735
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 736
    throw v2
.end method

.method public whitelist copyFromUnchecked([B)V
    .locals 2
    .param p1, "d"    # [B

    .line 811
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 812
    return-void
.end method

.method public whitelist copyFromUnchecked([F)V
    .locals 2
    .param p1, "d"    # [F

    .line 836
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 837
    return-void
.end method

.method public whitelist copyFromUnchecked([I)V
    .locals 2
    .param p1, "d"    # [I

    .line 761
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 762
    return-void
.end method

.method public whitelist copyFromUnchecked([S)V
    .locals 2
    .param p1, "d"    # [S

    .line 786
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 787
    return-void
.end method

.method public whitelist copyTo(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .line 1851
    const-wide/32 v0, 0x8000

    :try_start_0
    const-string v2, "copyTo"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1852
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 1853
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    .line 1854
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapSize(Landroid/graphics/Bitmap;)V

    .line 1855
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p1}, Landroid/renderscript/RenderScript;->nAllocationCopyToBitmap(JLandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1857
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1858
    nop

    .line 1859
    return-void

    .line 1857
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1858
    throw v2
.end method

.method public whitelist copyTo(Ljava/lang/Object;)V
    .locals 2
    .param p1, "array"    # Ljava/lang/Object;

    .line 1908
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v0

    .line 1909
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 1908
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1910
    return-void
.end method

.method public whitelist copyTo([B)V
    .locals 2
    .param p1, "d"    # [B

    .line 1935
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    .line 1936
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1937
    return-void
.end method

.method public whitelist copyTo([F)V
    .locals 2
    .param p1, "d"    # [F

    .line 2016
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    .line 2017
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2018
    return-void
.end method

.method public whitelist copyTo([I)V
    .locals 2
    .param p1, "d"    # [I

    .line 1989
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    .line 1990
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1991
    return-void
.end method

.method public whitelist copyTo([S)V
    .locals 2
    .param p1, "d"    # [S

    .line 1962
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    .line 1963
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1964
    return-void
.end method

.method public greylist-max-o copyToFieldPacker(IIIILandroid/renderscript/FieldPacker;)V
    .locals 15
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "component_number"    # I
    .param p5, "fp"    # Landroid/renderscript/FieldPacker;

    .line 2033
    move-object v0, p0

    move/from16 v11, p4

    iget-object v1, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 2034
    iget-object v1, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v1, v1

    if-ge v11, v1, :cond_4

    .line 2037
    if-ltz p1, :cond_3

    .line 2040
    if-ltz p2, :cond_2

    .line 2043
    if-ltz p3, :cond_1

    .line 2047
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v12

    .line 2048
    .local v12, "data":[B
    array-length v13, v12

    .line 2049
    .local v13, "data_length":I
    iget-object v1, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v1, v1, v11

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    .line 2050
    .local v1, "eSize":I
    iget-object v2, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mArraySizes:[I

    aget v2, v2, v11

    mul-int v14, v1, v2

    .line 2052
    .end local v1    # "eSize":I
    .local v14, "eSize":I
    if-ne v13, v14, :cond_0

    .line 2057
    iget-object v1, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v2

    iget v7, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v8, p4

    move-object v9, v12

    move v10, v13

    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->nAllocationElementRead(JIIIII[BI)V

    .line 2059
    return-void

    .line 2053
    :cond_0
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field packer sizelength "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match component size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2044
    .end local v12    # "data":[B
    .end local v13    # "data_length":I
    .end local v14    # "eSize":I
    :cond_1
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Offset z must be >= 0."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2041
    :cond_2
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Offset y must be >= 0."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2038
    :cond_3
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Offset x must be >= 0."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2035
    :cond_4
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Component_number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist destroy()V
    .locals 2

    .line 3362
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    .line 3363
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/renderscript/Allocation;->setSurface(Landroid/view/Surface;)V

    .line 3366
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/renderscript/Allocation;->mOwningType:Z

    if-eqz v1, :cond_1

    .line 3367
    invoke-virtual {v0}, Landroid/renderscript/Type;->destroy()V

    .line 3370
    :cond_1
    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    .line 3371
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 435
    sget-object v0, Landroid/renderscript/RenderScript;->registerNativeFree:Ljava/lang/reflect/Method;

    sget-object v1, Landroid/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Landroid/renderscript/Allocation;->mSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    invoke-super {p0}, Landroid/renderscript/BaseObj;->finalize()V

    .line 437
    return-void
.end method

.method public whitelist generateMipmaps()V
    .locals 3

    .line 1138
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScript;->nAllocationGenerateMipmaps(J)V

    .line 1139
    return-void
.end method

.method public whitelist getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 9

    .line 2857
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2860
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getYuv()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 2861
    invoke-virtual {v0}, Landroid/renderscript/Type;->getYuv()I

    move-result v0

    const v1, 0x32315659

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 2862
    invoke-virtual {v0}, Landroid/renderscript/Type;->getYuv()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_3

    .line 2865
    iget-object v0, p0, Landroid/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    .line 2866
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    mul-int/2addr v0, v1

    .line 2867
    .local v0, "xBytesSize":I
    const/4 v1, 0x1

    new-array v1, v1, [J

    .line 2868
    .local v1, "stride":[J
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    iget-object v5, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v5}, Landroid/renderscript/Type;->getY()I

    move-result v7

    iget-object v5, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v5}, Landroid/renderscript/Type;->getZ()I

    move-result v8

    move-object v5, v1

    move v6, v0

    invoke-virtual/range {v2 .. v8}, Landroid/renderscript/RenderScript;->nAllocationGetByteBuffer(J[JIII)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Landroid/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 2869
    const/4 v2, 0x0

    aget-wide v2, v1, v2

    iput-wide v2, p0, Landroid/renderscript/Allocation;->mByteBufferStride:J

    .line 2871
    .end local v0    # "xBytesSize":I
    .end local v1    # "stride":[J
    :cond_1
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    .line 2872
    iget-object v0, p0, Landroid/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 2874
    :cond_2
    iget-object v0, p0, Landroid/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    return-object v0

    .line 2863
    :cond_3
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "YUV format is not supported for getByteBuffer()."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2858
    :cond_4
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cubemap is not supported for getByteBuffer()."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getBytesSize()I
    .locals 4

    .line 363
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget v0, v0, Landroid/renderscript/Type;->mDimYuv:I

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 366
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public whitelist getElement()Landroid/renderscript/Element;
    .locals 1

    .line 279
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getMipmap()Landroid/renderscript/Allocation$MipmapControl;
    .locals 1

    .line 300
    iget-object v0, p0, Landroid/renderscript/Allocation;->mMipmapControl:Landroid/renderscript/Allocation$MipmapControl;

    return-object v0
.end method

.method public whitelist getStride()J
    .locals 4

    .line 2990
    iget-wide v0, p0, Landroid/renderscript/Allocation;->mByteBufferStride:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2991
    invoke-virtual {p0}, Landroid/renderscript/Allocation;->getByteBuffer()Ljava/nio/ByteBuffer;

    .line 2993
    :cond_0
    iget-wide v0, p0, Landroid/renderscript/Allocation;->mByteBufferStride:J

    return-wide v0
.end method

.method public whitelist getSurface()Landroid/view/Surface;
    .locals 3

    .line 3025
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    .line 3029
    iget-object v0, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 3030
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScript;->nAllocationGetSurface(J)Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    .line 3033
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    return-object v0

    .line 3026
    :cond_1
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Allocation is not a surface texture."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTimeStamp()J
    .locals 2

    .line 3013
    iget-wide v0, p0, Landroid/renderscript/Allocation;->mTimeStamp:J

    return-wide v0
.end method

.method public whitelist getType()Landroid/renderscript/Type;
    .locals 1

    .line 527
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    return-object v0
.end method

.method public whitelist getUsage()I
    .locals 1

    .line 289
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    return v0
.end method

.method public whitelist ioReceive()V
    .locals 5

    .line 591
    const-wide/32 v0, 0x8000

    :try_start_0
    const-string/jumbo v2, "ioReceive"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 592
    iget v2, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_0

    .line 596
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 597
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/RenderScript;->nAllocationIoReceive(J)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/renderscript/Allocation;->mTimeStamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 600
    nop

    .line 601
    return-void

    .line 593
    :cond_0
    :try_start_1
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Can only receive if IO_INPUT usage specified."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/renderscript/Allocation;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 599
    .restart local p0    # "this":Landroid/renderscript/Allocation;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 600
    throw v2
.end method

.method public whitelist ioSend()V
    .locals 5

    .line 572
    const-wide/32 v0, 0x8000

    :try_start_0
    const-string/jumbo v2, "ioSend"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 573
    iget v2, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_0

    .line 577
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 578
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/RenderScript;->nAllocationIoSend(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 581
    nop

    .line 582
    return-void

    .line 574
    :cond_0
    :try_start_1
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Can only send buffer if IO_OUTPUT usage specified."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/renderscript/Allocation;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 580
    .restart local p0    # "this":Landroid/renderscript/Allocation;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 581
    throw v2
.end method

.method public declared-synchronized whitelist resize(I)V
    .locals 5
    .param p1, "dimX"    # I

    monitor-enter p0

    .line 2077
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 2080
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2083
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nAllocationResize1D(JI)V

    .line 2084
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->finish()V

    .line 2086
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScript;->nAllocationGetType(J)J

    move-result-wide v0

    .line 2089
    .local v0, "typeID":J
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/Type;->setID(J)V

    .line 2090
    new-instance v2, Landroid/renderscript/Type;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v0, v1, v3}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 2091
    invoke-virtual {v2}, Landroid/renderscript/Type;->updateFromNative()V

    .line 2092
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-direct {p0, v2}, Landroid/renderscript/Allocation;->updateCacheInfo(Landroid/renderscript/Type;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2093
    monitor-exit p0

    return-void

    .line 2081
    .end local v0    # "typeID":J
    .end local p0    # "this":Landroid/renderscript/Allocation;
    :cond_0
    :try_start_1
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Resize only support for 1D allocations at this time."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2078
    :cond_1
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Resize is not allowed in API 21+."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2076
    .end local p1    # "dimX":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist setAutoPadding(Z)V
    .locals 0
    .param p1, "useAutoPadding"    # Z

    .line 353
    iput-boolean p1, p0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    .line 354
    return-void
.end method

.method public whitelist setFromFieldPacker(IIIILandroid/renderscript/FieldPacker;)V
    .locals 15
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "component_number"    # I
    .param p5, "fp"    # Landroid/renderscript/FieldPacker;

    .line 1076
    move-object v0, p0

    move/from16 v11, p4

    iget-object v1, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 1077
    iget-object v1, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v1, v1

    if-ge v11, v1, :cond_4

    .line 1080
    if-ltz p1, :cond_3

    .line 1083
    if-ltz p2, :cond_2

    .line 1086
    if-ltz p3, :cond_1

    .line 1090
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v12

    .line 1091
    .local v12, "data":[B
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/FieldPacker;->getPos()I

    move-result v13

    .line 1092
    .local v13, "data_length":I
    iget-object v1, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v1, v1, v11

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    .line 1093
    .local v1, "eSize":I
    iget-object v2, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mArraySizes:[I

    aget v2, v2, v11

    mul-int v14, v1, v2

    .line 1095
    .end local v1    # "eSize":I
    .local v14, "eSize":I
    if-ne v13, v14, :cond_0

    .line 1100
    iget-object v1, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v2

    iget v7, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v8, p4

    move-object v9, v12

    move v10, v13

    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->nAllocationElementData(JIIIII[BI)V

    .line 1102
    return-void

    .line 1096
    :cond_0
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field packer sizelength "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match component size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1087
    .end local v12    # "data":[B
    .end local v13    # "data_length":I
    .end local v14    # "eSize":I
    :cond_1
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Offset z must be >= 0."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1084
    :cond_2
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Offset y must be >= 0."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1081
    :cond_3
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Offset x must be >= 0."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1078
    :cond_4
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Component_number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    .locals 6
    .param p1, "xoff"    # I
    .param p2, "component_number"    # I
    .param p3, "fp"    # Landroid/renderscript/FieldPacker;

    .line 1062
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Allocation;->setFromFieldPacker(IIIILandroid/renderscript/FieldPacker;)V

    .line 1063
    return-void
.end method

.method public whitelist setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    .locals 7
    .param p1, "xoff"    # I
    .param p2, "fp"    # Landroid/renderscript/FieldPacker;

    .line 1039
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1040
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    .line 1041
    .local v0, "eSize":I
    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v1

    .line 1042
    .local v1, "data":[B
    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getPos()I

    move-result v2

    .line 1044
    .local v2, "data_length":I
    div-int v3, v2, v0

    .line 1045
    .local v3, "count":I
    mul-int v4, v0, v3

    if-ne v4, v2, :cond_0

    .line 1049
    invoke-virtual {p0, p1, v3, v1}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[B)V

    .line 1050
    return-void

    .line 1046
    :cond_0
    new-instance v4, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Field packer length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not divisible by element size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public whitelist setOnBufferAvailableListener(Landroid/renderscript/Allocation$OnBufferAvailableListener;)V
    .locals 5
    .param p1, "callback"    # Landroid/renderscript/Allocation$OnBufferAvailableListener;

    .line 3340
    sget-object v0, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3341
    :try_start_0
    sget-object v1, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Long;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3342
    iput-object p1, p0, Landroid/renderscript/Allocation;->mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

    .line 3343
    monitor-exit v0

    .line 3344
    return-void

    .line 3343
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "sur"    # Landroid/view/Surface;

    .line 3043
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3044
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    .line 3048
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nAllocationSetSurface(JLandroid/view/Surface;)V

    .line 3049
    return-void

    .line 3045
    :cond_0
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Allocation is not USAGE_IO_OUTPUT."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o setupBufferQueue(I)V
    .locals 3
    .param p1, "numAlloc"    # I

    .line 2958
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2959
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    .line 2962
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nAllocationSetupBufferQueue(JI)V

    .line 2963
    return-void

    .line 2960
    :cond_0
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Allocation is not USAGE_IO_INPUT."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o shareBufferQueue(Landroid/renderscript/Allocation;)V
    .locals 5
    .param p1, "alloc"    # Landroid/renderscript/Allocation;

    .line 2971
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2972
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    .line 2975
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    .line 2976
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/renderscript/RenderScript;->nAllocationShareBufferQueue(JJ)V

    .line 2977
    return-void

    .line 2973
    :cond_0
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Allocation is not USAGE_IO_INPUT."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist syncAll(I)V
    .locals 5
    .param p1, "srcLocation"    # I

    .line 537
    const-wide/32 v0, 0x8000

    :try_start_0
    const-string/jumbo v2, "syncAll"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 538
    sparse-switch p1, :sswitch_data_0

    .line 554
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    goto :goto_1

    .line 549
    :sswitch_0
    iget v2, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    .line 550
    iget-object v2, p0, Landroid/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 547
    :sswitch_1
    goto :goto_0

    .line 541
    :sswitch_2
    iget v2, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    .line 542
    iget-object v2, p0, Landroid/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 556
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 557
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p1}, Landroid/renderscript/RenderScript;->nAllocationSyncAll(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 560
    nop

    .line 561
    return-void

    .line 554
    :goto_1
    :try_start_1
    const-string v3, "Source must be exactly one usage type."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/renderscript/Allocation;
    .end local p1    # "srcLocation":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 559
    .restart local p0    # "this":Landroid/renderscript/Allocation;
    .restart local p1    # "srcLocation":I
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 560
    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method greylist-max-o updateFromNative()V
    .locals 4

    .line 511
    invoke-super {p0}, Landroid/renderscript/BaseObj;->updateFromNative()V

    .line 512
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScript;->nAllocationGetType(J)J

    move-result-wide v0

    .line 513
    .local v0, "typeID":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 514
    new-instance v2, Landroid/renderscript/Type;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v0, v1, v3}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 515
    invoke-virtual {v2}, Landroid/renderscript/Type;->updateFromNative()V

    .line 516
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-direct {p0, v2}, Landroid/renderscript/Allocation;->updateCacheInfo(Landroid/renderscript/Type;)V

    .line 518
    :cond_0
    return-void
.end method
