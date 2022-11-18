.class public final Landroid/widget/RemoteViews$RemoteViewOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemoteViewOutlineProvider"
.end annotation


# instance fields
.field private final blacklist mRadius:F


# direct methods
.method public constructor whitelist <init>(F)V
    .locals 0
    .param p1, "radius"    # F

    .line 3533
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 3534
    iput p1, p0, Landroid/widget/RemoteViews$RemoteViewOutlineProvider;->mRadius:F

    .line 3535
    return-void
.end method


# virtual methods
.method public whitelist getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 3544
    nop

    .line 3547
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 3548
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/RemoteViews$RemoteViewOutlineProvider;->mRadius:F

    .line 3544
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 3550
    return-void
.end method

.method public whitelist getRadius()F
    .locals 1

    .line 3539
    iget v0, p0, Landroid/widget/RemoteViews$RemoteViewOutlineProvider;->mRadius:F

    return v0
.end method
