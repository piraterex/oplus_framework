.class public final Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;
.super Ljava/lang/Object;
.source "LocalFloatingToolbarPopup.java"

# interfaces
.implements Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;,
        Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;,
        Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$LogAccelerateInterpolator;,
        Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;
    }
.end annotation


# static fields
.field private static final blacklist MAX_OVERFLOW_SIZE:I

.field private static final blacklist MIN_OVERFLOW_SIZE:I

.field private static blacklist sLocalFloatingToolbarPopupExt:Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;


# instance fields
.field private final blacklist mArrow:Landroid/graphics/drawable/Drawable;

.field private final blacklist mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

.field private final blacklist mContentContainer:Landroid/view/ViewGroup;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mCoordsOnWindow:Landroid/graphics/Point;

.field private final blacklist mDismissAnimation:Landroid/animation/AnimatorSet;

.field private blacklist mDismissed:Z

.field private final blacklist mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mHidden:Z

.field private final blacklist mHideAnimation:Landroid/animation/AnimatorSet;

.field private final blacklist mIconTextSpacing:I

.field private final blacklist mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private blacklist mIsOverflowOpen:Z

.field private final blacklist mLineHeight:I

.field private final blacklist mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mMainPanel:Landroid/view/ViewGroup;

.field private blacklist mMainPanelSize:Landroid/util/Size;

.field private final blacklist mMarginHorizontal:I

.field private final blacklist mMarginVertical:I

.field private final blacklist mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private final blacklist mMenuItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private final blacklist mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

.field private blacklist mOpenOverflowUpwards:Z

.field private final blacklist mOverflow:Landroid/graphics/drawable/Drawable;

.field private final blacklist mOverflowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private final blacklist mOverflowButton:Landroid/widget/ImageButton;

.field private final blacklist mOverflowButtonSize:Landroid/util/Size;

.field private final blacklist mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

.field private blacklist mOverflowPanelSize:Landroid/util/Size;

.field private final blacklist mOverflowPanelViewHelper:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;

.field private final blacklist mParent:Landroid/view/View;

.field private final blacklist mPopupWindow:Landroid/widget/PopupWindow;

.field private final blacklist mPreparePopupContentRTLHelper:Ljava/lang/Runnable;

.field private final blacklist mPreviousContentRect:Landroid/graphics/Rect;

.field private final blacklist mShowAnimation:Landroid/animation/AnimatorSet;

.field private blacklist mSuggestedWidth:I

