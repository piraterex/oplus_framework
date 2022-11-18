.class public Landroid/view/DisplayCutout$CutoutPathParserInfo;
.super Ljava/lang/Object;
.source "DisplayCutout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayCutout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CutoutPathParserInfo"
.end annotation


# instance fields
.field private final blacklist mCutoutSpec:Ljava/lang/String;

.field private final blacklist mDensity:F

.field private final blacklist mDisplayHeight:I

.field private final blacklist mDisplayWidth:I

.field private final blacklist mPhysicalDisplayHeight:I

.field private final blacklist mPhysicalDisplayWidth:I

.field private final blacklist mPhysicalPixelDisplaySizeRatio:F

.field private final blacklist mRotation:I

.field private final blacklist mScale:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$mhasCutout(Landroid/view/DisplayCutout$CutoutPathParserInfo;)Z
    .locals 0

    invoke-direct {p0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->hasCutout()Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(IIIIFLjava/lang/String;IFF)V
    .locals 1
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "physicalDisplayWidth"    # I
    .param p4, "physicalDisplayHeight"    # I
    .param p5, "density"    # F
    .param p6, "cutoutSpec"    # Ljava/lang/String;
    .param p7, "rotation"    # I
    .param p8, "scale"    # F
    .param p9, "physicalPixelDisplaySizeRatio"    # F

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput p1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayWidth:I

    .line 280
    iput p2, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayHeight:I

    .line 281
    iput p3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayWidth:I

    .line 282
    iput p4, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayHeight:I

    .line 283
    iput p5, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDensity:F

    .line 284
    if-nez p6, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p6

    :goto_0
    iput-object v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mCutoutSpec:Ljava/lang/String;

    .line 285
    iput p7, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mRotation:I

    .line 286
    iput p8, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mScale:F

    .line 287
    iput p9, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalPixelDisplaySizeRatio:F

    .line 288
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/DisplayCutout$CutoutPathParserInfo;)V
    .locals 1
    .param p1, "cutoutPathParserInfo"    # Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iget v0, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayWidth:I

    iput v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayWidth:I

    .line 292
    iget v0, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayHeight:I

    iput v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayHeight:I

    .line 293
    iget v0, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayWidth:I

    iput v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayWidth:I

    .line 294
    iget v0, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayHeight:I

    iput v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayHeight:I

    .line 295
    iget v0, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDensity:F

    iput v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDensity:F

    .line 296
    iget-object v0, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mCutoutSpec:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mCutoutSpec:Ljava/lang/String;

    .line 297
    iget v0, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mRotation:I

    iput v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mRotation:I

    .line 298
    iget v0, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mScale:F

    iput v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mScale:F

    .line 299
    iget v0, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalPixelDisplaySizeRatio:F

    iput v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalPixelDisplaySizeRatio:F

    .line 300
    return-void
.end method

.method private blacklist hasCutout()Z
    .locals 1

    .line 339
    iget-object v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mCutoutSpec:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 359
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 360
    return v0

    .line 362
    :cond_0
    instance-of v1, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 363
    move-object v1, p1

    check-cast v1, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 364
    .local v1, "c":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    iget v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayWidth:I

    iget v4, v1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayWidth:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayHeight:I

    iget v4, v1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayHeight:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayWidth:I

    iget v4, v1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayWidth:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayHeight:I

    iget v4, v1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayHeight:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDensity:F

    iget v4, v1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDensity:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mCutoutSpec:Ljava/lang/String;

    iget-object v4, v1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mCutoutSpec:Ljava/lang/String;

    .line 367
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mRotation:I

    iget v4, v1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mRotation:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mScale:F

    iget v4, v1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mScale:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalPixelDisplaySizeRatio:F

    iget v4, v1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalPixelDisplaySizeRatio:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 364
    :goto_0
    return v0

    .line 371
    .end local v1    # "c":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    :cond_2
    return v2
.end method

.method public blacklist getCutoutSpec()Ljava/lang/String;
    .locals 1

    .line 323
    iget-object v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mCutoutSpec:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDensity()F
    .locals 1

    .line 319
    iget v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDensity:F

    return v0
.end method

.method public blacklist getDisplayHeight()I
    .locals 1

    .line 307
    iget v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayHeight:I

    return v0
.end method

.method public blacklist getDisplayWidth()I
    .locals 1

    .line 303
    iget v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayWidth:I

    return v0
.end method

.method public blacklist getPhysicalDisplayHeight()I
    .locals 1

    .line 315
    iget v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayHeight:I

    return v0
.end method

.method public blacklist getPhysicalDisplayWidth()I
    .locals 1

    .line 311
    iget v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayWidth:I

    return v0
.end method

.method public blacklist getPhysicalPixelDisplaySizeRatio()F
    .locals 1

    .line 335
    iget v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalPixelDisplaySizeRatio:F

    return v0
.end method

.method public blacklist getRotation()I
    .locals 1

    .line 327
    iget v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mRotation:I

    return v0
.end method

.method public blacklist getScale()F
    .locals 1

    .line 331
    iget v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mScale:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, "result":I
    const v1, 0xbc8f

    mul-int v2, v0, v1

    iget v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->hashCode(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 346
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v2, v1

    iget v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->hashCode(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 347
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v0, v1

    iget v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDensity:F

    invoke-static {v3}, Ljava/lang/Float;->hashCode(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 348
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v2, v1

    iget-object v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mCutoutSpec:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 349
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v0, v1

    iget v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mRotation:I

    invoke-static {v3}, Ljava/lang/Integer;->hashCode(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 350
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v2, v1

    iget v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mScale:F

    invoke-static {v3}, Ljava/lang/Float;->hashCode(F)I

    move-result v3

    add-int/2addr v0, v3

    .line 351
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v0, v1

    iget v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalPixelDisplaySizeRatio:F

    invoke-static {v3}, Ljava/lang/Float;->hashCode(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 352
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v2, v1

    iget v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->hashCode(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 353
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/2addr v1, v0

    iget v2, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 354
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CutoutPathParserInfo{displayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " displayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " physicalDisplayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " physicalDisplayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " density={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} cutoutSpec={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mCutoutSpec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} rotation={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} scale={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} physicalPixelDisplaySizeRatio={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalPixelDisplaySizeRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
