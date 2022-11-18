.class public final Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;
.super Ljava/lang/Object;
.source "VirtualMouseRelativeEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualMouseRelativeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mRelativeX:F

.field private blacklist mRelativeY:F


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/input/VirtualMouseRelativeEvent;
    .locals 4

    .line 85
    new-instance v0, Landroid/hardware/input/VirtualMouseRelativeEvent;

    iget v1, p0, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;->mRelativeX:F

    iget v2, p0, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;->mRelativeY:F

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/input/VirtualMouseRelativeEvent;-><init>(FFLandroid/hardware/input/VirtualMouseRelativeEvent-IA;)V

    return-object v0
.end method

.method public whitelist setRelativeX(F)Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;
    .locals 0
    .param p1, "relativeX"    # F

    .line 94
    iput p1, p0, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;->mRelativeX:F

    .line 95
    return-object p0
.end method

.method public whitelist setRelativeY(F)Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;
    .locals 0
    .param p1, "relativeY"    # F

    .line 104
    iput p1, p0, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;->mRelativeY:F

    .line 105
    return-object p0
.end method