.field private final blacklist mTmpCoords:[I

.field private final blacklist mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final blacklist mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final blacklist mTouchableRegion:Landroid/graphics/Region;

.field private blacklist mTransitionDurationScale:I

.field private final blacklist mViewPortOnScreen:Landroid/graphics/Rect;

.field private blacklist mWidthChanged:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContentContainer(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMainPanel(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMainPanelSize(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMenuItems(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMenuItems:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnMenuItemClickListener(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOpenOverflowUpwards(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverflowButton(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverflowButtonSize(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverflowPanel(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverflowPanelSize(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverflowPanelViewHelper(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelViewHelper:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPopupWindow(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misInRTLMode(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isInRTLMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misOverflowAnimating(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isOverflowAnimating()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mpositionContentYCoordinatesIfOpeningOverflowUpwards(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->positionContentYCoordinatesIfOpeningOverflowUpwards()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetContentAreaAsTouchableSurface(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setContentAreaAsTouchableSurface()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetPanelsStatesAtRestingPosition(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setPanelsStatesAtRestingPosition()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLocalFloatingToolbarPopupExt()Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;
    .locals 1

    sget-object v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sLocalFloatingToolbarPopupExt:Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;IZ)Landroid/view/View;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;IZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsetHeight(Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setHeight(Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smsetWidth(Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setWidth(Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smupdateMenuItemButton(Landroid/view/View;Landroid/view/MenuItem;IZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateMenuItemButton(Landroid/view/View;Landroid/view/MenuItem;IZ)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 95
    const-class v0, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    .line 96
    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    sput-object v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sLocalFloatingToolbarPopupExt:Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    .line 97
    invoke-interface {v0}, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;->hookMinOverflowSize()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->MIN_OVERFLOW_SIZE:I

    .line 98
    sget-object v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sLocalFloatingToolbarPopupExt:Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    invoke-interface {v0}, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;->hookMaxOverflowSize()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->MAX_OVERFLOW_SIZE:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/View;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    .line 138
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    .line 140
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTmpCoords:[I

    .line 142
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    .line 143
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 158
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$1;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPreparePopupContentRTLHelper:Ljava/lang/Runnable;

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDismissed:Z

    .line 176
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMenuItems:Ljava/util/Map;

    .line 178
    new-instance v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$2;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$2;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 202
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPreviousContentRect:Landroid/graphics/Rect;

    .line 204
    iput-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mWidthChanged:Z

    .line 213
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParent:Landroid/view/View;

    .line 214
    invoke-static {p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->applyDefaultTheme(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    .line 215
    invoke-static {v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    .line 218
    sget-object v3, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sLocalFloatingToolbarPopupExt:Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    invoke-interface {v3, v2}, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;->hookSetElevation(Landroid/view/View;)V

    .line 220
    invoke-static {v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createPopupWindow(Landroid/view/ViewGroup;)Landroid/widget/PopupWindow;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 221
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 222
    const v4, 0x105013f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    .line 227
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sLocalFloatingToolbarPopupExt:Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    .line 228
    const v5, 0x105014c

    invoke-interface {v4, v5}, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;->hookGetMarginVertical(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginVertical:I

    .line 234
    sget-object v3, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sLocalFloatingToolbarPopupExt:Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    const v4, 0x105013e

    invoke-interface {v3, p1, v4}, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;->hookFloatingToolbarPopupForLineHeight(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLineHeight:I

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 238
    const v4, 0x1050140

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIconTextSpacing:I

    .line 241
    new-instance v4, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$LogAccelerateInterpolator;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$LogAccelerateInterpolator;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$LogAccelerateInterpolator-IA;)V

    iput-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 242
    const v4, 0x10c000d

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 244
    const v4, 0x10c000e

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 246
    const v4, 0x10c000f

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 254
    sget-object v4, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sLocalFloatingToolbarPopupExt:Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    const v5, 0x10802fd

    invoke-interface {v4, v1, v5}, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;->hookFloatingToolbarPopupForArrow(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mArrow:Landroid/graphics/drawable/Drawable;

    .line 257
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 262
    sget-object v4, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sLocalFloatingToolbarPopupExt:Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    const v5, 0x10802fb

    invoke-interface {v4, v1, v5}, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;->hookFloatingToolbarPopupForOverflow(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflow:Landroid/graphics/drawable/Drawable;

    .line 265
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 270
    sget-object v4, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sLocalFloatingToolbarPopupExt:Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    const v5, 0x10802fc

    invoke-interface {v4, v1, v5}, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;->hookFloatingToolbarPopupForToArrow(Landroid/content/Context;I)Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 273
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setAutoMirrored(Z)V

    .line 278
    sget-object v4, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sLocalFloatingToolbarPopupExt:Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    const v5, 0x10802fe

    invoke-interface {v4, v1, v5}, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;->hookFloatingToolbarPopupForToOverflow(Landroid/content/Context;I)Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 281
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setAutoMirrored(Z)V

    .line 284
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createOverflowButton()Landroid/widget/ImageButton;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    .line 285
    invoke-static {v4}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->measure(Landroid/view/View;)Landroid/util/Size;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    .line 286
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createMainPanel()Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    .line 287
    new-instance v4, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;

    invoke-direct {v4, v1, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelViewHelper:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;

    .line 290
    sget-object v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sLocalFloatingToolbarPopupExt:Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    invoke-static {v4}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->-$$Nest$fgetmOverflowPanelViewHelperExt(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;)Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;->hookFloatingToolbarPopupAfterOverflowPanelViewHelper(Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;)V

    .line 293
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createOverflowPanel()Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    .line 296
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createOverflowAnimationListener()Landroid/view/animation/Animation$AnimationListener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 297
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    .line 298
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 299
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    .line 300
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 301
    invoke-static {v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mShowAnimation:Landroid/animation/AnimatorSet;

    .line 302
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$3;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V

    const/16 v1, 0x96

    invoke-static {v2, v1, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    .line 312
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$4;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$4;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V

    const/4 v1, 0x0

    invoke-static {v2, v1, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    .line 321
    return-void
.end method

.method private static blacklist applyDefaultTheme(Landroid/content/Context;)Landroid/content/Context;
    .locals 4
    .param p0, "originalContext"    # Landroid/content/Context;

    .line 1742
    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x1010590

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1743
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 1745
    .local v0, "isLightTheme":Z
    if-eqz v0, :cond_0

    const v2, 0x103012b

    goto :goto_0

    :cond_0
    const v2, 0x1030128

    .line 1746
    .local v2, "themeId":I
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1747
    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v3
.end method

.method private blacklist calculateOverflowHeight(I)I
    .locals 5
    .param p1, "maxItemSize"    # I

    .line 1255
    sget v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->MAX_OVERFLOW_SIZE:I

    sget v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->MIN_OVERFLOW_SIZE:I

    .line 1258
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    .line 1259
    invoke-virtual {v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->getCount()I

    move-result v2

    .line 1257
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1255
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1260
    .local v0, "actualSize":I
    const/4 v1, 0x0

    .line 1261
    .local v1, "extension":I
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1267
    sget-object v2, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sLocalFloatingToolbarPopupExt:Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLineHeight:I

    invoke-interface {v2, v3, v4}, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;->hookCalculateOverflowExtension(Landroid/view/ViewGroup;I)I

    move-result v1

    .line 1275
    :cond_0
    sget-object v2, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sLocalFloatingToolbarPopupExt:Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLineHeight:I

    invoke-interface {v2, v3, v0, v4}, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;->hookCalOverflowTotalItemHeight(Landroid/content/Context;II)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    .line 1276
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    .line 1275
    return v2
.end method

.method private blacklist cancelDismissAndHideAnimations()V
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 635
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 636
    return-void
.end method

.method private blacklist cancelOverflowAnimations()V
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 640
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 641
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 642
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 643
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 644
    return-void
.end method

.method private blacklist clearPanels()V
    .locals 3

    .line 1219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    .line 1220
    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    .line 1221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsOverflowOpen:Z

    .line 1222
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1223
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    .line 1224
    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1225
    .local v0, "overflowPanelAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Landroid/view/MenuItem;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 1226
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1229
    sget-object v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sLocalFloatingToolbarPopupExt:Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;->hookClearPanels(I)V

    .line 1231
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1232
    return-void
.end method

.method private blacklist closeOverflow()V
    .locals 15

    .line 730
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 731
    .local v0, "targetWidth":I
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    .line 732
    .local v7, "startWidth":I
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v8

    .line 733
    .local v8, "left":F
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float v9, v8, v1

    .line 734
    .local v9, "right":F
    new-instance v10, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$8;

    move-object v1, v10

    move-object v2, p0

    move v3, v0

    move v4, v7

    move v5, v8

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$8;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;IIFF)V

    .line 755
    .local v1, "widthAnimation":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 756
    .local v2, "targetHeight":I
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    .line 757
    .local v3, "startHeight":I
    iget-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 758
    .local v4, "bottom":F
    new-instance v5, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$9;

    invoke-direct {v5, p0, v2, v3, v4}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$9;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;IIF)V

    .line 769
    .local v5, "heightAnimation":Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getX()F

    move-result v6

    .line 775
    .local v6, "overflowButtonStartX":F
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isInRTLMode()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 776
    int-to-float v10, v7

    sub-float v10, v6, v10

    iget-object v11, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v11}, Landroid/widget/ImageButton;->getWidth()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    sget-object v11, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sLocalFloatingToolbarPopupExt:Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    iget-object v12, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-interface {v11, v12}, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;->hookGetOverflowBtnExtraStartX(Landroid/view/View;)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    goto :goto_0

    .line 777
    :cond_0
    int-to-float v10, v7

    add-float/2addr v10, v6

    iget-object v11, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v11}, Landroid/widget/ImageButton;->getWidth()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    sget-object v11, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sLocalFloatingToolbarPopupExt:Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    iget-object v12, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-interface {v11, v12}, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;->hookGetOverflowBtnExtraStartX(Landroid/view/View;)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    :goto_0
    nop

    .line 779
    .local v10, "overflowButtonTargetX":F
    new-instance v11, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$10;

    invoke-direct {v11, p0, v6, v10, v7}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$10;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;FFI)V

    .line 790
    .local v11, "overflowButtonAnimation":Landroid/view/animation/Animation;
    iget-object v12, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v12}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 791
    const/16 v12, 0xfa

    invoke-direct {p0, v12}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v13

    int-to-long v13, v13

    invoke-virtual {v1, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 792
    iget-object v13, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v13}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 793
    invoke-direct {p0, v12}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v13

    int-to-long v13, v13

    invoke-virtual {v5, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 794
    iget-object v13, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v13}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 795
    invoke-direct {p0, v12}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 796
    iget-object v12, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v12}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 797
    iget-object v12, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 798
    iget-object v12, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v12, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 799
    iget-object v12, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 800
    iget-object v12, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v13, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 801
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsOverflowOpen:Z

    .line 802
    iget-object v12, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/high16 v13, 0x3f800000    # 1.0f

    .line 803
    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 804
    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const-wide/16 v13, 0x64

    .line 805
    invoke-virtual {v12, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    .line 806
    invoke-virtual {v12}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 807
    iget-object v12, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v12}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/4 v13, 0x0

    .line 808
    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 809
    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const-wide/16 v13, 0x96

    .line 810
    invoke-virtual {v12, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    .line 811
    invoke-virtual {v12}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 812
    return-void
.end method

.method private static blacklist createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1679
    sget-object v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sLocalFloatingToolbarPopupExt:Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    invoke-interface {v0, p0}, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;->hookCreateContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 1680
    .local v0, "contentContainer":Landroid/view/ViewGroup;
    if-nez v0, :cond_0

    .line 1681
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x109007c

    const/4 v3, 0x0

    .line 1682
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    .line 1685
    :cond_0
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1687
    const-string v1, "floating_toolbar"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1688
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1689
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    .line 1690
    return-object v0
.end method

.method private static blacklist createEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .line 1715
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1716
    .local v0, "animation":Landroid/animation/AnimatorSet;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    .line 1717
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1716
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1718
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static blacklist createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "startDelay"    # I
    .param p2, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 1730
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1731
    .local v0, "animation":Landroid/animation/AnimatorSet;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    .line 1732
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1731
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1733
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1734
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1735
    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private blacklist createMainPanel()Landroid/view/ViewGroup;
    .locals 2

    .line 1316
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$11;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$11;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;Landroid/content/Context;)V

    .line 1335
    .local v0, "mainPanel":Landroid/view/ViewGroup;
    return-object v0
.end method

.method private static blacklist createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;IZ)Landroid/view/View;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "iconTextSpacing"    # I
    .param p3, "showIcon"    # Z

    .line 1612
    sget-object v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sLocalFloatingToolbarPopupExt:Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    invoke-interface {v0, p0}, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;->hookCreateMenuItemButton(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 1613
    .local v0, "menuItemButton":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1614
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x109007d

    const/4 v3, 0x0

    .line 1615
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1618
    :cond_0
    if-eqz p1, :cond_1

    .line 1619
    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateMenuItemButton(Landroid/view/View;Landroid/view/MenuItem;IZ)V

    .line 1621
    :cond_1
    return-object v0
.end method

.method private blacklist createOverflowAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .line 1404
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$13;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$13;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V

    .line 1430
    .local v0, "listener":Landroid/view/animation/Animation$AnimationListener;
    return-object v0
.end method

.method private blacklist createOverflowButton()Landroid/widget/ImageButton;
    .locals 3

    .line 1343
    sget-object v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sLocalFloatingToolbarPopupExt:Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    const v2, 0x109007f

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;->hookCreateOverflowButton(Landroid/content/Context;I)Landroid/widget/ImageButton;

    move-result-object v0

    .line 1346
    .local v0, "overflowButton":Landroid/widget/ImageButton;
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1347
    new-instance v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1358
    return-object v0
.end method

.method private blacklist createOverflowPanel()Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;
    .locals 4

    .line 1362
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V

    .line 1363
    .local v0, "overflowPanel":Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1365
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1366
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setDividerHeight(I)V

    .line 1369
    sget-object v2, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sLocalFloatingToolbarPopupExt:Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    invoke-interface {v2, v0}, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;->hookCreateOverflowPanelAfterOverflowPanel(Landroid/widget/ListView;)V

    .line 1371
    new-instance v2, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$12;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$12;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;Landroid/content/Context;I)V

    move-object v1, v2

    .line 1383
    .local v1, "adapter":Landroid/widget/ArrayAdapter;
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1385
    new-instance v2, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1392
    return-object v0
.end method

.method private static blacklist createPopupWindow(Landroid/view/ViewGroup;)Landroid/widget/PopupWindow;
    .locals 4
    .param p0, "content"    # Landroid/view/ViewGroup;

    .line 1694
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1695
    .local v0, "popupContentHolder":Landroid/view/ViewGroup;
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    .line 1698
    .local v1, "popupWindow":Landroid/widget/PopupWindow;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1699
    const/16 v3, 0x3ed

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 1701
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1702
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1703
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1705
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1706
    return-object v1
.end method

.method private blacklist getAdjustedDuration(I)I
    .locals 2
    .param p1, "originalDuration"    # I

    .line 1291
    iget v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTransitionDurationScale:I

    const/16 v1, 0x96

    if-ge v0, v1, :cond_0

    .line 1293
    add-int/lit8 v0, p1, -0x32

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1294
    :cond_0
    const/16 v1, 0x12c

    if-le v0, v1, :cond_1

    .line 1296
    add-int/lit8 v0, p1, 0x32

    return v0

    .line 1303
    :cond_1
    int-to-float v0, p1

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private blacklist getAdjustedToolbarWidth(I)I
    .locals 4
    .param p1, "suggestedWidth"    # I

    .line 974
    move v0, p1

    .line 975
    .local v0, "width":I
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->refreshViewPort()V

    .line 976
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 977
    const v3, 0x105013f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 978
    .local v1, "maximumWidth":I
    if-gtz v0, :cond_0

    .line 979
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105014a

    .line 980
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 982
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private blacklist getOverflowWidth()I
    .locals 5

    .line 1243
    const/4 v0, 0x0

    .line 1244
    .local v0, "overflowWidth":I
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 1245
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1246
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    .line 1247
    .local v3, "menuItem":Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelViewHelper:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;

    .line 1248
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->calculateWidth(Landroid/view/MenuItem;)I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1245
    .end local v3    # "menuItem":Landroid/view/MenuItem;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1250
    .end local v2    # "i":I
    :cond_0
    return v0
.end method

.method private blacklist hasOverflow()Z
    .locals 1

    .line 1035
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isInRTLMode()Z
    .locals 2

    .line 1029
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    .line 1030
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1029
    :goto_0
    return v1
.end method

.method private blacklist isLayoutRequired(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;)Z"
        }
    .end annotation

    .line 375
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMenuItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->reprEquals(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist isOverflowAnimating()Z
    .locals 4

    .line 1396
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    .line 1397
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1398
    .local v0, "overflowOpening":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    .line 1399
    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 1400
    .local v3, "overflowClosing":Z
    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method private blacklist layoutMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;I)V
    .locals 1
    .param p2, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;
    .param p3, "suggestedWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Landroid/view/MenuItem$OnMenuItemClickListener;",
            "I)V"
        }
    .end annotation

    .line 345
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->cancelOverflowAnimations()V

    .line 346
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->clearPanels()V

    .line 347
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 348
    invoke-direct {p0, p3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getAdjustedToolbarWidth(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->layoutMainPanelItems(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 349
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->layoutOverflowPanelItems(Ljava/util/List;)V

    .line 353
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updatePopupSize()V

    .line 354
    return-void
.end method

.method private blacklist layoutOverflowPanelItems(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    .line 1150
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    .line 1151
    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1152
    .local v0, "overflowPanelAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Landroid/view/MenuItem;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 1153
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1154
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1155
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1154
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1157
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1160
    sget-object v2, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sLocalFloatingToolbarPopupExt:Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;->hookLayoutOverflowPanelItems(I)V

    .line 1162
    iget-boolean v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v2, :cond_1

    .line 1163
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setY(F)V

    goto :goto_1

    .line 1165
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setY(F)V

    .line 1168
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getOverflowWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1169
    .local v2, "width":I
    sget v3, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->MAX_OVERFLOW_SIZE:I

    invoke-direct {p0, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->calculateOverflowHeight(I)I

    move-result v3

    .line 1170
    .local v3, "height":I
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v2, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    .line 1171
    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-static {v5, v4}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 1172
    return-void
.end method

.method private blacklist maybeComputeTransitionDurationScale()V
    .locals 6

    .line 1307
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    if-eqz v1, :cond_0

    .line 1308
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1309
    .local v0, "w":I
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1310
    .local v1, "h":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    .line 1311
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTransitionDurationScale:I

    .line 1313
    .end local v0    # "w":I
    .end local v1    # "h":I
    :cond_0
    return-void
.end method

.method private static blacklist measure(Landroid/view/View;)Landroid/util/Size;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 1434
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1435
    invoke-virtual {p0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 1436
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method private blacklist openOverflow()V
    .locals 15

    .line 647
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 648
    .local v0, "targetWidth":I
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v7

    .line 649
    .local v7, "targetHeight":I
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    .line 650
    .local v8, "startWidth":I
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    .line 651
    .local v9, "startHeight":I
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v10

    .line 652
    .local v10, "startY":F
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v11

    .line 653
    .local v11, "left":F
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float v12, v11, v1

    .line 654
    .local v12, "right":F
    new-instance v13, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$5;

    move-object v1, v13

    move-object v2, p0

    move v3, v0

    move v4, v8

    move v5, v11

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$5;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;IIFF)V

    .line 675
    .local v1, "widthAnimation":Landroid/view/animation/Animation;
    new-instance v2, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;

    invoke-direct {v2, p0, v7, v9, v10}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;IIF)V

    .line 687
    .local v2, "heightAnimation":Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getX()F

    move-result v3

    .line 693
    .local v3, "overflowButtonStartX":F
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isInRTLMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 694
    int-to-float v4, v0

    add-float/2addr v4, v3

    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget-object v5, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sLocalFloatingToolbarPopupExt:Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    iget-object v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-interface {v5, v6}, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;->hookGetOverflowBtnExtraStartX(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    goto :goto_0

    .line 695
    :cond_0
    int-to-float v4, v0

    sub-float v4, v3, v4

    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    sget-object v5, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sLocalFloatingToolbarPopupExt:Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    iget-object v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-interface {v5, v6}, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;->hookGetOverflowBtnExtraStartX(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    :goto_0
    nop

    .line 697
    .local v4, "overflowButtonTargetX":F
    new-instance v5, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$7;

    invoke-direct {v5, p0, v3, v4, v8}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$7;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;FFI)V

    .line 708
    .local v5, "overflowButtonAnimation":Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 709
    const/16 v6, 0xfa

    invoke-direct {p0, v6}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v13

    int-to-long v13, v13

    invoke-virtual {v1, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 710
    iget-object v13, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v13}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 711
    invoke-direct {p0, v6}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v13

    int-to-long v13, v13

    invoke-virtual {v2, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 712
    iget-object v13, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v13}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 713
    invoke-direct {p0, v6}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v6

    int-to-long v13, v6

    invoke-virtual {v5, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 714
    iget-object v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v6}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 715
    iget-object v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v6}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 716
    iget-object v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v6, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 717
    iget-object v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v6, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 718
    iget-object v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v6, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 719
    iget-object v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v13, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 720
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsOverflowOpen:Z

    .line 721
    iget-object v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v13, 0x0

    .line 722
    invoke-virtual {v6, v13}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v13, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 723
    invoke-virtual {v6, v13}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v13, 0xfa

    .line 724
    invoke-virtual {v6, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 725
    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 726
    iget-object v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v6, v13}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setAlpha(F)V

    .line 727
    return-void
.end method

.method private blacklist positionContentYCoordinatesIfOpeningOverflowUpwards()V
    .locals 3

    .line 1235
    iget-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 1237
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setY(F)V

    .line 1238
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setY(F)V

    .line 1240
    :cond_0
    return-void
.end method

.method private blacklist preparePopupContent(Z)V
    .locals 2
    .param p1, "isFirstRendered"    # Z

    .line 1183
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1187
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->hasOverflow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1190
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1191
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->hasOverflow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1192
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1194
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setPanelsStatesAtRestingPosition()V

    .line 1195
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setContentAreaAsTouchableSurface()V

    .line 1208
    if-eqz p1, :cond_2

    .line 1209
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1211
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPreparePopupContentRTLHelper:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 1213
    return-void
.end method

.method private blacklist refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V
    .locals 18
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    .line 501
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->refreshViewPort()V

    .line 505
    nop

    .line 506
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget-object v3, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 507
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 505
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 511
    .local v2, "x":I
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget-object v4, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 513
    .local v3, "availableHeightAboveContent":I
    iget-object v4, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 516
    .local v4, "availableHeightBelowContent":I
    iget v5, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginVertical:I

    mul-int/lit8 v5, v5, 0x2

    .line 517
    .local v5, "margin":I
    iget v6, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLineHeight:I

    add-int/2addr v6, v5

    .line 519
    .local v6, "toolbarHeightWithVerticalMargin":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->hasOverflow()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v7, :cond_3

    .line 520
    if-lt v3, v6, :cond_0

    .line 522
    iget v7, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v6

    .local v7, "y":I
    goto/16 :goto_0

    .line 523
    .end local v7    # "y":I
    :cond_0
    if-lt v4, v6, :cond_1

    .line 525
    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    .restart local v7    # "y":I
    goto/16 :goto_0

    .line 526
    .end local v7    # "y":I
    :cond_1
    iget v7, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLineHeight:I

    if-lt v4, v7, :cond_2

    .line 528
    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    iget v10, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginVertical:I

    sub-int/2addr v7, v10

    .restart local v7    # "y":I
    goto/16 :goto_0

    .line 531
    .end local v7    # "y":I
    :cond_2
    iget-object v7, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v10, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v6

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7    # "y":I
    goto/16 :goto_0

    .line 537
    .end local v7    # "y":I
    :cond_3
    sget v7, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->MIN_OVERFLOW_SIZE:I

    .line 538
    invoke-direct {v0, v7}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->calculateOverflowHeight(I)I

    move-result v7

    add-int/2addr v7, v5

    .line 539
    .local v7, "minimumOverflowHeightWithMargin":I
    iget-object v10, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    add-int/2addr v10, v6

    .line 542
    .local v10, "availableHeightThroughContentDown":I
    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v12, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    add-int/2addr v11, v6

    .line 546
    .local v11, "availableHeightThroughContentUp":I
    if-lt v3, v7, :cond_4

    .line 549
    sub-int v12, v3, v5

    invoke-direct {v0, v12}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateOverflowHeight(I)V

    .line 550
    iget v12, v1, Landroid/graphics/Rect;->top:I

    iget-object v13, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v13}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v13

    sub-int/2addr v12, v13

    .line 551
    .local v12, "y":I
    iput-boolean v8, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    move v7, v12

    goto :goto_0

    .line 552
    .end local v12    # "y":I
    :cond_4
    if-lt v3, v6, :cond_5

    if-lt v10, v7, :cond_5

    .line 557
    sub-int v12, v10, v5

    invoke-direct {v0, v12}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateOverflowHeight(I)V

    .line 558
    iget v12, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v6

    .line 559
    .restart local v12    # "y":I
    iput-boolean v9, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    move v7, v12

    goto :goto_0

    .line 560
    .end local v12    # "y":I
    :cond_5
    if-lt v4, v7, :cond_6

    .line 563
    sub-int v12, v4, v5

    invoke-direct {v0, v12}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateOverflowHeight(I)V

    .line 564
    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    .line 565
    .restart local v12    # "y":I
    iput-boolean v9, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    move v7, v12

    goto :goto_0

    .line 566
    .end local v12    # "y":I
    :cond_6
    if-lt v4, v6, :cond_7

    iget-object v12, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    .line 567
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    if-lt v12, v7, :cond_7

    .line 571
    sub-int v12, v11, v5

    invoke-direct {v0, v12}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateOverflowHeight(I)V

    .line 572
    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v6

    iget-object v13, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 573
    invoke-virtual {v13}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v13

    sub-int/2addr v12, v13

    .line 574
    .restart local v12    # "y":I
    iput-boolean v8, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    move v7, v12

    goto :goto_0

    .line 578
    .end local v12    # "y":I
    :cond_7
    iget-object v12, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    sub-int/2addr v12, v5

    invoke-direct {v0, v12}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateOverflowHeight(I)V

    .line 579
    iget-object v12, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    .line 580
    .restart local v12    # "y":I
    iput-boolean v9, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    move v7, v12

    .line 591
    .end local v10    # "availableHeightThroughContentDown":I
    .end local v11    # "availableHeightThroughContentUp":I
    .end local v12    # "y":I
    .local v7, "y":I
    :goto_0
    iget-object v10, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    iget-object v11, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTmpCoords:[I

    invoke-virtual {v10, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 592
    iget-object v10, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTmpCoords:[I

    aget v11, v10, v9

    .line 593
    .local v11, "rootViewLeftOnScreen":I
    aget v10, v10, v8

    .line 594
    .local v10, "rootViewTopOnScreen":I
    iget-object v12, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v12

    iget-object v13, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTmpCoords:[I

    invoke-virtual {v12, v13}, Landroid/view/View;->getLocationInWindow([I)V

    .line 595
    iget-object v12, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTmpCoords:[I

    aget v13, v12, v9

    .line 596
    .local v13, "rootViewLeftOnWindow":I
    aget v8, v12, v8

    .line 597
    .local v8, "rootViewTopOnWindow":I
    sub-int v12, v11, v13

    .line 598
    .local v12, "windowLeftOnScreen":I
    sub-int v14, v10, v8

    .line 599
    .local v14, "windowTopOnScreen":I
    iget-object v15, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    sub-int v1, v2, v12

    .line 600
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v16, v3

    .end local v3    # "availableHeightAboveContent":I
    .local v16, "availableHeightAboveContent":I
    sub-int v3, v7, v14

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 599
    invoke-virtual {v15, v1, v3}, Landroid/graphics/Point;->set(II)V

    .line 603
    sget v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->MIN_OVERFLOW_SIZE:I

    invoke-direct {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->calculateOverflowHeight(I)I

    move-result v1

    add-int/2addr v1, v5

    add-int/2addr v1, v6

    .line 604
    .local v1, "floatingToolbarHeight":I
    iget-object v3, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v14

    add-int/2addr v3, v1

    .line 605
    .local v3, "floatingToolBarBottom":I
    iget-object v15, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v15, v15, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 606
    .local v15, "screenHeight":I
    if-le v3, v15, :cond_8

    if-ge v1, v14, :cond_8

    .line 607
    move/from16 v17, v1

    .end local v1    # "floatingToolbarHeight":I
    .local v17, "floatingToolbarHeight":I
    iget-object v1, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    sub-int v0, v2, v12

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int v9, v7, v14

    invoke-virtual {v1, v0, v9}, Landroid/graphics/Point;->set(II)V

    goto :goto_1

    .line 606
    .end local v17    # "floatingToolbarHeight":I
    .restart local v1    # "floatingToolbarHeight":I
    :cond_8
    move/from16 v17, v1

    .line 610
    .end local v1    # "floatingToolbarHeight":I
    .restart local v17    # "floatingToolbarHeight":I
    :goto_1
    return-void
.end method

.method private blacklist refreshViewPort()V
    .locals 2

    .line 970
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 971
    return-void
.end method

.method private blacklist runDismissAnimation()V
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 624
    return-void
.end method

.method private blacklist runHideAnimation()V
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 631
    return-void
.end method

.method private blacklist runShowAnimation()V
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mShowAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 617
    return-void
.end method

.method private blacklist setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "menuItemButton"    # Landroid/view/View;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .line 1282
    invoke-static {p2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->of(Landroid/view/MenuItem;)Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1283
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1284
    return-void
.end method

.method private blacklist setContentAreaAsTouchableSurface()V
    .locals 7

    .line 997
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    iget-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsOverflowOpen:Z

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 1003
    .local v0, "width":I
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .local v1, "height":I
    goto :goto_0

    .line 1005
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 1006
    .restart local v0    # "width":I
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 1008
    .restart local v1    # "height":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    .line 1009
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    .line 1010
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    .line 1011
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getX()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    .line 1012
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getY()F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v6, v1

    .line 1008
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 1013
    return-void
.end method

.method private static blacklist setHeight(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "height"    # I

    .line 1459
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1460
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p0, v1, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setSize(Landroid/view/View;II)V

    .line 1461
    return-void
.end method

.method private blacklist setPanelsStatesAtRestingPosition()V
    .locals 6

    .line 819
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 820
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->awakenScrollBars()Z

    .line 822
    iget-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsOverflowOpen:Z

    const/4 v1, 0x4

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 824
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    .line 825
    .local v0, "containerSize":Landroid/util/Size;
    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-static {v5, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 826
    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 827
    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 828
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setAlpha(F)V

    .line 829
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setVisibility(I)V

    .line 830
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 831
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    const v5, 0x1040409

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 835
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isInRTLMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 836
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 837
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setX(F)V

    .line 842
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    .line 843
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    .line 844
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    sget-object v3, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sLocalFloatingToolbarPopupExt:Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    .line 845
    invoke-interface {v3, v5}, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;->hookGetOverflowBtnExtraStartX(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 842
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setX(F)V

    .line 847
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setX(F)V

    goto :goto_0

    .line 849
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 850
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    sub-int/2addr v2, v5

    iget v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    .line 849
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 851
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 855
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    sget-object v2, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sLocalFloatingToolbarPopupExt:Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    invoke-interface {v2, v1}, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;->hookGetOverflowBtnExtraStartX(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setX(F)V

    .line 857
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setX(F)V

    .line 861
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v1, :cond_1

    .line 862
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginVertical:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 863
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    .line 864
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 863
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 865
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    .line 866
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 865
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setY(F)V

    .line 867
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setY(F)V

    goto :goto_1

    .line 870
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginVertical:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 871
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setY(F)V

    .line 872
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setY(F)V

    .line 873
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setY(F)V

    .line 875
    .end local v0    # "containerSize":Landroid/util/Size;
    :goto_1
    goto/16 :goto_3

    .line 877
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    .line 878
    .restart local v0    # "containerSize":Landroid/util/Size;
    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-static {v5, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 879
    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 880
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 881
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setAlpha(F)V

    .line 882
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setVisibility(I)V

    .line 883
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 884
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    const v3, 0x104040a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 887
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->hasOverflow()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 889
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isInRTLMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 890
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 891
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setX(F)V

    .line 892
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setX(F)V

    .line 893
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setX(F)V

    goto :goto_2

    .line 895
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 896
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 895
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 897
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setX(F)V

    .line 898
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    .line 899
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 898
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setX(F)V

    .line 900
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    .line 901
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 900
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setX(F)V

    .line 905
    :goto_2
    iget-boolean v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v1, :cond_4

    .line 906
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginVertical:I

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    .line 907
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 908
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 906
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 909
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setY(F)V

    .line 910
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setY(F)V

    .line 911
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    .line 912
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 911
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setY(F)V

    goto :goto_3

    .line 915
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginVertical:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 916
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setY(F)V

    .line 917
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setY(F)V

    .line 918
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setY(F)V

    goto :goto_3

    .line 922
    :cond_5
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 923
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginVertical:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 924
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setX(F)V

    .line 925
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setY(F)V

    .line 928
    .end local v0    # "containerSize":Landroid/util/Size;
    :goto_3
    return-void
.end method

.method private static blacklist setSize(Landroid/view/View;II)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1440
    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1441
    invoke-virtual {p0, p2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1442
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1443
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    move-object v0, v1

    .line 1444
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1445
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1446
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1447
    return-void
.end method

.method private static blacklist setSize(Landroid/view/View;Landroid/util/Size;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "size"    # Landroid/util/Size;

    .line 1450
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setSize(Landroid/view/View;II)V

    .line 1451
    return-void
.end method

.method private blacklist setTouchableSurfaceInsetsComputer()V
    .locals 2

    .line 1021
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 1022
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1023
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1024
    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 1025
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 1026
    return-void
.end method

.method private static blacklist setWidth(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I

    .line 1454
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1455
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p0, p1, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setSize(Landroid/view/View;II)V

    .line 1456
    return-void
.end method

.method private blacklist setZeroTouchableSurface()V
    .locals 1

    .line 990
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 991
    return-void
.end method

.method private blacklist show(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    .line 410
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    invoke-virtual {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    return-void

    .line 416
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mHidden:Z

    .line 417
    iput-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDismissed:Z

    .line 418
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->cancelDismissAndHideAnimations()V

    .line 419
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->cancelOverflowAnimations()V

    .line 421
    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V

    .line 426
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->preparePopupContent(Z)V

    .line 431
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParent:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 433
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setTouchableSurfaceInsetsComputer()V

    .line 434
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->runShowAnimation()V

    .line 435
    return-void
.end method

.method private blacklist updateCoordinates(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    .line 478
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    invoke-virtual {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->cancelOverflowAnimations()V

    .line 485
    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V

    .line 490
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->preparePopupContent(Z)V

    .line 495
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 497
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    .line 495
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 498
    return-void

    .line 481
    :cond_1
    :goto_0
    return-void
.end method

.method private static blacklist updateMenuItemButton(Landroid/view/View;Landroid/view/MenuItem;IZ)V
    .locals 5
    .param p0, "menuItemButton"    # Landroid/view/View;
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "iconTextSpacing"    # I
    .param p3, "showIcon"    # Z

    .line 1633
    sget-object v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sLocalFloatingToolbarPopupExt:Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    invoke-interface {v0, p0}, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;->hookUpdateMenuItemButtonForText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    .line 1634
    .local v0, "buttonText":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 1635
    const v1, 0x10202fa

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    .line 1638
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1639
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1640
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1642
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1643
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1649
    :goto_0
    sget-object v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sLocalFloatingToolbarPopupExt:Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    invoke-interface {v1, p0}, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;->hookUpdateMenuItemButtonForIcon(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v1

    .line 1650
    .local v1, "buttonIcon":Landroid/widget/ImageView;
    if-nez v1, :cond_2

    .line 1651
    const v4, 0x10202f8

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Landroid/widget/ImageView;

    .line 1654
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_4

    if-nez p3, :cond_3

    goto :goto_1

    .line 1660
    :cond_3
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1661
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1662
    if-eqz v0, :cond_5

    .line 1663
    invoke-virtual {v0, p2, v3, v3, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    goto :goto_2

    .line 1655
    :cond_4
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1656
    if-eqz v0, :cond_5

    .line 1657
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 1666
    :cond_5
    :goto_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1667
    .local v2, "contentDescription":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1668
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1670
    :cond_6
    invoke-virtual {p0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1672
    :goto_3
    return-void
.end method

.method private blacklist updateMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 4
    .param p2, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Landroid/view/MenuItem$OnMenuItemClickListener;",
            ")V"
        }
    .end annotation

    .line 364
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMenuItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 365
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 366
    .local v1, "menuItem":Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMenuItems:Ljava/util/Map;

    invoke-static {v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->of(Landroid/view/MenuItem;)Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    goto :goto_0

    .line 368
    :cond_0
    iput-object p2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 369
    return-void
.end method

.method private blacklist updateOverflowHeight(I)V
    .locals 6
    .param p1, "suggestedHeight"    # I

    .line 931
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->hasOverflow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 932
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    .line 933
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLineHeight:I

    div-int/2addr v0, v1

    .line 934
    .local v0, "maxItemSize":I
    invoke-direct {p0, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->calculateOverflowHeight(I)I

    move-result v1

    .line 935
    .local v1, "newHeight":I
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 936
    new-instance v2, Landroid/util/Size;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-direct {v2, v3, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    .line 938
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-static {v2, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 939
    iget-boolean v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsOverflowOpen:Z

    if-eqz v2, :cond_1

    .line 940
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-static {v2, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 941
    iget-boolean v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v2, :cond_2

    .line 942
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    .line 943
    .local v2, "deltaHeight":I
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    int-to-float v5, v2

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setY(F)V

    .line 944
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getY()F

    move-result v4

    int-to-float v5, v2

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setY(F)V

    .line 945
    .end local v2    # "deltaHeight":I
    goto :goto_0

    .line 947
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-static {v2, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 949
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updatePopupSize()V

    .line 951
    .end local v0    # "maxItemSize":I
    .end local v1    # "newHeight":I
    :cond_3
    return-void
.end method

.method private blacklist updatePopupSize()V
    .locals 4

    .line 954
    const/4 v0, 0x0

    .line 955
    .local v0, "width":I
    const/4 v1, 0x0

    .line 956
    .local v1, "height":I
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    if-eqz v2, :cond_0

    .line 957
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 958
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 960
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    if-eqz v2, :cond_1

    .line 961
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 962
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 964
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 965
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginVertical:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 966
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->maybeComputeTransitionDurationScale()V

    .line 967
    return-void
.end method


# virtual methods
.method public blacklist dismiss()V
    .locals 1

    .line 439
    iget-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDismissed:Z

    if-eqz v0, :cond_0

    .line 440
    return-void

    .line 443
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mHidden:Z

    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDismissed:Z

    .line 445
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 447
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->runDismissAnimation()V

    .line 448
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setZeroTouchableSurface()V

    .line 449
    return-void
.end method

.method public blacklist hide()V
    .locals 1

    .line 453
    invoke-virtual {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    return-void

    .line 457
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mHidden:Z

    .line 458
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->runHideAnimation()V

    .line 459
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setZeroTouchableSurface()V

    .line 460
    return-void
.end method

.method public blacklist isHidden()Z
    .locals 1

    .line 469
    iget-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mHidden:Z

    return v0
.end method

.method public blacklist isShowing()Z
    .locals 1

    .line 464
    iget-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDismissed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic blacklist lambda$createOverflowButton$1$com-android-internal-widget-floatingtoolbar-LocalFloatingToolbarPopup(Landroid/widget/ImageButton;Landroid/view/View;)V
    .locals 1
    .param p1, "overflowButton"    # Landroid/widget/ImageButton;
    .param p2, "v"    # Landroid/view/View;

    .line 1348
    iget-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsOverflowOpen:Z

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1350
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 1351
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->closeOverflow()V

    goto :goto_0

    .line 1353
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1354
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 1355
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->openOverflow()V

    .line 1357
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$createOverflowPanel$2$com-android-internal-widget-floatingtoolbar-LocalFloatingToolbarPopup(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "overflowPanel"    # Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;
    .param p2, "parent"    # Landroid/widget/AdapterView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "position"    # I
    .param p5, "id"    # J

    .line 1386
    invoke-virtual {p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    .line 1387
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v1, :cond_0

    .line 1388
    invoke-interface {v1, v0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    .line 1390
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$new$0$com-android-internal-widget-floatingtoolbar-LocalFloatingToolbarPopup(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 145
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 146
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 147
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 148
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 150
    return-void
.end method

.method public blacklist layoutMainPanelItems(Ljava/util/List;I)Ljava/util/List;
    .locals 17
    .param p2, "toolbarWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .line 1046
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    move/from16 v1, p2

    .line 1050
    .local v1, "availableWidth":I
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 1052
    .local v2, "remainingMenuItems":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/view/MenuItem;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 1053
    .local v3, "overflowMenuItems":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/view/MenuItem;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const v6, 0x1020041

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/MenuItem;

    .line 1054
    .local v5, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    if-eq v7, v6, :cond_0

    .line 1055
    invoke-interface {v5}, Landroid/view/MenuItem;->requiresOverflow()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1056
    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1058
    :cond_0
    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1060
    .end local v5    # "menuItem":Landroid/view/MenuItem;
    :goto_1
    goto :goto_0

    .line 1061
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1063
    iget-object v4, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1064
    iget-object v4, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 1066
    const/4 v4, -0x1

    .line 1067
    .local v4, "lastGroupId":I
    const/4 v7, 0x1

    .line 1068
    .local v7, "isFirstItem":Z
    :goto_2
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_b

    .line 1069
    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/MenuItem;

    .line 1074
    .local v8, "menuItem":Landroid/view/MenuItem;
    if-nez v7, :cond_2

    invoke-interface {v8}, Landroid/view/MenuItem;->requiresOverflow()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1075
    move/from16 v9, p2

    goto/16 :goto_7

    .line 1078
    :cond_2
    const/4 v9, 0x1

    if-eqz v7, :cond_3

    invoke-interface {v8}, Landroid/view/MenuItem;->getItemId()I

    move-result v10

    if-ne v10, v6, :cond_3

    move v10, v9

    goto :goto_3

    :cond_3
    move v10, v5

    .line 1079
    .local v10, "showIcon":Z
    :goto_3
    iget-object v11, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    iget v12, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIconTextSpacing:I

    invoke-static {v11, v8, v12, v10}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;IZ)Landroid/view/View;

    move-result-object v11

    .line 1081
    .local v11, "menuItemButton":Landroid/view/View;
    if-nez v10, :cond_4

    instance-of v12, v11, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_4

    .line 1082
    move-object v12, v11

    check-cast v12, Landroid/widget/LinearLayout;

    const/16 v13, 0x11

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1086
    :cond_4
    if-eqz v7, :cond_5

    .line 1087
    sget-object v12, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sLocalFloatingToolbarPopupExt:Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    .line 1092
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v11}, Landroid/view/View;->getPaddingStart()I

    move-result v14

    invoke-interface {v12, v13, v14}, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;->hookGetFirstItemPaddingStart(Landroid/content/Context;I)I

    move-result v12

    .line 1094
    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    .line 1095
    invoke-virtual {v11}, Landroid/view/View;->getPaddingEnd()I

    move-result v14

    .line 1096
    invoke-virtual {v11}, Landroid/view/View;->getPaddingBottom()I

    move-result v15

    .line 1087
    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1100
    :cond_5
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v12

    if-ne v12, v9, :cond_6

    move v12, v9

    goto :goto_4

    :cond_6
    move v12, v5

    .line 1101
    .local v12, "isLastItem":Z
    :goto_4
    if-eqz v12, :cond_7

    .line 1102
    nop

    .line 1103
    invoke-virtual {v11}, Landroid/view/View;->getPaddingStart()I

    move-result v13

    .line 1104
    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    sget-object v15, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sLocalFloatingToolbarPopupExt:Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;

    .line 1109
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v11}, Landroid/view/View;->getPaddingEnd()I

    move-result v9

    invoke-interface {v15, v6, v9}, Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;->hookGetLastItemPaddingEnd(Landroid/content/Context;I)I

    move-result v6

    .line 1111
    invoke-virtual {v11}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    .line 1102
    invoke-virtual {v11, v13, v14, v6, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1114
    :cond_7
    invoke-virtual {v11, v5, v5}, Landroid/view/View;->measure(II)V

    .line 1115
    nop

    .line 1116
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 1115
    move/from16 v9, p2

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1119
    .local v6, "menuItemButtonWidth":I
    iget-object v13, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    .line 1120
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v13

    sub-int v13, v1, v13

    if-gt v6, v13, :cond_8

    const/4 v13, 0x1

    goto :goto_5

    :cond_8
    move v13, v5

    .line 1121
    .local v13, "canFitWithOverflow":Z
    :goto_5
    if-eqz v12, :cond_9

    if-gt v6, v1, :cond_9

    const/16 v16, 0x1

    goto :goto_6

    :cond_9
    move/from16 v16, v5

    :goto_6
    move/from16 v14, v16

    .line 1123
    .local v14, "canFitNoOverflow":Z
    if-nez v13, :cond_a

    if-eqz v14, :cond_c

    .line 1124
    :cond_a
    invoke-direct {v0, v11, v8}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V

    .line 1126
    invoke-interface {v8}, Landroid/view/MenuItem;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 1127
    iget-object v15, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v15, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1128
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 1129
    .local v15, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v6, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1130
    invoke-virtual {v11, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1131
    sub-int/2addr v1, v6

    .line 1132
    invoke-virtual {v2}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 1136
    .end local v15    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-interface {v8}, Landroid/view/MenuItem;->getGroupId()I

    move-result v4

    .line 1137
    const/4 v7, 0x0

    .line 1138
    .end local v6    # "menuItemButtonWidth":I
    .end local v8    # "menuItem":Landroid/view/MenuItem;
    .end local v10    # "showIcon":Z
    .end local v11    # "menuItemButton":Landroid/view/View;
    .end local v12    # "isLastItem":Z
    .end local v13    # "canFitWithOverflow":Z
    .end local v14    # "canFitNoOverflow":Z
    const v6, 0x1020041

    goto/16 :goto_2

    .line 1068
    :cond_b
    move/from16 v9, p2

    .line 1140
    :cond_c
    :goto_7
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    .line 1142
    iget-object v6, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    iget-object v8, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v6, v5, v5, v8, v5}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 1145
    :cond_d
    iget-object v5, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-static {v5}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->measure(Landroid/view/View;)Landroid/util/Size;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    .line 1146
    return-object v2
.end method

.method public blacklist setOutsideTouchable(ZLandroid/widget/PopupWindow$OnDismissListener;)Z
    .locals 3
    .param p1, "outsideTouchable"    # Z
    .param p2, "onDismiss"    # Landroid/widget/PopupWindow$OnDismissListener;

    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isOutsideTouchable()Z

    move-result v1

    xor-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 329
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 330
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V

    .line 331
    const/4 v0, 0x1

    .line 333
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 334
    return v0
.end method

.method public blacklist setSuggestedWidth(I)V
    .locals 7
    .param p1, "suggestedWidth"    # I

    .line 386
    iget v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mSuggestedWidth:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 387
    .local v0, "difference":I
    int-to-double v1, v0

    iget v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mSuggestedWidth:I

    int-to-double v3, v3

    const-wide v5, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mWidthChanged:Z

    .line 388
    iput p1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mSuggestedWidth:I

    .line 389
    return-void
.end method

.method public blacklist setWidthChanged(Z)V
    .locals 0
    .param p1, "widthChanged"    # Z

    .line 380
    iput-boolean p1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mWidthChanged:Z

    .line 381
    return-void
.end method

.method public blacklist show(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;Landroid/graphics/Rect;)V
    .locals 1
    .param p2, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;
    .param p3, "contentRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Landroid/view/MenuItem$OnMenuItemClickListener;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 394
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isLayoutRequired(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mWidthChanged:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 398
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    goto :goto_1

    .line 395
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->dismiss()V

    .line 396
    iget v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mSuggestedWidth:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->layoutMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;I)V

    .line 400
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 401
    invoke-direct {p0, p3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->show(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 402
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPreviousContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 403
    invoke-direct {p0, p3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateCoordinates(Landroid/graphics/Rect;)V

    .line 405
    :cond_3
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mWidthChanged:Z

    .line 406
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPreviousContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 407
    return-void
.end method
