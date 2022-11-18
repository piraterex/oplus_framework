.class public interface abstract Landroid/view/IOplusSystemUINavigationGestureExt;
.super Ljava/lang/Object;
.source "IOplusSystemUINavigationGestureExt.java"


# virtual methods
.method public whitelist getSmartSideBarRegion()Landroid/graphics/Region;
    .locals 1

    .line 28
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    return-object v0
.end method

.method public whitelist registerSmartSideBarRegion(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    return-void
.end method

.method public whitelist unregisterSmartSideBarRegion()V
    .locals 0

    .line 25
    return-void
.end method
