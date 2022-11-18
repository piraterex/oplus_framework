.class public Landroid/hardware/camera2/utils/SurfaceUtils;
.super Ljava/lang/Object;
.source "SurfaceUtils.java"


# static fields
.field private static final blacklist BAD_VALUE:I

.field private static final blacklist BGRA_8888:I = 0x5

.field private static final blacklist USAGE_HW_COMPOSER:I = 0x800

.field private static final blacklist USAGE_RENDERSCRIPT:I = 0x100000


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 54
    sget v0, Landroid/system/OsConstants;->EINVAL:I

    neg-int v0, v0

    sput v0, Landroid/hardware/camera2/utils/SurfaceUtils;->BAD_VALUE:I

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o checkConstrainedHighSpeedSurfaces(Ljava/util/Collection;Landroid/util/Range;Landroid/hardware/camera2/params/StreamConfigurationMap;)V
    .locals 8
    .param p2, "config"    # Landroid/hardware/camera2/params/StreamConfigurationMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            ")V"
        }
    .end annotation

    .line 249
    .local p0, "surfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    .local p1, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_c

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_c

    .line 256
    sget-object v0, Landroid/hardware/camera2/utils/SurfaceUtilsExtPlugin;->getInstance:Lcom/oplus/reflect/RefStaticMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/oplus/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/utils/ISurfaceUtilsExt;

    .line 258
    .local v0, "mSurfaceUtilsExt":Landroid/hardware/camera2/utils/ISurfaceUtilsExt;
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/hardware/camera2/utils/SurfaceUtils;->isPrivilegedApp()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-interface {v0}, Landroid/hardware/camera2/utils/ISurfaceUtilsExt;->extendSession()Z

    move-result v3

    if-nez v3, :cond_b

    .line 261
    invoke-interface {v0, v2}, Landroid/hardware/camera2/utils/ISurfaceUtilsExt;->isPrivilegedApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_5

    .line 270
    :cond_0
    const/4 v3, 0x0

    .line 272
    .local v3, "highSpeedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-nez p1, :cond_1

    .line 273
    invoke-virtual {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizes()[Landroid/util/Size;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRanges()[Landroid/util/Range;

    move-result-object v4

    .line 277
    .local v4, "highSpeedFpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 282
    invoke-virtual {p2, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizesFor(Landroid/util/Range;)[Landroid/util/Size;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 285
    .end local v4    # "highSpeedFpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    .line 286
    .local v5, "surface":Landroid/view/Surface;
    invoke-static {v5}, Landroid/hardware/camera2/utils/SurfaceUtils;->checkHighSpeedSurfaceFormat(Landroid/view/Surface;)V

    .line 289
    invoke-static {v5}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v6

    .line 290
    .local v6, "surfaceSize":Landroid/util/Size;
    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 296
    invoke-static {v5}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForPreview(Landroid/view/Surface;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 297
    invoke-static {v5}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    .line 298
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "This output surface is neither preview nor hardware video encoding surface"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    :cond_3
    :goto_2
    invoke-static {v5}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForPreview(Landroid/view/Surface;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 302
    invoke-static {v5}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_3

    .line 303
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "This output surface can not be both preview and hardware video encoding surface"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
    .end local v5    # "surface":Landroid/view/Surface;
    .end local v6    # "surfaceSize":Landroid/util/Size;
    :cond_5
    :goto_3
    goto :goto_1

    .line 291
    .restart local v5    # "surface":Landroid/view/Surface;
    .restart local v6    # "surfaceSize":Landroid/util/Size;
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Surface size "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " is not part of the high speed supported size list "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 293
    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    .end local v5    # "surface":Landroid/view/Surface;
    .end local v6    # "surfaceSize":Landroid/util/Size;
    :cond_7
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    if-ne v4, v1, :cond_9

    .line 311
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 312
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/Surface;>;"
    nop

    .line 313
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    invoke-static {v4}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForPreview(Landroid/view/Surface;)Z

    move-result v4

    .line 314
    .local v4, "isFirstSurfacePreview":Z
    nop

    .line 315
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    invoke-static {v5}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForPreview(Landroid/view/Surface;)Z

    move-result v5

    .line 316
    .local v5, "isSecondSurfacePreview":Z
    if-eq v4, v5, :cond_8

    goto :goto_4

    .line 317
    :cond_8
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "The 2 output surfaces must have different type"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 321
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/Surface;>;"
    .end local v4    # "isFirstSurfacePreview":Z
    .end local v5    # "isSecondSurfacePreview":Z
    :cond_9
    :goto_4
    return-void

    .line 278
    .local v4, "highSpeedFpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fps range "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in the request is not a supported high speed fps range "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 280
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 267
    .end local v3    # "highSpeedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v4    # "highSpeedFpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_b
    :goto_5
    return-void

    .line 250
    .end local v0    # "mSurfaceUtilsExt":Landroid/hardware/camera2/utils/ISurfaceUtilsExt;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output target surface list must not be null and the size must be 1 or 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkHighSpeedSurfaceFormat(Landroid/view/Surface;)V
    .locals 4
    .param p0, "surface"    # Landroid/view/Surface;

    .line 231
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v0

    .line 233
    .local v0, "surfaceFormat":I
    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 237
    return-void

    .line 234
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Surface format("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not for preview or hardware video encoding!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist detectSurfaceFormat(Landroid/view/Surface;)I
    .locals 3
    .param p0, "surface"    # Landroid/view/Surface;

    .line 182
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceType(Landroid/view/Surface;)I

    move-result v0

    .line 184
    .local v0, "surfaceType":I
    sget v1, Landroid/hardware/camera2/utils/SurfaceUtils;->BAD_VALUE:I

    if-eq v0, v1, :cond_0

    .line 186
    return v0

    .line 184
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface was abandoned"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static greylist-max-o getSurfaceDataspace(Landroid/view/Surface;)I
    .locals 3
    .param p0, "surface"    # Landroid/view/Surface;

    .line 198
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceDataspace(Landroid/view/Surface;)I

    move-result v0

    .line 200
    .local v0, "dataSpace":I
    sget v1, Landroid/hardware/camera2/utils/SurfaceUtils;->BAD_VALUE:I

    if-eq v0, v1, :cond_0

    .line 201
    return v0

    .line 200
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface was abandoned"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static greylist-max-o getSurfaceFormat(Landroid/view/Surface;)I
    .locals 3
    .param p0, "surface"    # Landroid/view/Surface;

    .line 159
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceType(Landroid/view/Surface;)I

    move-result v0

    .line 161
    .local v0, "surfaceType":I
    sget v1, Landroid/hardware/camera2/utils/SurfaceUtils;->BAD_VALUE:I

    if-eq v0, v1, :cond_1

    .line 165
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 167
    const/16 v0, 0x22

    .line 169
    :cond_0
    return v0

    .line 161
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface was abandoned"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static greylist-max-o getSurfaceId(Landroid/view/Surface;)J
    .locals 3
    .param p0, "surface"    # Landroid/view/Surface;

    .line 109
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :try_start_0
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeGetSurfaceId(Landroid/view/Surface;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public static greylist getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;
    .locals 5
    .param p0, "surface"    # Landroid/view/Surface;

    .line 141
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 144
    .local v0, "dimens":[I
    invoke-static {p0, v0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceDimens(Landroid/view/Surface;[I)I

    move-result v1

    .line 145
    .local v1, "errorFlag":I
    sget v2, Landroid/hardware/camera2/utils/SurfaceUtils;->BAD_VALUE:I

    if-eq v1, v2, :cond_0

    .line 147
    new-instance v2, Landroid/util/Size;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    return-object v2

    .line 145
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Surface was abandoned"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist getSurfaceUsage(Landroid/view/Surface;)J
    .locals 3
    .param p0, "surface"    # Landroid/view/Surface;

    .line 124
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :try_start_0
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceUsageFlags(Landroid/view/Surface;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public static greylist-max-o isFlexibleConsumer(Landroid/view/Surface;)Z
    .locals 10
    .param p0, "output"    # Landroid/view/Surface;

    .line 210
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceUsageFlags(Landroid/view/Surface;)J

    move-result-wide v0

    .line 215
    .local v0, "usageFlags":J
    const-wide/32 v2, 0x110000

    .line 216
    .local v2, "disallowedFlags":J
    const-wide/16 v4, 0x903

    .line 219
    .local v4, "allowedFlags":J
    and-long v6, v0, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    and-long v6, v0, v4

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 221
    .local v6, "flexibleConsumer":Z
    :goto_0
    return v6
.end method

.method private static blacklist isPrivilegedApp()Z
    .locals 6

    .line 336
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "packageName":Ljava/lang/String;
    const-string/jumbo v1, "persist.camera.privapp.list"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "packageList":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 340
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 341
    .local v2, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v2, v1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 342
    invoke-interface {v2}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 343
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 344
    const/4 v3, 0x1

    return v3

    .line 346
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 349
    .end local v2    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static greylist-max-o isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z
    .locals 10
    .param p0, "surface"    # Landroid/view/Surface;

    .line 84
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceUsageFlags(Landroid/view/Surface;)J

    move-result-wide v0

    .line 90
    .local v0, "usageFlags":J
    const-wide/32 v2, 0x100803

    .line 93
    .local v2, "disallowedFlags":J
    const-wide/32 v4, 0x10000

    .line 94
    .local v4, "allowedFlags":J
    and-long v6, v0, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    and-long v6, v0, v4

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 97
    .local v6, "videoEncoderConsumer":Z
    :goto_0
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v7

    .line 99
    .local v7, "surfaceFormat":I
    return v6
.end method

.method public static greylist-max-o isSurfaceForPreview(Landroid/view/Surface;)Z
    .locals 10
    .param p0, "surface"    # Landroid/view/Surface;

    .line 63
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceUsageFlags(Landroid/view/Surface;)J

    move-result-wide v0

    .line 65
    .local v0, "usageFlags":J
    const-wide/32 v2, 0x110003

    .line 67
    .local v2, "disallowedFlags":J
    const-wide/16 v4, 0xb00

    .line 69
    .local v4, "allowedFlags":J
    and-long v6, v0, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    and-long v6, v0, v4

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 71
    .local v6, "previewConsumer":Z
    :goto_0
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v7

    .line 73
    .local v7, "surfaceFormat":I
    return v6
.end method

.method private static native blacklist nativeDetectSurfaceDataspace(Landroid/view/Surface;)I
.end method

.method private static native blacklist nativeDetectSurfaceDimens(Landroid/view/Surface;[I)I
.end method

.method private static native blacklist nativeDetectSurfaceType(Landroid/view/Surface;)I
.end method

.method private static native blacklist nativeDetectSurfaceUsageFlags(Landroid/view/Surface;)J
.end method

.method private static native blacklist nativeGetSurfaceId(Landroid/view/Surface;)J
.end method
