.class public Landroid/hardware/Camera$Size;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Size"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist height:I

.field final synthetic blacklist this$0:Landroid/hardware/Camera;

.field public whitelist width:I


# direct methods
.method public constructor whitelist <init>(Landroid/hardware/Camera;II)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/Camera;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .line 2488
    iput-object p1, p0, Landroid/hardware/Camera$Size;->this$0:Landroid/hardware/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2489
    iput p2, p0, Landroid/hardware/Camera$Size;->width:I

    .line 2490
    iput p3, p0, Landroid/hardware/Camera$Size;->height:I

    .line 2491
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2501
    instance-of v0, p1, Landroid/hardware/Camera$Size;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2502
    return v1

    .line 2504
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 2505
    .local v0, "s":Landroid/hardware/Camera$Size;
    iget v2, p0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 2509
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    mul-int/lit16 v0, v0, 0x7fc9

    iget v1, p0, Landroid/hardware/Camera$Size;->height:I

    add-int/2addr v0, v1

    return v0
.end method
