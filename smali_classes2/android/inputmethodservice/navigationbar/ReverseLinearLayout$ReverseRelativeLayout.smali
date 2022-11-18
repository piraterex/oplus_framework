.class public Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "ReverseLinearLayout.java"

# interfaces
.implements Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$Reversible;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReverseRelativeLayout"
.end annotation


# instance fields
.field private blacklist mDefaultGravity:I


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 132
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->mDefaultGravity:I

    .line 133
    return-void
.end method


# virtual methods
.method public blacklist reverse(Z)V
    .locals 0
    .param p1, "isLayoutReverse"    # Z

    .line 137
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->updateGravity(Z)V

    .line 138
    invoke-static {p0, p1}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->-$$Nest$smreverseGroup(Landroid/view/ViewGroup;Z)V

    .line 139
    return-void
.end method

.method public blacklist setDefaultGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .line 143
    iput p1, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->mDefaultGravity:I

    .line 144
    return-void
.end method

.method public blacklist updateGravity(Z)V
    .locals 4
    .param p1, "isLayoutReverse"    # Z

    .line 148
    iget v0, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->mDefaultGravity:I

    const/16 v1, 0x50

    const/16 v2, 0x30

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    return-void

    .line 151
    :cond_0
    iget v3, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->mDefaultGravity:I

    .line 152
    .local v3, "gravityToApply":I
    if-eqz p1, :cond_2

    .line 153
    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v3, v1

    .line 156
    :cond_2
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->getGravity()I

    move-result v0

    if-eq v0, v3, :cond_3

    invoke-virtual {p0, v3}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->setGravity(I)V

    .line 157
    :cond_3
    return-void
.end method
