.class public Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;
.super Ljava/lang/Object;
.source "VariationalKMeansQuantizer.java"

# interfaces
.implements Lcom/android/internal/graphics/palette/Quantizer;


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "KMeansQuantizer"


# instance fields
.field private final blacklist mInitializations:I

.field private final blacklist mKMeans:Lcom/android/internal/ml/clustering/KMeans;

.field private final blacklist mMinClusterSqDistance:F

.field private blacklist mQuantizedColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 56
    const/high16 v0, 0x3e800000    # 0.25f

    invoke-direct {p0, v0}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;-><init>(F)V

    .line 57
    return-void
.end method

.method public constructor blacklist <init>(F)V
    .locals 1
    .param p1, "minClusterDistance"    # F

    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;-><init>(FI)V

    .line 61
    return-void
.end method

.method public constructor blacklist <init>(FI)V
    .locals 4
    .param p1, "minClusterDistance"    # F
    .param p2, "initializations"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/internal/ml/clustering/KMeans;

    new-instance v1, Ljava/util/Random;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/ml/clustering/KMeans;-><init>(Ljava/util/Random;IF)V

    iput-object v0, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mKMeans:Lcom/android/internal/ml/clustering/KMeans;

    .line 64
    mul-float v0, p1, p1

    iput v0, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mMinClusterSqDistance:F

    .line 65
    iput p2, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mInitializations:I

    .line 66
    return-void
.end method

