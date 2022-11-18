.class public Landroid/graphics/ColorSpace$Rgb;
.super Landroid/graphics/ColorSpace;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rgb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ColorSpace$Rgb$NoImagePreloadHolder;,
        Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    }
.end annotation


# instance fields
.field private final greylist-max-o mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

.field private final greylist-max-o mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

.field private final greylist-max-o mEotf:Ljava/util/function/DoubleUnaryOperator;

.field private final greylist-max-o mInverseTransform:[F

.field private final greylist-max-o mIsSrgb:Z

.field private final greylist-max-o mIsWideGamut:Z

.field private final greylist-max-o mMax:F

.field private final greylist-max-o mMin:F

.field private final blacklist mNativePtr:J

.field private final greylist-max-o mOetf:Ljava/util/function/DoubleUnaryOperator;

.field private final greylist-max-o mPrimaries:[F

.field private final greylist-max-o mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

.field private final greylist-max-o mTransform:[F

.field private final greylist-max-o mWhitePoint:[F


# direct methods
.method public static synthetic blacklist $r8$lambda$QGR5f_dq259rVcM_HPGB_A_avAs(Landroid/graphics/ColorSpace$Rgb;D)D
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->clamp(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClampedEotf(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;
    .locals 0

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClampedOetf(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;
    .locals 0

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInverseTransform(Landroid/graphics/ColorSpace$Rgb;)[F
    .locals 0

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransferParameters(Landroid/graphics/ColorSpace$Rgb;)Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .locals 0

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransform(Landroid/graphics/ColorSpace$Rgb;)[F
    .locals 0

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWhitePoint(Landroid/graphics/ColorSpace$Rgb;)[F
    .locals 0

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetNativeFinalizer()J
    .locals 2

    invoke-static {}, Landroid/graphics/ColorSpace$Rgb;->nativeGetNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/ColorSpace$Rgb;[F[F)V
    .locals 11
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace$Rgb;
    .param p2, "transform"    # [F
    .param p3, "whitePoint"    # [F

    .line 2831
    invoke-virtual {p1}, Landroid/graphics/ColorSpace$Rgb;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object v5, p1, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    iget-object v6, p1, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    iget v7, p1, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    iget v8, p1, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    iget-object v9, p1, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const/4 v10, -0x1

    move-object v0, p0

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v10}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    .line 2834
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/ColorSpace$Rgb;[F[FLandroid/graphics/ColorSpace$Rgb-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/ColorSpace$Rgb;-><init>(Landroid/graphics/ColorSpace$Rgb;[F[F)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;[FD)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "toXYZ"    # [F
    .param p3, "gamma"    # D

    .line 2593
    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computePrimaries([F)[F

    move-result-object v2

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computeWhitePoint([F)[F

    move-result-object v3

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFI)V

    .line 2594
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "toXYZ"    # [F
    .param p3, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 2468
    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->isGray([F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetGRAY_PRIMARIES()[F

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computePrimaries([F)[F

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 2469
    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computeWhitePoint([F)[F

    move-result-object v4

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->isGray([F)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v5, p2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move-object v5, v0

    :goto_1
    const/4 v7, -0x1

    .line 2468
    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    .line 2470
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "toXYZ"    # [F
    .param p3, "oetf"    # Ljava/util/function/DoubleUnaryOperator;
    .param p4, "eotf"    # Ljava/util/function/DoubleUnaryOperator;

    .line 2387
    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computePrimaries([F)[F

    move-result-object v2

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computeWhitePoint([F)[F

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v10}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    .line 2389
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;[F[FD)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "primaries"    # [F
    .param p3, "whitePoint"    # [F
    .param p4, "gamma"    # D

    .line 2633
    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFI)V

    .line 2634
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;[F[FDFFI)V
    .locals 24
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "primaries"    # [F
    .param p3, "whitePoint"    # [F
    .param p4, "gamma"    # D
    .param p6, "min"    # F
    .param p7, "max"    # F
    .param p8, "id"    # I

    .line 2681
    move-wide/from16 v11, p4

    .line 2682
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v11, v0

    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/function/DoubleUnaryOperator;->identity()Ljava/util/function/DoubleUnaryOperator;

    move-result-object v2

    move-object/from16 v18, v2

    goto :goto_0

    .line 2683
    :cond_0
    new-instance v2, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda5;

    invoke-direct {v2, v11, v12}, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda5;-><init>(D)V

    move-object/from16 v18, v2

    .line 2684
    :goto_0
    cmpl-double v0, v11, v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/function/DoubleUnaryOperator;->identity()Ljava/util/function/DoubleUnaryOperator;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_1

    .line 2685
    :cond_1
    new-instance v0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda6;

    invoke-direct {v0, v11, v12}, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda6;-><init>(D)V

    move-object/from16 v19, v0

    :goto_1
    new-instance v22, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object/from16 v0, v22

    move-wide/from16 v9, p4

    invoke-direct/range {v0 .. v10}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    .line 2681
    const/16 v17, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move/from16 v20, p6

    move/from16 v21, p7

    move/from16 v23, p8

    invoke-direct/range {v13 .. v23}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    .line 2687
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace$Rgb-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFI)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "primaries"    # [F
    .param p3, "whitePoint"    # [F
    .param p4, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 2509
    const/4 v4, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    .line 2510
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FF)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "primaries"    # [F
    .param p3, "whitePoint"    # [F
    .param p4, "oetf"    # Ljava/util/function/DoubleUnaryOperator;
    .param p5, "eotf"    # Ljava/util/function/DoubleUnaryOperator;
    .param p6, "min"    # F
    .param p7, "max"    # F

    .line 2438
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    .line 2439
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;[F[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "primaries"    # [F
    .param p3, "whitePoint"    # [F
    .param p4, "transform"    # [F
    .param p5, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .param p6, "id"    # I

    .line 2555
    move-object/from16 v11, p5

    .line 2556
    iget-wide v0, v11, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, v11, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 2557
    new-instance v0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda1;

    invoke-direct {v0, v11}, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    move-object v5, v0

    goto :goto_0

    .line 2559
    :cond_0
    new-instance v0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda2;

    invoke-direct {v0, v11}, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    move-object v5, v0

    .line 2561
    :goto_0
    iget-wide v0, v11, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, v11, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 2562
    new-instance v0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda3;

    invoke-direct {v0, v11}, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda3;-><init>(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    move-object v6, v0

    goto :goto_1

    .line 2564
    :cond_1
    new-instance v0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda4;

    invoke-direct {v0, v11}, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda4;-><init>(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    move-object v6, v0

    :goto_1
    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 2555
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    .line 2567
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;[F[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$Rgb-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V
    .locals 25
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "primaries"    # [F
    .param p3, "whitePoint"    # [F
    .param p4, "transform"    # [F
    .param p5, "oetf"    # Ljava/util/function/DoubleUnaryOperator;
    .param p6, "eotf"    # Ljava/util/function/DoubleUnaryOperator;
    .param p7, "min"    # F
    .param p8, "max"    # F
    .param p9, "transferParameters"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .param p10, "id"    # I

    .line 2742
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move-object/from16 v15, p9

    sget-object v4, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    move-object/from16 v10, p1

    move/from16 v9, p10

    invoke-direct {v0, v10, v4, v9}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;I)V

    .line 2744
    if-eqz v1, :cond_9

    array-length v4, v1

    const/4 v5, 0x6

    const/16 v6, 0x9

    if-eq v4, v5, :cond_0

    array-length v4, v1

    if-ne v4, v6, :cond_9

    .line 2749
    :cond_0
    if-eqz v2, :cond_8

    array-length v4, v2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    array-length v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    .line 2754
    :cond_1
    if-eqz v11, :cond_7

    if-eqz v12, :cond_7

    .line 2759
    cmpl-float v4, v13, v14

    if-gez v4, :cond_6

    .line 2764
    invoke-static/range {p3 .. p3}, Landroid/graphics/ColorSpace$Rgb;->xyWhitePoint([F)[F

    move-result-object v8

    iput-object v8, v0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    .line 2765
    invoke-static/range {p2 .. p2}, Landroid/graphics/ColorSpace$Rgb;->xyPrimaries([F)[F

    move-result-object v4

    iput-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    .line 2767
    if-nez v3, :cond_2

    .line 2768
    invoke-static {v4, v8}, Landroid/graphics/ColorSpace$Rgb;->computeXYZMatrix([F[F)[F

    move-result-object v5

    iput-object v5, v0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    goto :goto_0

    .line 2770
    :cond_2
    array-length v5, v3

    if-ne v5, v6, :cond_5

    .line 2774
    iput-object v3, v0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    .line 2776
    :goto_0
    iget-object v5, v0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    invoke-static {v5}, Landroid/graphics/ColorSpace;->-$$Nest$sminverse3x3([F)[F

    move-result-object v5

    iput-object v5, v0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    .line 2778
    iput-object v11, v0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    .line 2779
    iput-object v12, v0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    .line 2781
    iput v13, v0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    .line 2782
    iput v14, v0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    .line 2784
    new-instance v5, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/ColorSpace$Rgb;)V

    move-object v7, v5

    .line 2785
    .local v7, "clamp":Ljava/util/function/DoubleUnaryOperator;
    invoke-interface {v11, v7}, Ljava/util/function/DoubleUnaryOperator;->andThen(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v5

    iput-object v5, v0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    .line 2786
    invoke-interface {v7, v12}, Ljava/util/function/DoubleUnaryOperator;->andThen(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v5

    iput-object v5, v0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    .line 2788
    iput-object v15, v0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 2792
    invoke-static {v4, v13, v14}, Landroid/graphics/ColorSpace$Rgb;->isWideGamut([FFF)Z

    move-result v5

    iput-boolean v5, v0, Landroid/graphics/ColorSpace$Rgb;->mIsWideGamut:Z

    .line 2793
    move-object v5, v8

    move-object/from16 v6, p5

    move-object/from16 v16, v7

    .end local v7    # "clamp":Ljava/util/function/DoubleUnaryOperator;
    .local v16, "clamp":Ljava/util/function/DoubleUnaryOperator;
    move-object/from16 v7, p6

    move-object v1, v8

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p10

    invoke-static/range {v4 .. v10}, Landroid/graphics/ColorSpace$Rgb;->isSrgb([F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)Z

    move-result v4

    iput-boolean v4, v0, Landroid/graphics/ColorSpace$Rgb;->mIsSrgb:Z

    .line 2795
    if-eqz v15, :cond_4

    .line 2796
    if-eqz v1, :cond_3

    iget-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    if-eqz v4, :cond_3

    .line 2803
    invoke-static {v1, v4}, Landroid/graphics/ColorSpace;->-$$Nest$smadaptToIlluminantD50([F[F)[F

    move-result-object v1

    .line 2804
    .local v1, "nativeTransform":[F
    iget-wide v4, v15, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    double-to-float v4, v4

    iget-wide v5, v15, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    double-to-float v5, v5

    iget-wide v6, v15, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    double-to-float v6, v6

    iget-wide v7, v15, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    double-to-float v7, v7

    iget-wide v8, v15, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    double-to-float v8, v8

    iget-wide v9, v15, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    double-to-float v9, v9

    iget-wide v10, v15, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    double-to-float v10, v10

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move-object/from16 v24, v1

    invoke-static/range {v17 .. v24}, Landroid/graphics/ColorSpace$Rgb;->nativeCreate(FFFFFFF[F)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/graphics/ColorSpace$Rgb;->mNativePtr:J

    .line 2812
    sget-object v6, Landroid/graphics/ColorSpace$Rgb$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v6, v0, v4, v5}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 2813
    .end local v1    # "nativeTransform":[F
    goto :goto_1

    .line 2797
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ColorSpace ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") cannot create native object! mWhitePoint: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " mTransform: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2814
    :cond_4
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroid/graphics/ColorSpace$Rgb;->mNativePtr:J

    .line 2816
    :goto_1
    return-void

    .line 2771
    .end local v16    # "clamp":Ljava/util/function/DoubleUnaryOperator;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transform must have 9 entries! Has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2760
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid range: min="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", max="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; min must be strictly < max"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2755
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "The transfer functions of a color space cannot be null"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2750
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "The color space\'s white point must be defined as an array of 2 floats in xyY or 3 float in XYZ"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2745
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "The color space\'s primaries must be defined as an array of 6 floats in xyY or 9 floats in XYZ"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$Rgb-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    return-void
.end method

.method private static greylist-max-o area([F)F
    .locals 9
    .param p0, "primaries"    # [F

    .line 3344
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 3345
    .local v0, "Rx":F
    const/4 v1, 0x1

    aget v1, p0, v1

    .line 3346
    .local v1, "Ry":F
    const/4 v2, 0x2

    aget v2, p0, v2

    .line 3347
    .local v2, "Gx":F
    const/4 v3, 0x3

    aget v3, p0, v3

    .line 3348
    .local v3, "Gy":F
    const/4 v4, 0x4

    aget v4, p0, v4

    .line 3349
    .local v4, "Bx":F
    const/4 v5, 0x5

    aget v5, p0, v5

    .line 3350
    .local v5, "By":F
    mul-float v6, v0, v3

    mul-float v7, v1, v4

    add-float/2addr v6, v7

    mul-float v7, v2, v5

    add-float/2addr v6, v7

    mul-float v7, v3, v4

    sub-float/2addr v6, v7

    mul-float v7, v1, v2

    sub-float/2addr v6, v7

    mul-float v7, v0, v5

    sub-float/2addr v6, v7

    .line 3351
    .local v6, "det":F
    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v6

    .line 3352
    .local v7, "r":F
    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    if-gez v8, :cond_0

    neg-float v8, v7

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    return v8
.end method

.method private greylist-max-o clamp(D)D
    .locals 3
    .param p1, "x"    # D

    .line 3208
    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    float-to-double v1, v0

    cmpg-double v1, p1, v1

    if-gez v1, :cond_0

    :goto_0
    float-to-double v0, v0

    goto :goto_1

    :cond_0
    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    float-to-double v1, v0

    cmpl-double v1, p1, v1

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    move-wide v0, p1

    :goto_1
    return-wide v0
.end method

.method private static blacklist compare(DLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)Z
    .locals 8
    .param p0, "point"    # D
    .param p2, "a"    # Ljava/util/function/DoubleUnaryOperator;
    .param p3, "b"    # Ljava/util/function/DoubleUnaryOperator;

    .line 3308
    invoke-interface {p2, p0, p1}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    .line 3309
    .local v0, "rA":D
    invoke-interface {p3, p0, p1}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    .line 3310
    .local v2, "rB":D
    sub-double v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method private static greylist-max-o computePrimaries([F)[F
    .locals 12
    .param p0, "toXYZ"    # [F

    .line 3466
    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v1}, Landroid/graphics/ColorSpace;->-$$Nest$smmul3x3Float3([F[F)[F

    move-result-object v1

    .line 3467
    .local v1, "r":[F
    new-array v2, v0, [F

    fill-array-data v2, :array_1

    invoke-static {p0, v2}, Landroid/graphics/ColorSpace;->-$$Nest$smmul3x3Float3([F[F)[F

    move-result-object v2

    .line 3468
    .local v2, "g":[F
    new-array v3, v0, [F

    fill-array-data v3, :array_2

    invoke-static {p0, v3}, Landroid/graphics/ColorSpace;->-$$Nest$smmul3x3Float3([F[F)[F

    move-result-object v3

    .line 3470
    .local v3, "b":[F
    const/4 v4, 0x0

    aget v5, v1, v4

    const/4 v6, 0x1

    aget v7, v1, v6

    add-float/2addr v5, v7

    const/4 v7, 0x2

    aget v8, v1, v7

    add-float/2addr v5, v8

    .line 3471
    .local v5, "rSum":F
    aget v8, v2, v4

    aget v9, v2, v6

    add-float/2addr v8, v9

    aget v9, v2, v7

    add-float/2addr v8, v9

    .line 3472
    .local v8, "gSum":F
    aget v9, v3, v4

    aget v10, v3, v6

    add-float/2addr v9, v10

    aget v10, v3, v7

    add-float/2addr v9, v10

    .line 3474
    .local v9, "bSum":F
    const/4 v10, 0x6

    new-array v10, v10, [F

    aget v11, v1, v4

    div-float/2addr v11, v5

    aput v11, v10, v4

    aget v11, v1, v6

    div-float/2addr v11, v5

    aput v11, v10, v6

    aget v11, v2, v4

    div-float/2addr v11, v8

    aput v11, v10, v7

    aget v7, v2, v6

    div-float/2addr v7, v8

    aput v7, v10, v0

    aget v0, v3, v4

    div-float/2addr v0, v9

    const/4 v4, 0x4

    aput v0, v10, v4

    aget v0, v3, v6

    div-float/2addr v0, v9

    const/4 v4, 0x5

    aput v0, v10, v4

    return-object v10

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static greylist-max-o computeWhitePoint([F)[F
    .locals 6
    .param p0, "toXYZ"    # [F

    .line 3493
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Landroid/graphics/ColorSpace;->-$$Nest$smmul3x3Float3([F[F)[F

    move-result-object v0

    .line 3494
    .local v0, "w":[F
    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    add-float/2addr v2, v4

    const/4 v4, 0x2

    aget v5, v0, v4

    add-float/2addr v2, v5

    .line 3495
    .local v2, "sum":F
    new-array v4, v4, [F

    aget v5, v0, v1

    div-float/2addr v5, v2

    aput v5, v4, v1

    aget v1, v0, v3

    div-float/2addr v1, v2

    aput v1, v4, v3

    return-object v4

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static greylist-max-o computeXYZMatrix([F[F)[F
    .locals 30
    .param p0, "primaries"    # [F
    .param p1, "whitePoint"    # [F

    .line 3572
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 3573
    .local v1, "Rx":F
    const/4 v2, 0x1

    aget v3, p0, v2

    .line 3574
    .local v3, "Ry":F
    const/4 v4, 0x2

    aget v5, p0, v4

    .line 3575
    .local v5, "Gx":F
    const/4 v6, 0x3

    aget v7, p0, v6

    .line 3576
    .local v7, "Gy":F
    const/4 v8, 0x4

    aget v9, p0, v8

    .line 3577
    .local v9, "Bx":F
    const/4 v10, 0x5

    aget v11, p0, v10

    .line 3578
    .local v11, "By":F
    aget v12, p1, v0

    .line 3579
    .local v12, "Wx":F
    aget v13, p1, v2

    .line 3581
    .local v13, "Wy":F
    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v15, v14, v1

    div-float/2addr v15, v3

    .line 3582
    .local v15, "oneRxRy":F
    sub-float v16, v14, v5

    div-float v16, v16, v7

    .line 3583
    .local v16, "oneGxGy":F
    sub-float v17, v14, v9

    div-float v17, v17, v11

    .line 3584
    .local v17, "oneBxBy":F
    sub-float v18, v14, v12

    div-float v18, v18, v13

    .line 3586
    .local v18, "oneWxWy":F
    div-float v19, v1, v3

    .line 3587
    .local v19, "RxRy":F
    div-float v20, v5, v7

    .line 3588
    .local v20, "GxGy":F
    div-float v21, v9, v11

    .line 3589
    .local v21, "BxBy":F
    div-float v22, v12, v13

    .line 3591
    .local v22, "WxWy":F
    sub-float v23, v18, v15

    sub-float v24, v20, v19

    mul-float v23, v23, v24

    sub-float v24, v22, v19

    sub-float v25, v16, v15

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    sub-float v24, v17, v15

    sub-float v25, v20, v19

    mul-float v24, v24, v25

    sub-float v25, v21, v19

    sub-float v26, v16, v15

    mul-float v25, v25, v26

    sub-float v24, v24, v25

    div-float v23, v23, v24

    .line 3594
    .local v23, "BY":F
    sub-float v24, v22, v19

    sub-float v25, v21, v19

    mul-float v25, v25, v23

    sub-float v24, v24, v25

    sub-float v25, v20, v19

    div-float v24, v24, v25

    .line 3595
    .local v24, "GY":F
    sub-float v25, v14, v24

    sub-float v25, v25, v23

    .line 3597
    .local v25, "RY":F
    div-float v26, v25, v3

    .line 3598
    .local v26, "RYRy":F
    div-float v27, v24, v7

    .line 3599
    .local v27, "GYGy":F
    div-float v28, v23, v11

    .line 3601
    .local v28, "BYBy":F
    const/16 v10, 0x9

    new-array v10, v10, [F

    mul-float v29, v26, v1

    aput v29, v10, v0

    aput v25, v10, v2

    sub-float v0, v14, v1

    sub-float/2addr v0, v3

    mul-float v0, v0, v26

    aput v0, v10, v4

    mul-float v0, v27, v5

    aput v0, v10, v6

    aput v24, v10, v8

    sub-float v0, v14, v5

    sub-float/2addr v0, v7

    mul-float v0, v0, v27

    const/4 v2, 0x5

    aput v0, v10, v2

    mul-float v0, v28, v9

    const/4 v2, 0x6

    aput v0, v10, v2

    const/4 v0, 0x7

    aput v23, v10, v0

    sub-float/2addr v14, v9

    sub-float/2addr v14, v11

    mul-float v14, v14, v28

    const/16 v0, 0x8

    aput v14, v10, v0

    return-object v10
.end method

.method private static greylist-max-o contains([F[F)Z
    .locals 13
    .param p0, "p1"    # [F
    .param p1, "p2"    # [F

    .line 3431
    const/4 v0, 0x6

    new-array v0, v0, [F

    const/4 v1, 0x0

    aget v2, p0, v1

    aget v3, p1, v1

    sub-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v2, 0x1

    aget v3, p0, v2

    aget v4, p1, v2

    sub-float/2addr v3, v4

    aput v3, v0, v2

    const/4 v3, 0x2

    aget v4, p0, v3

    aget v5, p1, v3

    sub-float/2addr v4, v5

    aput v4, v0, v3

    const/4 v4, 0x3

    aget v5, p0, v4

    aget v6, p1, v4

    sub-float/2addr v5, v6

    aput v5, v0, v4

    const/4 v5, 0x4

    aget v6, p0, v5

    aget v7, p1, v5

    sub-float/2addr v6, v7

    aput v6, v0, v5

    const/4 v6, 0x5

    aget v7, p0, v6

    aget v8, p1, v6

    sub-float/2addr v7, v8

    aput v7, v0, v6

    .line 3437
    .local v0, "p0":[F
    aget v7, v0, v1

    aget v8, v0, v2

    aget v9, p1, v1

    aget v10, p1, v5

    sub-float/2addr v9, v10

    aget v10, p1, v2

    aget v11, p1, v6

    sub-float/2addr v10, v11

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result v7

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_5

    aget v7, p1, v1

    aget v9, p1, v3

    sub-float/2addr v7, v9

    aget v9, p1, v2

    aget v10, p1, v4

    sub-float/2addr v9, v10

    aget v10, v0, v1

    aget v11, v0, v2

    .line 3438
    invoke-static {v7, v9, v10, v11}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result v7

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    goto :goto_2

    .line 3442
    :cond_0
    aget v7, v0, v3

    aget v9, v0, v4

    aget v10, p1, v3

    aget v11, p1, v1

    sub-float/2addr v10, v11

    aget v11, p1, v4

    aget v12, p1, v2

    sub-float/2addr v11, v12

    invoke-static {v7, v9, v10, v11}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result v7

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_4

    aget v7, p1, v3

    aget v9, p1, v5

    sub-float/2addr v7, v9

    aget v9, p1, v4

    aget v10, p1, v6

    sub-float/2addr v9, v10

    aget v10, v0, v3

    aget v11, v0, v4

    .line 3443
    invoke-static {v7, v9, v10, v11}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result v7

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    goto :goto_1

    .line 3447
    :cond_1
    aget v7, v0, v5

    aget v9, v0, v6

    aget v10, p1, v5

    aget v3, p1, v3

    sub-float/2addr v10, v3

    aget v3, p1, v6

    aget v4, p1, v4

    sub-float/2addr v3, v4

    invoke-static {v7, v9, v10, v3}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result v3

    cmpg-float v3, v3, v8

    if-ltz v3, :cond_3

    aget v3, p1, v5

    aget v4, p1, v1

    sub-float/2addr v3, v4

    aget v4, p1, v6

    aget v7, p1, v2

    sub-float/2addr v4, v7

    aget v5, v0, v5

    aget v6, v0, v6

    .line 3448
    invoke-static {v3, v4, v5, v6}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result v3

    cmpg-float v3, v3, v8

    if-gez v3, :cond_2

    goto :goto_0

    .line 3451
    :cond_2
    return v2

    .line 3449
    :cond_3
    :goto_0
    return v1

    .line 3444
    :cond_4
    :goto_1
    return v1

    .line 3439
    :cond_5
    :goto_2
    return v1
.end method

.method private static greylist-max-o cross(FFFF)F
    .locals 2
    .param p0, "ax"    # F
    .param p1, "ay"    # F
    .param p2, "bx"    # F
    .param p3, "by"    # F

    .line 3365
    mul-float v0, p0, p3

    mul-float v1, p1, p2

    sub-float/2addr v0, v1

    return v0
.end method

.method private static blacklist isGray([F)Z
    .locals 3
    .param p0, "toXYZ"    # [F

    .line 3302
    array-length v0, p0

    const/4 v1, 0x1

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    aget v0, p0, v1

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x2

    aget v0, p0, v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x3

    aget v0, p0, v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x5

    aget v0, p0, v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x6

    aget v0, p0, v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x7

    aget v0, p0, v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static greylist-max-o isSrgb([F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)Z
    .locals 7
    .param p0, "primaries"    # [F
    .param p1, "whitePoint"    # [F
    .param p2, "OETF"    # Ljava/util/function/DoubleUnaryOperator;
    .param p3, "EOTF"    # Ljava/util/function/DoubleUnaryOperator;
    .param p4, "min"    # F
    .param p5, "max"    # F
    .param p6, "id"    # I

    .line 3273
    const/4 v0, 0x1

    if-nez p6, :cond_0

    return v0

    .line 3274
    :cond_0
    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetSRGB_PRIMARIES()[F

    move-result-object v1

    invoke-static {p0, v1}, Landroid/graphics/ColorSpace;->-$$Nest$smcompare([F[F)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 3275
    return v2

    .line 3277
    :cond_1
    sget-object v1, Landroid/graphics/ColorSpace$Rgb;->ILLUMINANT_D65:[F

    invoke-static {p1, v1}, Landroid/graphics/ColorSpace;->-$$Nest$smcompare([F[F)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3278
    return v2

    .line 3281
    :cond_2
    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-eqz v1, :cond_3

    return v2

    .line 3282
    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p5, v1

    if-eqz v1, :cond_4

    return v2

    .line 3286
    :cond_4
    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace$Rgb;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorSpace$Rgb;

    .line 3288
    .local v1, "srgb":Landroid/graphics/ColorSpace$Rgb;
    const-wide/16 v3, 0x0

    .local v3, "x":D
    :goto_0
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v3, v5

    if-gtz v5, :cond_7

    .line 3289
    iget-object v5, v1, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    invoke-static {v3, v4, p2, v5}, Landroid/graphics/ColorSpace$Rgb;->compare(DLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)Z

    move-result v5

    if-nez v5, :cond_5

    return v2

    .line 3290
    :cond_5
    iget-object v5, v1, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    invoke-static {v3, v4, p3, v5}, Landroid/graphics/ColorSpace$Rgb;->compare(DLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)Z

    move-result v5

    if-nez v5, :cond_6

    return v2

    .line 3288
    :cond_6
    const-wide v5, 0x3f70101010101010L    # 0.00392156862745098

    add-double/2addr v3, v5

    goto :goto_0

    .line 3293
    .end local v3    # "x":D
    :cond_7
    return v0
.end method

.method private static greylist-max-o isWideGamut([FFF)Z
    .locals 2
    .param p0, "primaries"    # [F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 3330
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->area([F)F

    move-result v0

    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetNTSC_1953_PRIMARIES()[F

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/ColorSpace$Rgb;->area([F)F

    move-result v1

    div-float/2addr v0, v1

    const v1, 0x3f666666    # 0.9f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetSRGB_PRIMARIES()[F

    move-result-object v0

    .line 3331
    invoke-static {p0, v0}, Landroid/graphics/ColorSpace$Rgb;->contains([F[F)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 3330
    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$new$0(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .locals 12
    .param p0, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .param p1, "x"    # D

    .line 2557
    iget-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v8, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v10, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide v0, p1

    invoke-static/range {v0 .. v11}, Landroid/graphics/ColorSpace;->-$$Nest$smrcpResponse(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$new$1(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .locals 17
    .param p0, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .param p1, "x"    # D

    .line 2559
    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v5, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v7, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v9, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v11, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    iget-wide v13, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    iget-wide v1, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide v15, v1

    move-wide/from16 v1, p1

    invoke-static/range {v1 .. v16}, Landroid/graphics/ColorSpace;->-$$Nest$smrcpResponse(DDDDDDDD)D

    move-result-wide v1

    return-wide v1
.end method

.method static synthetic blacklist lambda$new$2(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .locals 12
    .param p0, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .param p1, "x"    # D

    .line 2562
    iget-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v8, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v10, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide v0, p1

    invoke-static/range {v0 .. v11}, Landroid/graphics/ColorSpace;->-$$Nest$smresponse(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$new$3(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .locals 17
    .param p0, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .param p1, "x"    # D

    .line 2564
    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v5, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v7, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v9, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v11, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    iget-wide v13, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    iget-wide v1, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide v15, v1

    move-wide/from16 v1, p1

    invoke-static/range {v1 .. v16}, Landroid/graphics/ColorSpace;->-$$Nest$smresponse(DDDDDDDD)D

    move-result-wide v1

    return-wide v1
.end method

.method static synthetic blacklist lambda$new$4(DD)D
    .locals 4
    .param p0, "gamma"    # D
    .param p2, "x"    # D

    .line 2683
    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, p2

    :goto_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$new$5(DD)D
    .locals 3
    .param p0, "gamma"    # D
    .param p2, "x"    # D

    .line 2685
    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, p2

    :goto_0
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static native blacklist nativeCreate(FFFFFFF[F)J
.end method

.method private static native blacklist nativeGetNativeFinalizer()J
.end method

.method private static greylist-max-o xyPrimaries([F)[F
    .locals 9
    .param p0, "primaries"    # [F

    .line 3509
    const/4 v0, 0x6

    new-array v1, v0, [F

    .line 3512
    .local v1, "xyPrimaries":[F
    array-length v2, p0

    const/4 v3, 0x0

    const/16 v4, 0x9

    if-ne v2, v4, :cond_0

    .line 3515
    aget v2, p0, v3

    const/4 v4, 0x1

    aget v5, p0, v4

    add-float/2addr v2, v5

    const/4 v5, 0x2

    aget v6, p0, v5

    add-float/2addr v2, v6

    .line 3516
    .local v2, "sum":F
    aget v6, p0, v3

    div-float/2addr v6, v2

    aput v6, v1, v3

    .line 3517
    aget v3, p0, v4

    div-float/2addr v3, v2

    aput v3, v1, v4

    .line 3519
    const/4 v3, 0x3

    aget v4, p0, v3

    const/4 v6, 0x4

    aget v7, p0, v6

    add-float/2addr v4, v7

    const/4 v7, 0x5

    aget v8, p0, v7

    add-float/2addr v4, v8

    .line 3520
    .end local v2    # "sum":F
    .local v4, "sum":F
    aget v2, p0, v3

    div-float/2addr v2, v4

    aput v2, v1, v5

    .line 3521
    aget v2, p0, v6

    div-float/2addr v2, v4

    aput v2, v1, v3

    .line 3523
    aget v2, p0, v0

    const/4 v3, 0x7

    aget v5, p0, v3

    add-float/2addr v2, v5

    const/16 v5, 0x8

    aget v5, p0, v5

    add-float/2addr v2, v5

    .line 3524
    .end local v4    # "sum":F
    .restart local v2    # "sum":F
    aget v0, p0, v0

    div-float/2addr v0, v2

    aput v0, v1, v6

    .line 3525
    aget v0, p0, v3

    div-float/2addr v0, v2

    aput v0, v1, v7

    .line 3526
    .end local v2    # "sum":F
    goto :goto_0

    .line 3527
    :cond_0
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3530
    :goto_0
    return-object v1
.end method

.method private static greylist-max-o xyWhitePoint([F)[F
    .locals 6
    .param p0, "whitePoint"    # [F

    .line 3544
    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 3547
    .local v1, "xyWhitePoint":[F
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 3548
    aget v2, p0, v3

    const/4 v4, 0x1

    aget v5, p0, v4

    add-float/2addr v2, v5

    aget v0, p0, v0

    add-float/2addr v2, v0

    .line 3549
    .local v2, "sum":F
    aget v0, p0, v3

    div-float/2addr v0, v2

    aput v0, v1, v3

    .line 3550
    aget v0, p0, v4

    div-float/2addr v0, v2

    aput v0, v1, v4

    .line 3551
    .end local v2    # "sum":F
    goto :goto_0

    .line 3552
    :cond_0
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3555
    :goto_0
    return-object v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 3213
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 3214
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 3215
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 3217
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/graphics/ColorSpace$Rgb;

    .line 3219
    .local v2, "rgb":Landroid/graphics/ColorSpace$Rgb;
    iget v3, v2, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    iget v4, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_3

    return v1

    .line 3220
    :cond_3
    iget v3, v2, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    iget v4, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_4

    return v1

    .line 3221
    :cond_4
    iget-object v3, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    iget-object v4, v2, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    .line 3222
    :cond_5
    iget-object v3, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object v4, v2, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-nez v3, :cond_6

    return v1

    .line 3223
    :cond_6
    iget-object v3, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-eqz v3, :cond_7

    .line 3224
    iget-object v0, v2, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-virtual {v3, v0}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 3225
    :cond_7
    iget-object v3, v2, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-nez v3, :cond_8

    .line 3226
    return v0

    .line 3229
    :cond_8
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    iget-object v3, v2, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return v1

    .line 3230
    :cond_9
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    iget-object v1, v2, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 3214
    .end local v2    # "rgb":Landroid/graphics/ColorSpace$Rgb;
    :cond_a
    :goto_0
    return v1
.end method

.method public whitelist fromLinear(FFF)[F
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .line 3157
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace$Rgb;->fromLinear([F)[F

    move-result-object v0

    return-object v0
.end method

.method public whitelist fromLinear([F)[F
    .locals 4
    .param p1, "v"    # [F

    .line 3180
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x0

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3181
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x1

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3182
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x2

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3183
    return-object p1
.end method

.method public whitelist fromXyz([F)[F
    .locals 4
    .param p1, "v"    # [F

    .line 3200
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    invoke-static {v0, p1}, Landroid/graphics/ColorSpace;->-$$Nest$smmul3x3Float3([F[F)[F

    .line 3201
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x0

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3202
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x1

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3203
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x2

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3204
    return-object p1
.end method

.method public whitelist getEotf()Ljava/util/function/DoubleUnaryOperator;
    .locals 1

    .line 3047
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    return-object v0
.end method

.method public whitelist getInverseTransform()[F
    .locals 2

    .line 2998
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInverseTransform([F)[F
    .locals 3
    .param p1, "inverseTransform"    # [F

    .line 2978
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2979
    return-object p1
.end method

.method public whitelist getMaxValue(I)F
    .locals 1
    .param p1, "component"    # I

    .line 3085
    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    return v0
.end method

.method public whitelist getMinValue(I)F
    .locals 1
    .param p1, "component"    # I

    .line 3080
    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    return v0
.end method

.method blacklist getNativeInstance()J
    .locals 4

    .line 2348
    iget-wide v0, p0, Landroid/graphics/ColorSpace$Rgb;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 2353
    return-wide v0

    .line 2350
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ColorSpace must use an ICC parametric transfer function! used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getOetf()Ljava/util/function/DoubleUnaryOperator;
    .locals 1

    .line 3023
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    return-object v0
.end method

.method public whitelist getPrimaries()[F
    .locals 2

    .line 2914
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPrimaries([F)[F
    .locals 3
    .param p1, "primaries"    # [F

    .line 2893
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2894
    return-object p1
.end method

.method public whitelist getTransferParameters()Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .locals 1

    .line 3065
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    return-object v0
.end method

.method public whitelist getTransform()[F
    .locals 2

    .line 2956
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTransform([F)[F
    .locals 3
    .param p1, "transform"    # [F

    .line 2936
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2937
    return-object p1
.end method

.method public whitelist getWhitePoint()[F
    .locals 2

    .line 2870
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public whitelist getWhitePoint([F)[F
    .locals 3
    .param p1, "whitePoint"    # [F

    .line 2852
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    aput v2, p1, v1

    .line 2853
    const/4 v1, 0x1

    aget v0, v0, v1

    aput v0, p1, v1

    .line 2854
    return-object p1
.end method

.method public whitelist test-api hashCode()I
    .locals 6

    .line 3235
    invoke-super {p0}, Landroid/graphics/ColorSpace;->hashCode()I

    move-result v0

    .line 3236
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v1, v2

    .line 3237
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v0, v2

    .line 3238
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    add-int/2addr v1, v2

    .line 3239
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    add-int/2addr v0, v2

    .line 3240
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    .line 3241
    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->hashCode()I

    move-result v5

    :cond_2
    add-int/2addr v1, v5

    .line 3242
    .end local v0    # "result":I
    .restart local v1    # "result":I
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-nez v0, :cond_3

    .line 3243
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 3244
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 3246
    .end local v0    # "result":I
    .restart local v1    # "result":I
    :cond_3
    return v1
.end method

.method public whitelist isSrgb()Z
    .locals 1

    .line 3070
    iget-boolean v0, p0, Landroid/graphics/ColorSpace$Rgb;->mIsSrgb:Z

    return v0
.end method

.method public whitelist isWideGamut()Z
    .locals 1

    .line 3075
    iget-boolean v0, p0, Landroid/graphics/ColorSpace$Rgb;->mIsWideGamut:Z

    return v0
.end method

.method public whitelist toLinear(FFF)[F
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .line 3108
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace$Rgb;->toLinear([F)[F

    move-result-object v0

    return-object v0
.end method

.method public whitelist toLinear([F)[F
    .locals 4
    .param p1, "v"    # [F

    .line 3131
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x0

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3132
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x1

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3133
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x2

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3134
    return-object p1
.end method

.method public whitelist toXyz([F)[F
    .locals 4
    .param p1, "v"    # [F

    .line 3190
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x0

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3191
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x1

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3192
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x2

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3193
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    invoke-static {v0, p1}, Landroid/graphics/ColorSpace;->-$$Nest$smmul3x3Float3([F[F)[F

    move-result-object v0

    return-object v0
.end method
