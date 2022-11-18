.class public interface abstract Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;
.super Ljava/lang/Object;
.source "ILocalFloatingToolbarPopupExt.java"


# static fields
.field public static final blacklist MAX_OVERFLOW_SIZE:I = 0x4

.field public static final blacklist MIN_OVERFLOW_SIZE:I = 0x2

.field public static final blacklist NUM_0_5:F = 0.5f

.field public static final blacklist NUM_1_5:F = 1.5f


# virtual methods
.method public blacklist hookCalOverflowTotalItemHeight(Landroid/content/Context;II)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemCount"    # I
    .param p3, "itemHeight"    # I

    .line 109
    mul-int v0, p2, p3

    return v0
.end method

.method public blacklist hookCalculateOverflowExtension(Landroid/view/ViewGroup;I)I
    .locals 2
    .param p1, "contentContainerView"    # Landroid/view/ViewGroup;
    .param p2, "lineHeight"    # I

    .line 87
    int-to-float v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public blacklist hookClearPanels(I)V
    .locals 0
    .param p1, "overflowMenuCount"    # I

    .line 84
    return-void
.end method

.method public blacklist hookCreateContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hookCreateMenuItemButton(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hookCreateOverflowButton(Landroid/content/Context;I)Landroid/widget/ImageButton;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultOverflowButtonRes"    # I

    .line 91
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    return-object v0
.end method

.method public blacklist hookCreateOverflowPanelAfterOverflowPanel(Landroid/widget/ListView;)V
    .locals 0
    .param p1, "listview"    # Landroid/widget/ListView;

    .line 95
    return-void
.end method

.method public blacklist hookCreateOverflowPanelAtAdapterGetView(IZ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "upward"    # Z

    .line 98
    return-void
.end method

.method public blacklist hookFloatingToolbarPopupAfterOverflowPanelViewHelper(Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;)V
    .locals 0
    .param p1, "overflowPanelViewHelperExt"    # Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;

    .line 70
    return-void
.end method

.method public blacklist hookFloatingToolbarPopupForArrow(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultArrowDrawableId"    # I

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hookFloatingToolbarPopupForLineHeight(Landroid/content/Context;I)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultFloatingToolBarHeightRes"    # I

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public blacklist hookFloatingToolbarPopupForOverflow(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultOverflowDrawableId"    # I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hookFloatingToolbarPopupForToArrow(Landroid/content/Context;I)Landroid/graphics/drawable/AnimatedVectorDrawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultToArrowAnimId"    # I

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 60
    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-object v0
.end method

.method public blacklist hookFloatingToolbarPopupForToOverflow(Landroid/content/Context;I)Landroid/graphics/drawable/AnimatedVectorDrawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultToOverflowAnimId"    # I

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 65
    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-object v0
.end method

.method public blacklist hookGetFirstItemPaddingStart(Landroid/content/Context;I)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paddingStart"    # I

    .line 73
    int-to-float v0, p2

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public blacklist hookGetLastItemPaddingEnd(Landroid/content/Context;I)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paddingEnd"    # I

    .line 77
    int-to-float v0, p2

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public blacklist hookGetMarginVertical(I)I
    .locals 0
    .param p1, "defaultValue"    # I

    .line 101
    return p1
.end method

.method public blacklist hookGetOverflowBtnExtraStartX(Landroid/view/View;)I
    .locals 1
    .param p1, "overflowButton"    # Landroid/view/View;

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hookLayoutOverflowPanelItems(I)V
    .locals 0
    .param p1, "overflowMenuCount"    # I

    .line 81
    return-void
.end method

.method public blacklist hookMaxOverflowSize()Ljava/lang/Integer;
    .locals 1

    .line 44
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hookMinOverflowSize()Ljava/lang/Integer;
    .locals 1

    .line 40
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hookSetElevation(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 114
    return-void
.end method

.method public blacklist hookUpdateMenuItemButtonForIcon(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 1
    .param p1, "menuItemButton"    # Landroid/view/View;

    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hookUpdateMenuItemButtonForText(Landroid/view/View;)Landroid/widget/TextView;
    .locals 1
    .param p1, "menuItemButton"    # Landroid/view/View;

    .line 121
    const/4 v0, 0x0

    return-object v0
.end method
