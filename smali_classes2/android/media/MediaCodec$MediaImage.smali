.class public Landroid/media/MediaCodec$MediaImage;
.super Landroid/media/Image;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodec$MediaImage$MediaPlane;
    }
.end annotation


# static fields
.field private static final greylist-max-o TYPE_YUV:I = 0x1


# instance fields
.field private final greylist-max-o mBuffer:Ljava/nio/ByteBuffer;

.field private final blacklist mBufferContext:J

.field private final greylist-max-o mFormat:I

.field private final greylist-max-o mHeight:I

.field private final greylist-max-o mInfo:Ljava/nio/ByteBuffer;

.field private final greylist-max-o mIsReadOnly:Z

.field private final greylist-max-o mPlanes:[Landroid/media/Image$Plane;

.field private final greylist-max-o mScalingMode:I

.field private greylist-max-o mTimestamp:J

.field private final greylist-max-o mTransform:I

.field private final greylist-max-o mWidth:I

.field private final greylist-max-o mXOffset:I

.field private final greylist-max-o mYOffset:I


# direct methods
.method public constructor greylist-max-o <init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZJIILandroid/graphics/Rect;)V
    .locals 23
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "info"    # Ljava/nio/ByteBuffer;
    .param p3, "readOnly"    # Z
    .param p4, "timestamp"    # J
    .param p6, "xOffset"    # I
    .param p7, "yOffset"    # I
    .param p8, "cropRect"    # Landroid/graphics/Rect;

    .line 5147
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-direct/range {p0 .. p0}, Landroid/media/Image;-><init>()V

    .line 5072
    const/4 v4, 0x0

    iput v4, v0, Landroid/media/MediaCodec$MediaImage;->mTransform:I

    .line 5073
    iput v4, v0, Landroid/media/MediaCodec$MediaImage;->mScalingMode:I

    .line 5148
    move-wide/from16 v5, p4

    iput-wide v5, v0, Landroid/media/MediaCodec$MediaImage;->mTimestamp:J

    .line 5149
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    .line 5150
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v8

    iput-boolean v8, v0, Landroid/media/MediaCodec$MediaImage;->mIsReadOnly:Z

    .line 5151
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, v0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    .line 5154
    iput v2, v0, Landroid/media/MediaCodec$MediaImage;->mXOffset:I

    .line 5155
    iput v3, v0, Landroid/media/MediaCodec$MediaImage;->mYOffset:I

    .line 5156
    move-object/from16 v8, p2

    iput-object v8, v0, Landroid/media/MediaCodec$MediaImage;->mInfo:Ljava/nio/ByteBuffer;

    .line 5158
    const-wide/16 v9, 0x0

    iput-wide v9, v0, Landroid/media/MediaCodec$MediaImage;->mBufferContext:J

    .line 5160
    const/4 v9, -0x1

    .line 5161
    .local v9, "cbPlaneOffset":I
    const/4 v10, -0x1

    .line 5162
    .local v10, "crPlaneOffset":I
    const/4 v11, -0x1

    .line 5163
    .local v11, "planeOffsetInc":I
    const/4 v12, -0x1

    .line 5166
    .local v12, "pixelStride":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    const/16 v14, 0x68

    if-ne v13, v14, :cond_16

    .line 5167
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    .line 5168
    .local v13, "type":I
    if-ne v13, v7, :cond_15

    .line 5171
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    .line 5172
    .local v14, "numPlanes":I
    const/4 v15, 0x3

    if-ne v14, v15, :cond_14

    .line 5175
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    iput v15, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    .line 5176
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    .line 5177
    const-string/jumbo v5, "x"

    if-lt v15, v7, :cond_13

    if-lt v4, v7, :cond_13

    .line 5181
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 5182
    .local v4, "bitDepth":I
    const/16 v6, 0xa

    const/16 v15, 0x8

    if-eq v4, v15, :cond_1

    if-ne v4, v6, :cond_0

    goto :goto_0

    .line 5183
    :cond_0
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unsupported bit depth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5185
    :cond_1
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 5186
    .local v7, "bitDepthAllocated":I
    const/16 v6, 0x10

    if-eq v7, v15, :cond_3

    if-ne v7, v6, :cond_2

    goto :goto_1

    .line 5187
    :cond_2
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unsupported allocated bit depth: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5190
    :cond_3
    :goto_1
    const/16 v6, 0x36

    if-ne v4, v15, :cond_4

    if-ne v7, v15, :cond_4

    .line 5191
    const/16 v15, 0x23

    iput v15, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    .line 5192
    const/4 v11, 0x1

    .line 5193
    const/4 v12, 0x2

    goto :goto_2

    .line 5194
    :cond_4
    const/16 v15, 0xa

    if-ne v4, v15, :cond_12

    const/16 v15, 0x10

    if-ne v7, v15, :cond_12

    .line 5195
    iput v6, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    .line 5196
    const/4 v11, 0x2

    .line 5197
    const/4 v12, 0x4

    .line 5203
    :goto_2
    new-array v15, v14, [Landroid/media/MediaCodec$MediaImage$MediaPlane;

    iput-object v15, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    .line 5204
    const/4 v15, 0x0

    .local v15, "ix":I
    :goto_3
    if-ge v15, v14, :cond_d

    .line 5205
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v17

    .line 5206
    .local v17, "planeOffset":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 5207
    .local v6, "colInc":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 5208
    .local v8, "rowInc":I
    move/from16 v19, v13

    .end local v13    # "type":I
    .local v19, "type":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    .line 5209
    .local v13, "horiz":I
    move/from16 v20, v14

    .end local v14    # "numPlanes":I
    .local v20, "numPlanes":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    .line 5210
    .local v14, "vert":I
    if-ne v13, v14, :cond_b

    move/from16 v21, v7

    if-nez v15, :cond_5

    const/4 v7, 0x1

    goto :goto_4

    :cond_5
    const/4 v7, 0x2

    .end local v7    # "bitDepthAllocated":I
    .local v21, "bitDepthAllocated":I
    :goto_4
    if-ne v13, v7, :cond_c

    .line 5214
    const/4 v7, 0x1

    if-lt v6, v7, :cond_a

    if-lt v8, v7, :cond_a

    .line 5218
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 5219
    iget-object v7, v0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int v7, v7, v17

    div-int v22, v2, v13

    mul-int v22, v22, v6

    add-int v7, v7, v22

    div-int v22, v3, v14

    mul-int v22, v22, v8

    add-int v7, v7, v22

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5221
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    const/16 v3, 0x8

    invoke-static {v4, v3}, Landroid/media/Utils;->divUp(II)I

    move-result v18

    add-int v7, v7, v18

    iget v3, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    div-int/2addr v3, v14

    const/16 v16, 0x1

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v3, v8

    add-int/2addr v7, v3

    iget v3, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    div-int/2addr v3, v13

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v3, v6

    add-int/2addr v7, v3

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 5223
    iget-object v3, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    new-instance v7, Landroid/media/MediaCodec$MediaImage$MediaPlane;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v7, v0, v1, v8, v6}, Landroid/media/MediaCodec$MediaImage$MediaPlane;-><init>(Landroid/media/MediaCodec$MediaImage;Ljava/nio/ByteBuffer;II)V

    aput-object v7, v3, v15

    .line 5224
    iget v1, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    const/16 v3, 0x23

    if-eq v1, v3, :cond_6

    const/16 v3, 0x36

    if-ne v1, v3, :cond_7

    :cond_6
    const/4 v3, 0x1

    if-ne v15, v3, :cond_7

    .line 5226
    move/from16 v1, v17

    move v9, v1

    const/16 v3, 0x23

    .end local v9    # "cbPlaneOffset":I
    .local v1, "cbPlaneOffset":I
    goto :goto_5

    .line 5227
    .end local v1    # "cbPlaneOffset":I
    .restart local v9    # "cbPlaneOffset":I
    :cond_7
    const/16 v3, 0x23

    if-eq v1, v3, :cond_8

    const/16 v7, 0x36

    if-ne v1, v7, :cond_9

    :cond_8
    const/4 v1, 0x2

    if-ne v15, v1, :cond_9

    .line 5229
    move/from16 v1, v17

    move v10, v1

    .line 5204
    .end local v6    # "colInc":I
    .end local v8    # "rowInc":I
    .end local v13    # "horiz":I
    .end local v14    # "vert":I
    .end local v17    # "planeOffset":I
    :cond_9
    :goto_5
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move/from16 v3, p7

    move/from16 v13, v19

    move/from16 v14, v20

    move/from16 v7, v21

    const/16 v6, 0x36

    goto/16 :goto_3

    .line 5215
    .restart local v6    # "colInc":I
    .restart local v8    # "rowInc":I
    .restart local v13    # "horiz":I
    .restart local v14    # "vert":I
    .restart local v17    # "planeOffset":I
    :cond_a
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unexpected strides: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " pixel, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " row on plane "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5210
    .end local v21    # "bitDepthAllocated":I
    .restart local v7    # "bitDepthAllocated":I
    :cond_b
    move/from16 v21, v7

    .line 5211
    .end local v7    # "bitDepthAllocated":I
    .restart local v21    # "bitDepthAllocated":I
    :cond_c
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unexpected subsampling: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " on plane "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5204
    .end local v6    # "colInc":I
    .end local v8    # "rowInc":I
    .end local v17    # "planeOffset":I
    .end local v19    # "type":I
    .end local v20    # "numPlanes":I
    .end local v21    # "bitDepthAllocated":I
    .restart local v7    # "bitDepthAllocated":I
    .local v13, "type":I
    .local v14, "numPlanes":I
    :cond_d
    move/from16 v21, v7

    move/from16 v19, v13

    move/from16 v20, v14

    .line 5232
    .end local v4    # "bitDepth":I
    .end local v7    # "bitDepthAllocated":I
    .end local v13    # "type":I
    .end local v14    # "numPlanes":I
    .end local v15    # "ix":I
    nop

    .line 5238
    iget v1, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    const/16 v3, 0x36

    if-ne v1, v3, :cond_10

    .line 5239
    add-int v1, v9, v11

    if-ne v10, v1, :cond_f

    .line 5243
    iget-object v1, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v1

    if-ne v1, v12, :cond_e

    iget-object v1, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    .line 5244
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v1

    if-ne v1, v12, :cond_e

    goto :goto_6

    .line 5245
    :cond_e
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Invalid pixelStride"

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5240
    :cond_f
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid plane offsets cbPlaneOffset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " crPlaneOffset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5249
    :cond_10
    :goto_6
    if-nez p8, :cond_11

    .line 5250
    new-instance v1, Landroid/graphics/Rect;

    iget v3, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    iget v4, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    const/4 v5, 0x0

    invoke-direct {v1, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local p8    # "cropRect":Landroid/graphics/Rect;
    .local v1, "cropRect":Landroid/graphics/Rect;
    goto :goto_7

    .line 5249
    .end local v1    # "cropRect":Landroid/graphics/Rect;
    .restart local p8    # "cropRect":Landroid/graphics/Rect;
    :cond_11
    move-object/from16 v1, p8

    .line 5252
    .end local p8    # "cropRect":Landroid/graphics/Rect;
    .restart local v1    # "cropRect":Landroid/graphics/Rect;
    :goto_7
    neg-int v3, v2

    move/from16 v6, p7

    neg-int v4, v6

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 5253
    invoke-super {v0, v1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    .line 5254
    return-void

    .line 5194
    .end local v1    # "cropRect":Landroid/graphics/Rect;
    .restart local v4    # "bitDepth":I
    .restart local v7    # "bitDepthAllocated":I
    .restart local v13    # "type":I
    .restart local v14    # "numPlanes":I
    .restart local p8    # "cropRect":Landroid/graphics/Rect;
    :cond_12
    move v6, v3

    move/from16 v21, v7

    move/from16 v19, v13

    move/from16 v20, v14

    .line 5199
    .end local v7    # "bitDepthAllocated":I
    .end local v13    # "type":I
    .end local v14    # "numPlanes":I
    .restart local v19    # "type":I
    .restart local v20    # "numPlanes":I
    .restart local v21    # "bitDepthAllocated":I
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t infer ImageFormat bitDepth: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " bitDepthAllocated: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v5, v21

    .end local v21    # "bitDepthAllocated":I
    .local v5, "bitDepthAllocated":I
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5177
    .end local v4    # "bitDepth":I
    .end local v5    # "bitDepthAllocated":I
    .end local v19    # "type":I
    .end local v20    # "numPlanes":I
    .restart local v13    # "type":I
    .restart local v14    # "numPlanes":I
    :cond_13
    move v6, v3

    move/from16 v19, v13

    move/from16 v20, v14

    .line 5178
    .end local v13    # "type":I
    .end local v14    # "numPlanes":I
    .restart local v19    # "type":I
    .restart local v20    # "numPlanes":I
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unsupported size: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5173
    .end local v19    # "type":I
    .end local v20    # "numPlanes":I
    .restart local v13    # "type":I
    .restart local v14    # "numPlanes":I
    :cond_14
    move v6, v3

    move/from16 v20, v14

    .end local v14    # "numPlanes":I
    .restart local v20    # "numPlanes":I
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected number of planes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v4, v20

    .end local v20    # "numPlanes":I
    .local v4, "numPlanes":I
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5169
    .end local v4    # "numPlanes":I
    :cond_15
    move v6, v3

    move/from16 v19, v13

    .end local v13    # "type":I
    .restart local v19    # "type":I
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unsupported type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v4, v19

    .end local v19    # "type":I
    .local v4, "type":I
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5233
    .end local v4    # "type":I
    :cond_16
    move v6, v3

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unsupported info length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5234
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor blacklist <init>([Ljava/nio/ByteBuffer;[I[IIIIZJIILandroid/graphics/Rect;J)V
    .locals 16
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "rowStrides"    # [I
    .param p3, "pixelStrides"    # [I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "format"    # I
    .param p7, "readOnly"    # Z
    .param p8, "timestamp"    # J
    .param p10, "xOffset"    # I
    .param p11, "yOffset"    # I
    .param p12, "cropRect"    # Landroid/graphics/Rect;
    .param p13, "context"    # J

    .line 5259
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p10

    move/from16 v5, p11

    invoke-direct/range {p0 .. p0}, Landroid/media/Image;-><init>()V

    .line 5072
    const/4 v6, 0x0

    iput v6, v0, Landroid/media/MediaCodec$MediaImage;->mTransform:I

    .line 5073
    iput v6, v0, Landroid/media/MediaCodec$MediaImage;->mScalingMode:I

    .line 5260
    array-length v7, v1

    array-length v8, v2

    if-ne v7, v8, :cond_2

    array-length v7, v1

    array-length v8, v3

    if-ne v7, v8, :cond_2

    .line 5264
    move/from16 v7, p4

    iput v7, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    .line 5265
    move/from16 v8, p5

    iput v8, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    .line 5266
    move/from16 v9, p6

    iput v9, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    .line 5267
    move-wide/from16 v10, p8

    iput-wide v10, v0, Landroid/media/MediaCodec$MediaImage;->mTimestamp:J

    .line 5268
    const/4 v12, 0x1

    iput-boolean v12, v0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    .line 5269
    move/from16 v12, p7

    iput-boolean v12, v0, Landroid/media/MediaCodec$MediaImage;->mIsReadOnly:Z

    .line 5270
    const/4 v13, 0x0

    iput-object v13, v0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    .line 5271
    iput-object v13, v0, Landroid/media/MediaCodec$MediaImage;->mInfo:Ljava/nio/ByteBuffer;

    .line 5272
    array-length v13, v1

    new-array v13, v13, [Landroid/media/MediaCodec$MediaImage$MediaPlane;

    iput-object v13, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    .line 5273
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    array-length v14, v1

    if-ge v13, v14, :cond_0

    .line 5274
    iget-object v14, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    new-instance v15, Landroid/media/MediaCodec$MediaImage$MediaPlane;

    aget-object v6, v1, v13

    aget v1, v2, v13

    aget v2, v3, v13

    invoke-direct {v15, v0, v6, v1, v2}, Landroid/media/MediaCodec$MediaImage$MediaPlane;-><init>(Landroid/media/MediaCodec$MediaImage;Ljava/nio/ByteBuffer;II)V

    aput-object v15, v14, v13

    .line 5273
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v6, 0x0

    goto :goto_0

    .line 5278
    .end local v13    # "i":I
    :cond_0
    iput v4, v0, Landroid/media/MediaCodec$MediaImage;->mXOffset:I

    .line 5279
    iput v5, v0, Landroid/media/MediaCodec$MediaImage;->mYOffset:I

    .line 5281
    if-nez p12, :cond_1

    .line 5282
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    iget v6, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    const/4 v13, 0x0

    invoke-direct {v1, v13, v13, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local p12    # "cropRect":Landroid/graphics/Rect;
    .local v1, "cropRect":Landroid/graphics/Rect;
    goto :goto_1

    .line 5281
    .end local v1    # "cropRect":Landroid/graphics/Rect;
    .restart local p12    # "cropRect":Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v1, p12

    .line 5284
    .end local p12    # "cropRect":Landroid/graphics/Rect;
    .restart local v1    # "cropRect":Landroid/graphics/Rect;
    :goto_1
    neg-int v2, v4

    neg-int v6, v5

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 5285
    invoke-super {v0, v1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    .line 5287
    move-wide/from16 v13, p13

    iput-wide v13, v0, Landroid/media/MediaCodec$MediaImage;->mBufferContext:J

    .line 5288
    return-void

    .line 5260
    .end local v1    # "cropRect":Landroid/graphics/Rect;
    .restart local p12    # "cropRect":Landroid/graphics/Rect;
    :cond_2
    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v12, p7

    move-wide/from16 v10, p8

    move-wide/from16 v13, p13

    .line 5261
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "buffers, rowStrides and pixelStrides should have the same length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 4

    .line 5120
    iget-boolean v0, p0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    if-eqz v0, :cond_2

    .line 5121
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 5122
    invoke-static {v0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 5124
    :cond_0
    iget-wide v0, p0, Landroid/media/MediaCodec$MediaImage;->mBufferContext:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 5125
    invoke-static {v0, v1}, Landroid/media/MediaCodec;->-$$Nest$smnative_closeMediaImage(J)V

    .line 5127
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    .line 5129
    :cond_2
    return-void
.end method

.method public whitelist getFormat()I
    .locals 1

    .line 5077
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    .line 5078
    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    return v0
.end method

.method public whitelist getHeight()I
    .locals 1

    .line 5083
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    .line 5084
    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    return v0
.end method

.method public whitelist getPlanes()[Landroid/media/Image$Plane;
    .locals 2

    .line 5114
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    .line 5115
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/Image$Plane;

    return-object v0
.end method

.method public greylist-max-o getScalingMode()I
    .locals 1

    .line 5101
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    .line 5102
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getTimestamp()J
    .locals 2

    .line 5107
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    .line 5108
    iget-wide v0, p0, Landroid/media/MediaCodec$MediaImage;->mTimestamp:J

    return-wide v0
.end method

.method public greylist-max-o getTransform()I
    .locals 1

    .line 5095
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    .line 5096
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getWidth()I
    .locals 1

    .line 5089
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    .line 5090
    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    return v0
.end method

.method public whitelist setCropRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "cropRect"    # Landroid/graphics/Rect;

    .line 5139
    iget-boolean v0, p0, Landroid/media/MediaCodec$MediaImage;->mIsReadOnly:Z

    if-nez v0, :cond_0

    .line 5142
    invoke-super {p0, p1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    .line 5143
    return-void

    .line 5140
    :cond_0
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method
