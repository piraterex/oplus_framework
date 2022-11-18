.class public final Landroid/hardware/display/VirtualDisplayConfig$Builder;
.super Ljava/lang/Object;
.source "VirtualDisplayConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/VirtualDisplayConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mDensityDpi:I

.field private blacklist mDisplayIdToMirror:I

.field private blacklist mFlags:I

.field private blacklist mHeight:I

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mSurface:Landroid/view/Surface;

.field private blacklist mUniqueId:Ljava/lang/String;

.field private blacklist mWidth:I

.field private blacklist mWindowManagerMirroring:Z


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;III)V
    .locals 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I

    .line 354
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 336
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    .line 355
    iput-object v1, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mName:Ljava/lang/String;

    .line 356
    const-class v2, Landroid/annotation/NonNull;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 358
    move/from16 v2, p2

    iput v2, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mWidth:I

    .line 359
    const-class v4, Landroid/annotation/IntRange;

    const/4 v5, 0x0

    const-string v7, "from"

    const-wide/16 v8, 0x1

    move/from16 v6, p2

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 362
    move/from16 v3, p3

    iput v3, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mHeight:I

    .line 363
    const-class v10, Landroid/annotation/IntRange;

    const/4 v11, 0x0

    const-string v13, "from"

    const-wide/16 v14, 0x1

    move/from16 v12, p3

    invoke-static/range {v10 .. v15}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 366
    move/from16 v10, p4

    iput v10, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDensityDpi:I

    .line 367
    const-class v4, Landroid/annotation/IntRange;

    const-string v7, "from"

    move/from16 v6, p4

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 370
    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    .line 515
    iget-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 519
    return-void

    .line 516
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/hardware/display/VirtualDisplayConfig;
    .locals 14

    .line 483
    invoke-direct {p0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->checkNotUsed()V

    .line 484
    iget-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x200

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    .line 486
    const-wide/16 v2, 0x10

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 487
    iput v3, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mFlags:I

    .line 489
    :cond_0
    const-wide/16 v6, 0x20

    and-long/2addr v6, v0

    cmp-long v2, v6, v4

    const/4 v6, 0x0

    if-nez v2, :cond_1

    .line 490
    iput-object v6, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mSurface:Landroid/view/Surface;

    .line 492
    :cond_1
    const-wide/16 v7, 0x40

    and-long/2addr v7, v0

    cmp-long v2, v7, v4

    if-nez v2, :cond_2

    .line 493
    iput-object v6, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mUniqueId:Ljava/lang/String;

    .line 495
    :cond_2
    const-wide/16 v6, 0x80

    and-long/2addr v6, v0

    cmp-long v2, v6, v4

    if-nez v2, :cond_3

    .line 496
    iput v3, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDisplayIdToMirror:I

    .line 498
    :cond_3
    const-wide/16 v6, 0x100

    and-long/2addr v0, v6

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    .line 499
    iput-boolean v3, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mWindowManagerMirroring:Z

    .line 501
    :cond_4
    new-instance v0, Landroid/hardware/display/VirtualDisplayConfig;

    iget-object v5, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mName:Ljava/lang/String;

    iget v6, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mWidth:I

    iget v7, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mHeight:I

    iget v8, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDensityDpi:I

    iget v9, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mFlags:I

    iget-object v10, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mSurface:Landroid/view/Surface;

    iget-object v11, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mUniqueId:Ljava/lang/String;

    iget v12, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDisplayIdToMirror:I

    iget-boolean v13, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mWindowManagerMirroring:Z

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Landroid/hardware/display/VirtualDisplayConfig;-><init>(Ljava/lang/String;IIIILandroid/view/Surface;Ljava/lang/String;IZ)V

    .line 511
    .local v0, "o":Landroid/hardware/display/VirtualDisplayConfig;
    return-object v0
.end method

.method public blacklist setDensityDpi(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .locals 4
    .param p1, "value"    # I

    .line 410
    invoke-direct {p0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->checkNotUsed()V

    .line 411
    iget-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    .line 412
    iput p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDensityDpi:I

    .line 413
    return-object p0
.end method

.method public blacklist setDisplayIdToMirror(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .locals 4
    .param p1, "value"    # I

    .line 463
    invoke-direct {p0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->checkNotUsed()V

    .line 464
    iget-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    .line 465
    iput p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDisplayIdToMirror:I

    .line 466
    return-object p0
.end method

.method public blacklist setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .locals 4
    .param p1, "value"    # I

    .line 426
    invoke-direct {p0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->checkNotUsed()V

    .line 427
    iget-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    .line 428
    iput p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mFlags:I

    .line 429
    return-object p0
.end method

.method public blacklist setHeight(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .locals 4
    .param p1, "value"    # I

    .line 399
    invoke-direct {p0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->checkNotUsed()V

    .line 400
    iget-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    .line 401
    iput p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mHeight:I

    .line 402
    return-object p0
.end method

.method public blacklist setName(Ljava/lang/String;)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 377
    invoke-direct {p0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->checkNotUsed()V

    .line 378
    iget-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    .line 379
    iput-object p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mName:Ljava/lang/String;

    .line 380
    return-object p0
.end method

.method public blacklist setSurface(Landroid/view/Surface;)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .locals 4
    .param p1, "value"    # Landroid/view/Surface;

    .line 438
    invoke-direct {p0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->checkNotUsed()V

    .line 439
    iget-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    .line 440
    iput-object p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mSurface:Landroid/view/Surface;

    .line 441
    return-object p0
.end method

.method public blacklist setUniqueId(Ljava/lang/String;)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 451
    invoke-direct {p0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->checkNotUsed()V

    .line 452
    iget-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    .line 453
    iput-object p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mUniqueId:Ljava/lang/String;

    .line 454
    return-object p0
.end method

.method public blacklist setWidth(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .locals 4
    .param p1, "value"    # I

    .line 388
    invoke-direct {p0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->checkNotUsed()V

    .line 389
    iget-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    .line 390
    iput p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mWidth:I

    .line 391
    return-object p0
.end method

.method public blacklist setWindowManagerMirroring(Z)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .locals 4
    .param p1, "value"    # Z

    .line 475
    invoke-direct {p0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->checkNotUsed()V

    .line 476
    iget-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBuilderFieldsSet:J

    .line 477
    iput-boolean p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mWindowManagerMirroring:Z

    .line 478
    return-object p0
.end method