.method private blacklist getOptimalKMeans(I[[F)Ljava/util/List;
    .locals 8
    .param p1, "k"    # I
    .param p2, "inputData"    # [[F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[[F)",
            "Ljava/util/List<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;"
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "optimal":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/ml/clustering/KMeans$Mean;>;"
    const-wide v1, -0x10000000000001L

    .line 131
    .local v1, "optimalScore":D
    iget v3, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mInitializations:I

    .line 132
    .local v3, "runs":I
    :goto_0
    if-lez v3, :cond_2

    .line 136
    iget-object v4, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mKMeans:Lcom/android/internal/ml/clustering/KMeans;

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/ml/clustering/KMeans;->predict(I[[F)Ljava/util/List;

    move-result-object v4

    .line 137
    .local v4, "means":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/ml/clustering/KMeans$Mean;>;"
    invoke-static {v4}, Lcom/android/internal/ml/clustering/KMeans;->score(Ljava/util/List;)D

    move-result-wide v5

    .line 138
    .local v5, "score":D
    if-eqz v0, :cond_0

    cmpl-double v7, v5, v1

    if-lez v7, :cond_1

    .line 142
    :cond_0
    move-wide v1, v5

    .line 143
    move-object v0, v4

    .line 145
    :cond_1
    nop

    .end local v4    # "means":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/ml/clustering/KMeans$Mean;>;"
    .end local v5    # "score":D
    add-int/lit8 v3, v3, -0x1

    .line 146
    goto :goto_0

    .line 148
    :cond_2
    return-object v0
.end method


# virtual methods
.method public blacklist getQuantizedColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mQuantizedColors:Ljava/util/List;

    return-object v0
.end method

.method public blacklist quantize([II)V
    .locals 23
    .param p1, "pixels"    # [I
    .param p2, "maxColors"    # I

    .line 78
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x3

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    .line 79
    .local v3, "hsl":[F
    array-length v4, v1

    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v7, 0x1

    aput v2, v6, v7

    const/4 v8, 0x0

    aput v4, v6, v8

    const-class v4, F

    invoke-static {v4, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    .line 80
    .local v4, "hslPixels":[[F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v9, v1

    const/high16 v10, 0x43b40000    # 360.0f

    if-ge v6, v9, :cond_0

    .line 81
    aget v9, v1, v6

    invoke-static {v9, v3}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 83
    aget-object v9, v4, v6

    aget v11, v3, v8

    div-float/2addr v11, v10

    aput v11, v9, v8

    .line 84
    aget-object v9, v4, v6

    aget v10, v3, v7

    aput v10, v9, v7

    .line 85
    aget-object v9, v4, v6

    aget v10, v3, v5

    aput v10, v9, v5

    .line 80
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 88
    .end local v6    # "i":I
    :cond_0
    move/from16 v6, p2

    invoke-direct {v0, v6, v4}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->getOptimalKMeans(I[[F)Ljava/util/List;

    move-result-object v9

    .line 92
    .local v9, "optimalMeans":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/ml/clustering/KMeans$Mean;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_4

    .line 93
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 94
    .local v12, "current":Lcom/android/internal/ml/clustering/KMeans$Mean;
    invoke-virtual {v12}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getCentroid()[F

    move-result-object v13

    .line 95
    .local v13, "currentCentroid":[F
    add-int/lit8 v14, v11, 0x1

    .local v14, "j":I
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_3

    .line 96
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 97
    .local v15, "compareTo":Lcom/android/internal/ml/clustering/KMeans$Mean;
    invoke-virtual {v15}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getCentroid()[F

    move-result-object v5

    .line 98
    .local v5, "compareToCentroid":[F
    invoke-static {v13, v5}, Lcom/android/internal/ml/clustering/KMeans;->sqDistance([F[F)F

    move-result v17

    .line 100
    .local v17, "sqDistance":F
    iget v10, v0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mMinClusterSqDistance:F

    cmpg-float v10, v17, v10

    if-gez v10, :cond_2

    .line 101
    invoke-interface {v9, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {v12}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v15}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_3
    array-length v10, v13

    if-ge v8, v10, :cond_1

    .line 104
    aget v10, v13, v8

    move-object/from16 v18, v3

    .end local v3    # "hsl":[F
    .local v18, "hsl":[F
    float-to-double v2, v10

    aget v10, v5, v8

    aget v19, v13, v8

    sub-float v10, v10, v19

    move/from16 v20, v8

    .end local v8    # "k":I
    .local v20, "k":I
    float-to-double v7, v10

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    div-double v7, v7, v21

    add-double/2addr v2, v7

    double-to-float v2, v2

    aput v2, v13, v20

    .line 103
    add-int/lit8 v8, v20, 0x1

    move-object/from16 v3, v18

    const/4 v2, 0x3

    const/4 v7, 0x1

    .end local v20    # "k":I
    .restart local v8    # "k":I
    goto :goto_3

    .end local v18    # "hsl":[F
    .restart local v3    # "hsl":[F
    :cond_1
    move-object/from16 v18, v3

    move/from16 v20, v8

    .line 106
    .end local v3    # "hsl":[F
    .end local v8    # "k":I
    .restart local v18    # "hsl":[F
    add-int/lit8 v14, v14, -0x1

    goto :goto_4

    .line 100
    .end local v18    # "hsl":[F
    .restart local v3    # "hsl":[F
    :cond_2
    move-object/from16 v18, v3

    .line 95
    .end local v3    # "hsl":[F
    .end local v5    # "compareToCentroid":[F
    .end local v15    # "compareTo":Lcom/android/internal/ml/clustering/KMeans$Mean;
    .end local v17    # "sqDistance":F
    .restart local v18    # "hsl":[F
    :goto_4
    const/4 v2, 0x1

    add-int/2addr v14, v2

    move v7, v2

    move-object/from16 v3, v18

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/high16 v10, 0x43b40000    # 360.0f

    goto :goto_2

    .end local v18    # "hsl":[F
    .restart local v3    # "hsl":[F
    :cond_3
    move-object/from16 v18, v3

    .line 92
    .end local v3    # "hsl":[F
    .end local v12    # "current":Lcom/android/internal/ml/clustering/KMeans$Mean;
    .end local v13    # "currentCentroid":[F
    .end local v14    # "j":I
    .restart local v18    # "hsl":[F
    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/high16 v10, 0x43b40000    # 360.0f

    goto :goto_1

    .end local v18    # "hsl":[F
    .restart local v3    # "hsl":[F
    :cond_4
    move-object/from16 v18, v3

    .line 112
    .end local v3    # "hsl":[F
    .end local v11    # "i":I
    .restart local v18    # "hsl":[F
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 113
    const/4 v2, 0x3

    new-array v2, v2, [F

    .line 114
    .local v2, "mHsl":[F
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 115
    .local v5, "mean":Lcom/android/internal/ml/clustering/KMeans$Mean;
    invoke-virtual {v5}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_5

    .line 116
    goto :goto_5

    .line 118
    :cond_5
    invoke-virtual {v5}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getCentroid()[F

    move-result-object v7

    .line 120
    .local v7, "centroid":[F
    const/4 v8, 0x0

    aget v10, v7, v8

    const/high16 v11, 0x43b40000    # 360.0f

    mul-float/2addr v10, v11

    aput v10, v2, v8

    .line 121
    const/4 v10, 0x1

    aget v12, v7, v10

    aput v12, v2, v10

    .line 122
    const/4 v12, 0x2

    aget v13, v7, v12

    aput v13, v2, v12

    .line 123
    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v13

    .line 124
    .local v13, "color":I
    iget-object v14, v0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mQuantizedColors:Ljava/util/List;

    new-instance v15, Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-virtual {v5}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v15, v13, v8}, Lcom/android/internal/graphics/palette/Palette$Swatch;-><init>(II)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v5    # "mean":Lcom/android/internal/ml/clustering/KMeans$Mean;
    .end local v7    # "centroid":[F
    .end local v13    # "color":I
    goto :goto_5

    .line 126
    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method
