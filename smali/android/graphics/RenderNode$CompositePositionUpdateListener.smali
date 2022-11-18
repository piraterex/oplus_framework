.class final Landroid/graphics/RenderNode$CompositePositionUpdateListener;
.super Ljava/lang/Object;
.source "RenderNode.java"

# interfaces
.implements Landroid/graphics/RenderNode$PositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/RenderNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CompositePositionUpdateListener"
.end annotation


# static fields
.field private static final blacklist sEmpty:[Landroid/graphics/RenderNode$PositionUpdateListener;


# instance fields
.field private final blacklist mListeners:[Landroid/graphics/RenderNode$PositionUpdateListener;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 353
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/graphics/RenderNode$PositionUpdateListener;

    sput-object v0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->sEmpty:[Landroid/graphics/RenderNode$PositionUpdateListener;

    return-void
.end method

.method varargs constructor blacklist <init>([Landroid/graphics/RenderNode$PositionUpdateListener;)V
    .locals 1
    .param p1, "listeners"    # [Landroid/graphics/RenderNode$PositionUpdateListener;

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->sEmpty:[Landroid/graphics/RenderNode$PositionUpdateListener;

    :goto_0
    iput-object v0, p0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->mListeners:[Landroid/graphics/RenderNode$PositionUpdateListener;

    .line 357
    return-void
.end method


# virtual methods
.method public blacklist applyStretch(JFFFFFFFFFF)V
    .locals 18
    .param p1, "frameNumber"    # J
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "vecX"    # F
    .param p6, "vecY"    # F
    .param p7, "maxStretchX"    # F
    .param p8, "maxStretchY"    # F
    .param p9, "childRelativeLeft"    # F
    .param p10, "childRelativeTop"    # F
    .param p11, "childRelativeRight"    # F
    .param p12, "childRelativeBottom"    # F

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->mListeners:[Landroid/graphics/RenderNode$PositionUpdateListener;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v17, v1, v3

    .line 388
    .local v17, "pul":Landroid/graphics/RenderNode$PositionUpdateListener;
    move-object/from16 v4, v17

    move-wide/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    invoke-interface/range {v4 .. v16}, Landroid/graphics/RenderNode$PositionUpdateListener;->applyStretch(JFFFFFFFFFF)V

    .line 387
    .end local v17    # "pul":Landroid/graphics/RenderNode$PositionUpdateListener;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 392
    :cond_0
    return-void
.end method

.method public blacklist positionChanged(JIIII)V
    .locals 12
    .param p1, "frameNumber"    # J
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .line 371
    move-object v0, p0

    iget-object v1, v0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->mListeners:[Landroid/graphics/RenderNode$PositionUpdateListener;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v11, v1, v3

    .line 372
    .local v11, "pul":Landroid/graphics/RenderNode$PositionUpdateListener;
    move-object v4, v11

    move-wide v5, p1

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-interface/range {v4 .. v10}, Landroid/graphics/RenderNode$PositionUpdateListener;->positionChanged(JIIII)V

    .line 371
    .end local v11    # "pul":Landroid/graphics/RenderNode$PositionUpdateListener;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 374
    :cond_0
    return-void
.end method

.method public blacklist positionLost(J)V
    .locals 4
    .param p1, "frameNumber"    # J

    .line 378
    iget-object v0, p0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->mListeners:[Landroid/graphics/RenderNode$PositionUpdateListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 379
    .local v3, "pul":Landroid/graphics/RenderNode$PositionUpdateListener;
    invoke-interface {v3, p1, p2}, Landroid/graphics/RenderNode$PositionUpdateListener;->positionLost(J)V

    .line 378
    .end local v3    # "pul":Landroid/graphics/RenderNode$PositionUpdateListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 381
    :cond_0
    return-void
.end method

.method public blacklist with(Landroid/graphics/RenderNode$PositionUpdateListener;)Landroid/graphics/RenderNode$CompositePositionUpdateListener;
    .locals 3
    .param p1, "listener"    # Landroid/graphics/RenderNode$PositionUpdateListener;

    .line 360
    new-instance v0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;

    const-class v1, Landroid/graphics/RenderNode$PositionUpdateListener;

    iget-object v2, p0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->mListeners:[Landroid/graphics/RenderNode$PositionUpdateListener;

    .line 361
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/RenderNode$PositionUpdateListener;

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode$CompositePositionUpdateListener;-><init>([Landroid/graphics/RenderNode$PositionUpdateListener;)V

    .line 360
    return-object v0
.end method

.method public blacklist without(Landroid/graphics/RenderNode$PositionUpdateListener;)Landroid/graphics/RenderNode$CompositePositionUpdateListener;
    .locals 3
    .param p1, "listener"    # Landroid/graphics/RenderNode$PositionUpdateListener;

    .line 365
    new-instance v0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;

    const-class v1, Landroid/graphics/RenderNode$PositionUpdateListener;

    iget-object v2, p0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->mListeners:[Landroid/graphics/RenderNode$PositionUpdateListener;

    .line 366
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/ArrayUtils;->removeElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/RenderNode$PositionUpdateListener;

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode$CompositePositionUpdateListener;-><init>([Landroid/graphics/RenderNode$PositionUpdateListener;)V

    .line 365
    return-object v0
.end method
