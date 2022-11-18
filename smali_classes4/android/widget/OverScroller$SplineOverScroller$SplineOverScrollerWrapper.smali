.class Landroid/widget/OverScroller$SplineOverScroller$SplineOverScrollerWrapper;
.super Ljava/lang/Object;
.source "OverScroller.java"

# interfaces
.implements Landroid/widget/ISplineOverScrollerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OverScroller$SplineOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SplineOverScrollerWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/OverScroller$SplineOverScroller;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/OverScroller$SplineOverScroller;)V
    .locals 0

    .line 1352
    iput-object p1, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineOverScrollerWrapper;->this$0:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/OverScroller$SplineOverScroller;Landroid/widget/OverScroller$SplineOverScroller$SplineOverScrollerWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller$SplineOverScrollerWrapper;-><init>(Landroid/widget/OverScroller$SplineOverScroller;)V

    return-void
.end method


# virtual methods
.method public blacklist getContext()Landroid/content/Context;
    .locals 1

    .line 1366
    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineOverScrollerWrapper;->this$0:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmContext(Landroid/widget/OverScroller$SplineOverScroller;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFlingFriction()F
    .locals 1

    .line 1376
    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineOverScrollerWrapper;->this$0:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFlingFriction(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v0

    return v0
.end method

.method public blacklist getPhysicalCoeff()F
    .locals 1

    .line 1381
    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineOverScrollerWrapper;->this$0:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmPhysicalCoeff(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v0

    return v0
.end method

.method public blacklist getSplineFlingDistance(I)D
    .locals 2
    .param p1, "velocity"    # I

    .line 1360
    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineOverScrollerWrapper;->this$0:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$mgetSplineFlingDistance(Landroid/widget/OverScroller$SplineOverScroller;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getSplineFlingDuration(I)I
    .locals 1
    .param p1, "velocity"    # I

    .line 1355
    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineOverScrollerWrapper;->this$0:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$mgetSplineFlingDuration(Landroid/widget/OverScroller$SplineOverScroller;I)I

    move-result v0

    return v0
.end method

.method public blacklist getSplinePosition()[F
    .locals 1

    .line 1371
    invoke-static {}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$sfgetSPLINE_POSITION()[F

    move-result-object v0

    return-object v0
.end method
