.class final Landroid/view/ViewRootImpl$GfxInfo;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GfxInfo"
.end annotation


# instance fields
.field public blacklist renderNodeMemoryAllocated:J

.field public blacklist renderNodeMemoryUsage:J

.field public blacklist viewCount:I


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 8772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist add(Landroid/view/ViewRootImpl$GfxInfo;)V
    .locals 4
    .param p1, "other"    # Landroid/view/ViewRootImpl$GfxInfo;

    .line 8778
    iget v0, p0, Landroid/view/ViewRootImpl$GfxInfo;->viewCount:I

    iget v1, p1, Landroid/view/ViewRootImpl$GfxInfo;->viewCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewRootImpl$GfxInfo;->viewCount:I

    .line 8779
    iget-wide v0, p0, Landroid/view/ViewRootImpl$GfxInfo;->renderNodeMemoryUsage:J

    iget-wide v2, p1, Landroid/view/ViewRootImpl$GfxInfo;->renderNodeMemoryUsage:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ViewRootImpl$GfxInfo;->renderNodeMemoryUsage:J

    .line 8780
    iget-wide v0, p0, Landroid/view/ViewRootImpl$GfxInfo;->renderNodeMemoryAllocated:J

    iget-wide v2, p1, Landroid/view/ViewRootImpl$GfxInfo;->renderNodeMemoryAllocated:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ViewRootImpl$GfxInfo;->renderNodeMemoryAllocated:J

    .line 8781
    return-void
.end method
