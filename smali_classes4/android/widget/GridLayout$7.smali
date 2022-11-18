.class Landroid/widget/GridLayout$7;
.super Landroid/widget/GridLayout$Alignment;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 2942
    invoke-direct {p0}, Landroid/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getAlignmentValue(Landroid/view/View;II)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSize"    # I
    .param p3, "mode"    # I

    .line 2950
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2951
    const/4 v0, 0x0

    return v0

    .line 2953
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v0

    .line 2954
    .local v0, "baseline":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/high16 v1, -0x80000000

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    return v1
.end method

.method public blacklist getBounds()Landroid/widget/GridLayout$Bounds;
    .locals 1

    .line 2959
    new-instance v0, Landroid/widget/GridLayout$7$1;

    invoke-direct {v0, p0}, Landroid/widget/GridLayout$7$1;-><init>(Landroid/widget/GridLayout$7;)V

    return-object v0
.end method

.method blacklist getGravityOffset(Landroid/view/View;I)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cellDelta"    # I

    .line 2945
    const/4 v0, 0x0

    return v0
.end method
