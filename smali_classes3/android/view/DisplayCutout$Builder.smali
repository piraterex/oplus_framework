.class public final Landroid/view/DisplayCutout$Builder;
.super Ljava/lang/Object;
.source "DisplayCutout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayCutout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mBoundingRectBottom:Landroid/graphics/Rect;

.field private final blacklist mBoundingRectLeft:Landroid/graphics/Rect;

.field private final blacklist mBoundingRectRight:Landroid/graphics/Rect;

.field private final blacklist mBoundingRectTop:Landroid/graphics/Rect;

.field private blacklist mCutoutPath:Landroid/graphics/Path;

.field private blacklist mSafeInsets:Landroid/graphics/Insets;

.field private blacklist mWaterfallInsets:Landroid/graphics/Insets;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 1437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1426
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/DisplayCutout$Builder;->mSafeInsets:Landroid/graphics/Insets;

    .line 1427
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/DisplayCutout$Builder;->mWaterfallInsets:Landroid/graphics/Insets;

    .line 1429
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectLeft:Landroid/graphics/Rect;

    .line 1430
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectTop:Landroid/graphics/Rect;

    .line 1431
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectRight:Landroid/graphics/Rect;

    .line 1432
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectBottom:Landroid/graphics/Rect;

    .line 1438
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/DisplayCutout;
    .locals 12

    .line 1446
    iget-object v0, p0, Landroid/view/DisplayCutout$Builder;->mCutoutPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 1449
    new-instance v0, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "test"

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Landroid/view/DisplayCutout$CutoutPathParserInfo;-><init>(IIIIFLjava/lang/String;IFF)V

    .line 1450
    .local v0, "info":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    invoke-static {}, Landroid/view/DisplayCutout;->-$$Nest$sfgetCACHE_LOCK()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1451
    :try_start_0
    invoke-static {v0}, Landroid/view/DisplayCutout;->-$$Nest$sfputsCachedCutoutPathParserInfo(Landroid/view/DisplayCutout$CutoutPathParserInfo;)V

    .line 1452
    iget-object v2, p0, Landroid/view/DisplayCutout$Builder;->mCutoutPath:Landroid/graphics/Path;

    invoke-static {v2}, Landroid/view/DisplayCutout;->-$$Nest$sfputsCachedCutoutPath(Landroid/graphics/Path;)V

    .line 1453
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1455
    .end local v0    # "info":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    :cond_0
    const/4 v0, 0x0

    .line 1457
    .restart local v0    # "info":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    :goto_0
    new-instance v11, Landroid/view/DisplayCutout;

    iget-object v1, p0, Landroid/view/DisplayCutout$Builder;->mSafeInsets:Landroid/graphics/Insets;

    invoke-virtual {v1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Landroid/view/DisplayCutout$Builder;->mWaterfallInsets:Landroid/graphics/Insets;

    iget-object v4, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectLeft:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectTop:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectRight:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectBottom:Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v11

    move-object v8, v0

    invoke-direct/range {v1 .. v10}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;ZLandroid/view/DisplayCutout-IA;)V

    return-object v11
.end method

.method public whitelist setBoundingRectBottom(Landroid/graphics/Rect;)Landroid/view/DisplayCutout$Builder;
    .locals 1
    .param p1, "boundingRectBottom"    # Landroid/graphics/Rect;

    .line 1517
    iget-object v0, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectBottom:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1518
    return-object p0
.end method

.method public whitelist setBoundingRectLeft(Landroid/graphics/Rect;)Landroid/view/DisplayCutout$Builder;
    .locals 1
    .param p1, "boundingRectLeft"    # Landroid/graphics/Rect;

    .line 1487
    iget-object v0, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectLeft:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1488
    return-object p0
.end method

.method public whitelist setBoundingRectRight(Landroid/graphics/Rect;)Landroid/view/DisplayCutout$Builder;
    .locals 1
    .param p1, "boundingRectRight"    # Landroid/graphics/Rect;

    .line 1507
    iget-object v0, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectRight:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1508
    return-object p0
.end method

.method public whitelist setBoundingRectTop(Landroid/graphics/Rect;)Landroid/view/DisplayCutout$Builder;
    .locals 1
    .param p1, "boundingRectTop"    # Landroid/graphics/Rect;

    .line 1497
    iget-object v0, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectTop:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1498
    return-object p0
.end method

.method public whitelist setCutoutPath(Landroid/graphics/Path;)Landroid/view/DisplayCutout$Builder;
    .locals 0
    .param p1, "cutoutPath"    # Landroid/graphics/Path;

    .line 1529
    iput-object p1, p0, Landroid/view/DisplayCutout$Builder;->mCutoutPath:Landroid/graphics/Path;

    .line 1530
    return-object p0
.end method

.method public whitelist setSafeInsets(Landroid/graphics/Insets;)Landroid/view/DisplayCutout$Builder;
    .locals 0
    .param p1, "safeInsets"    # Landroid/graphics/Insets;

    .line 1467
    iput-object p1, p0, Landroid/view/DisplayCutout$Builder;->mSafeInsets:Landroid/graphics/Insets;

    .line 1468
    return-object p0
.end method

.method public whitelist setWaterfallInsets(Landroid/graphics/Insets;)Landroid/view/DisplayCutout$Builder;
    .locals 0
    .param p1, "waterfallInsets"    # Landroid/graphics/Insets;

    .line 1477
    iput-object p1, p0, Landroid/view/DisplayCutout$Builder;->mWaterfallInsets:Landroid/graphics/Insets;

    .line 1478
    return-object p0
.end method
