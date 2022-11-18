.class public interface abstract Lcom/android/internal/widget/IResolverDrawerLayoutExt;
.super Ljava/lang/Object;
.source "IResolverDrawerLayoutExt.java"


# static fields
.field public static final blacklist DEFAULT:Lcom/android/internal/widget/IResolverDrawerLayoutExt;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/android/internal/widget/IResolverDrawerLayoutExt$1;

    invoke-direct {v0}, Lcom/android/internal/widget/IResolverDrawerLayoutExt$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/IResolverDrawerLayoutExt;->DEFAULT:Lcom/android/internal/widget/IResolverDrawerLayoutExt;

    return-void
.end method


# virtual methods
.method public blacklist customOnNestedScroll(FII)V
    .locals 0
    .param p1, "velocityY"    # F
    .param p2, "mCollapsibleHeight"    # I
    .param p3, "mUncollapsibleHeight"    # I

    .line 48
    return-void
.end method

.method public blacklist customOnStopNestedScroll(FII)V
    .locals 0
    .param p1, "mCollapseOffset"    # F
    .param p2, "mCollapsibleHeight"    # I
    .param p3, "mUncollapsibleHeight"    # I

    .line 70
    return-void
.end method

.method public blacklist customOnTouchEventMove(FLandroid/widget/AbsListView;Lcom/android/internal/widget/RecyclerView;F)V
    .locals 0
    .param p1, "dy"    # F
    .param p2, "mNestedListChild"    # Landroid/widget/AbsListView;
    .param p3, "mNestedRecyclerChild"    # Lcom/android/internal/widget/RecyclerView;
    .param p4, "mCollapseOffset"    # F

    .line 25
    return-void
.end method

.method public blacklist customOnTouchEventUpFling(FFII)V
    .locals 0
    .param p1, "yvel"    # F
    .param p2, "mCollapseOffset"    # F
    .param p3, "mCollapsibleHeight"    # I
    .param p4, "mUncollapsibleHeight"    # I

    .line 41
    return-void
.end method

.method public blacklist customOnTouchEventUpScrollBack(FII)V
    .locals 0
    .param p1, "mCollapseOffset"    # F
    .param p2, "mCollapsibleHeight"    # I
    .param p3, "mUncollapsibleHeight"    # I

    .line 33
    return-void
.end method

.method public blacklist hookonStartNestedScroll(Landroid/view/View;)V
    .locals 0
    .param p1, "targetView"    # Landroid/view/View;

    .line 62
    return-void
.end method

.method public blacklist hookresetTouch()V
    .locals 0

    .line 53
    return-void
.end method

.method public blacklist hooksmoothScrollTo(ZLcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V
    .locals 0
    .param p1, "mDismissOnScrollerFinished"    # Z
    .param p2, "mOnDismissedListener"    # Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    .line 57
    return-void
.end method

.method public blacklist isNestedScrollChildScrolled(ZF)Z
    .locals 1
    .param p1, "upToDown"    # Z
    .param p2, "mCollapseOffset"    # F

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isOpShareUi()Z
    .locals 1

    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldHookOnTouchEventMove()Z
    .locals 1

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldHookOnTouchEventUpFling()Z
    .locals 1

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldHookOnTouchEventUpScrollBack()Z
    .locals 1

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldHookonNestedScroll()Z
    .locals 1

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldHookonStopNestedScroll()Z
    .locals 1

    .line 65
    const/4 v0, 0x0

    return v0
.end method
