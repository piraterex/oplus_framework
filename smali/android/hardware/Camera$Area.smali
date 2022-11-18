.class public Landroid/hardware/Camera$Area;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Area"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist rect:Landroid/graphics/Rect;

.field public whitelist weight:I


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/Rect;I)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "weight"    # I

    .line 2559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2560
    iput-object p1, p0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 2561
    iput p2, p0, Landroid/hardware/Camera$Area;->weight:I

    .line 2562
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2572
    instance-of v0, p1, Landroid/hardware/Camera$Area;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2573
    return v1

    .line 2575
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 2576
    .local v0, "a":Landroid/hardware/Camera$Area;
    iget-object v2, p0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    .line 2577
    iget-object v2, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    return v1

    .line 2579
    :cond_1
    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 2581
    :cond_2
    iget v2, p0, Landroid/hardware/Camera$Area;->weight:I

    iget v3, v0, Landroid/hardware/Camera$Area;->weight:I

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method
