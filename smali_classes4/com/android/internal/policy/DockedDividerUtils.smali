.class public Lcom/android/internal/policy/DockedDividerUtils;
.super Ljava/lang/Object;
.source "DockedDividerUtils.java"


# static fields
.field public static blacklist sDividerInsets:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 43
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/policy/DockedDividerUtils;->sDividerInsets:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist calculateBoundsForPosition(IILandroid/graphics/Rect;III)V
    .locals 3
    .param p0, "position"    # I
    .param p1, "dockSide"    # I
    .param p2, "outRect"    # Landroid/graphics/Rect;
    .param p3, "displayWidth"    # I
    .param p4, "displayHeight"    # I
    .param p5, "dividerSize"    # I

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 48
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 59
    :pswitch_0
    add-int v1, p0, p5

    iput v1, p2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 56
    :pswitch_1
    add-int v1, p0, p5

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 57
    goto :goto_0

    .line 53
    :pswitch_2
    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    .line 54
    goto :goto_0

    .line 50
    :pswitch_3
    iput p0, p2, Landroid/graphics/Rect;->right:I

    .line 51
    nop

    .line 62
    :goto_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    invoke-static {p2, v0}, Lcom/android/internal/policy/DockedDividerUtils;->sanitizeStackBounds(Landroid/graphics/Rect;Z)V

    .line 63
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist calculateMiddlePosition(ZLandroid/graphics/Rect;III)I
    .locals 4
    .param p0, "isHorizontalDivision"    # Z
    .param p1, "insets"    # Landroid/graphics/Rect;
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "dividerSize"    # I

    .line 112
    if-eqz p0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 113
    .local v0, "start":I
    :goto_0
    if-eqz p0, :cond_1

    .line 114
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v1

    goto :goto_1

    .line 115
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int v1, p2, v1

    :goto_1
    nop

    .line 116
    .local v1, "end":I
    sub-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    div-int/lit8 v3, p4, 0x2

    sub-int/2addr v2, v3

    return v2
.end method

.method public static blacklist calculatePositionForBounds(Landroid/graphics/Rect;II)I
    .locals 1
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "dockSide"    # I
    .param p2, "dividerSize"    # I

    .line 96
    packed-switch p1, :pswitch_data_0

    .line 106
    const/4 v0, 0x0

    return v0

    .line 104
    :pswitch_0
    iget v0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    return v0

    .line 102
    :pswitch_1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    return v0

    .line 100
    :pswitch_2
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    return v0

    .line 98
    :pswitch_3
    iget v0, p0, Landroid/graphics/Rect;->right:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getDividerInsets(Landroid/content/res/Resources;)I
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;

    .line 140
    sget v0, Lcom/android/internal/policy/DockedDividerUtils;->sDividerInsets:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 141
    const-class v0, Lcom/oplus/splitscreen/ISplitScreenManagerExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/splitscreen/ISplitScreenManagerExt;

    invoke-interface {v0, p0}, Lcom/oplus/splitscreen/ISplitScreenManagerExt;->getDividerInsets(Landroid/content/res/Resources;)I

    move-result v0

    sput v0, Lcom/android/internal/policy/DockedDividerUtils;->sDividerInsets:I

    .line 143
    :cond_0
    sget v0, Lcom/android/internal/policy/DockedDividerUtils;->sDividerInsets:I

    return v0
.end method

.method public static blacklist getDividerSize(Landroid/content/res/Resources;I)I
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "dividerInsets"    # I

    .line 149
    const v0, 0x1050132

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 151
    .local v0, "windowWidth":I
    mul-int/lit8 v1, p1, 0x2

    sub-int v1, v0, v1

    return v1
.end method

.method public static blacklist getDockSide(II)I
    .locals 1
    .param p0, "displayWidth"    # I
    .param p1, "displayHeight"    # I

    .line 156
    if-le p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public static blacklist invertDockSide(I)I
    .locals 1
    .param p0, "dockSide"    # I

    .line 120
    packed-switch p0, :pswitch_data_0

    .line 130
    const/4 v0, -0x1

    return v0

    .line 128
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 126
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 124
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 122
    :pswitch_3
    const/4 v0, 0x3

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist sanitizeStackBounds(Landroid/graphics/Rect;Z)V
    .locals 2
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "topLeft"    # Z

    .line 78
    if-eqz p1, :cond_1

    .line 79
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_0

    .line 80
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 82
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_3

    .line 83
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 86
    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_2

    .line 87
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 89
    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    if-gt v0, v1, :cond_3

    .line 90
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 93
    :cond_3
    :goto_0
    return-void
.end method
