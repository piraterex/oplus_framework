.class public final Landroid/view/AccessibilityInteractionController;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/AccessibilityInteractionController$VirtualNode;,
        Landroid/view/AccessibilityInteractionController$ViewNode;,
        Landroid/view/AccessibilityInteractionController$DequeNode;,
        Landroid/view/AccessibilityInteractionController$PrefetchDeque;,
        Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;,
        Landroid/view/AccessibilityInteractionController$MessageHolder;,
        Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;,
        Landroid/view/AccessibilityInteractionController$PrivateHandler;,
        Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;
    }
.end annotation


# static fields
.field private static final greylist-max-o CONSIDER_REQUEST_PREPARERS:Z = false

.field private static final greylist-max-o ENFORCE_NODE_TREE_CONSISTENT:Z = false

.field private static final blacklist FLAGS_AFFECTING_REPORTED_DATA:I = 0x180

.field private static final greylist-max-o IGNORE_REQUEST_PREPARERS:Z = true

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "AccessibilityInteractionController"

.field private static final greylist-max-o REQUEST_PREPARER_TIMEOUT_MS:J = 0x1f4L


# instance fields
.field private final greylist-max-o mA11yManager:Landroid/view/accessibility/AccessibilityManager;

.field private greylist-max-o mActiveRequestPreparerId:I

.field private greylist-max-o mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

.field private final blacklist mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mMessagesWaitingForRequestPreparer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/AccessibilityInteractionController$MessageHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mMyLooperThreadId:J

.field private final greylist-max-o mMyProcessId:I

.field private greylist-max-o mNumActiveRequestPreparers:I

.field private blacklist mPendingFindNodeByIdMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

.field private final greylist-max-o mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTempArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private final blacklist mTempRectF:Landroid/graphics/RectF;

.field private final greylist-max-o mViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/view/AccessibilityInteractionController;)Landroid/view/AccessibilityInteractionController$PrivateHandler;
    .locals 0

    iget-object p0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrefetcher(Landroid/view/AccessibilityInteractionController;)Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;
    .locals 0

    iget-object p0, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewRootImpl(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;
    .locals 0

    iget-object p0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mclearAccessibilityFocusUiThread(Landroid/view/AccessibilityInteractionController;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->clearAccessibilityFocusUiThread()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfindAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfindAccessibilityNodeInfosByTextUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfindAccessibilityNodeInfosByViewIdUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfindFocusUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findFocusUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfocusSearchUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->focusSearchUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misShown(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyOutsideTouchUiThread(Landroid/view/AccessibilityInteractionController;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->notifyOutsideTouchUiThread()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mperformAccessibilityActionUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->performAccessibilityActionUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprepareForExtraDataRequestUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->prepareForExtraDataRequestUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestPreparerDoneUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->requestPreparerDoneUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestPreparerTimeoutUiThread(Landroid/view/AccessibilityInteractionController;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->requestPreparerTimeoutUiThread()V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/view/ViewRootImpl;)V
    .locals 3
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 115
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRectF:Landroid/graphics/RectF;

    .line 130
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 131
    .local v0, "looper":Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    .line 132
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    .line 133
    new-instance v1, Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-direct {v1, p0, v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    .line 134
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 135
    new-instance v1, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher-IA;)V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    .line 136
    iget-object v1, p1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mPendingFindNodeByIdMessages:Ljava/util/ArrayList;

    .line 138
    return-void
.end method

.method private blacklist adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;Landroid/view/MagnificationSpec;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "interactiveRegion"    # Landroid/graphics/Region;
    .param p3, "spec"    # Landroid/view/MagnificationSpec;

    .line 894
    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 897
    :cond_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 898
    .local v0, "boundsInScreen":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 899
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v1

    if-nez v1, :cond_1

    .line 900
    iget v1, p3, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v1, v1

    float-to-int v1, v1

    iget v2, p3, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 901
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p3, Landroid/view/MagnificationSpec;->scale:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 904
    :cond_1
    invoke-virtual {p2, v0}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->shouldBypassAdjustIsVisible()Z

    move-result v1

    if-nez v1, :cond_2

    .line 905
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 907
    :cond_2
    return-void

    .line 895
    .end local v0    # "boundsInScreen":Landroid/graphics/Rect;
    :cond_3
    :goto_0
    return-void
.end method

.method private greylist-max-o applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "spec"    # Landroid/view/MagnificationSpec;

    .line 964
    if-nez p1, :cond_0

    .line 965
    return-void

    .line 968
    :cond_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 969
    .local v0, "applicationScale":F
    invoke-direct {p0, v0, p2}, Landroid/view/AccessibilityInteractionController;->shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 970
    return-void

    .line 972
    :cond_1
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 974
    .local v1, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 975
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_2

    .line 976
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 978
    :cond_2
    if-eqz p2, :cond_3

    .line 979
    iget v2, p2, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->scale(F)V

    .line 982
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 983
    return-void
.end method

.method private blacklist applyHostWindowMatrixIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 923
    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->shouldBypassApplyWindowMatrix()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 926
    :cond_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 927
    .local v0, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRectF:Landroid/graphics/RectF;

    .line 928
    .local v1, "transformedBounds":Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mWindowMatrixInEmbeddedHierarchy:Landroid/graphics/Matrix;

    .line 930
    .local v2, "windowMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 931
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 932
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 933
    iget v3, v1, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v1, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 935
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 936
    return-void

    .line 924
    .end local v0    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v1    # "transformedBounds":Landroid/graphics/RectF;
    .end local v2    # "windowMatrix":Landroid/graphics/Matrix;
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist associateLeashedParentIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 944
    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->shouldBypassAssociateLeashedParent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 949
    :cond_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    .line 950
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 951
    return-void

    .line 953
    :cond_1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mLeashedParentToken:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mLeashedParentAccessibilityViewId:I

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLeashedParent(Landroid/os/IBinder;I)V

    .line 955
    return-void

    .line 945
    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist clearAccessibilityFocusUiThread()V
    .locals 8

    .line 821
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    goto :goto_2

    .line 825
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/16 v2, 0x80

    iput v2, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 827
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 828
    .local v1, "root":Landroid/view/View;
    if-eqz v1, :cond_4

    invoke-direct {p0, v1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 829
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 832
    .local v2, "host":Landroid/view/View;
    if-eqz v2, :cond_3

    invoke-static {v2, v1}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 835
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    .line 836
    .local v3, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 838
    .local v4, "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v5, 0x0

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 839
    nop

    .line 840
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v6

    .line 839
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v6

    .line 841
    .local v6, "virtualNodeId":I
    sget-object v7, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 842
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v7

    .line 841
    invoke-virtual {v3, v6, v7, v5}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 844
    nop

    .end local v6    # "virtualNodeId":I
    goto :goto_1

    .line 845
    :cond_2
    sget-object v6, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 846
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v6

    .line 845
    invoke-virtual {v2, v6, v5}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 851
    .end local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v4    # "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_3
    :goto_0
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v0, v3, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 833
    return-void

    .line 851
    .end local v1    # "root":Landroid/view/View;
    .end local v2    # "host":Landroid/view/View;
    :cond_4
    :goto_1
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v0, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 852
    nop

    .line 853
    return-void

    .line 851
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v0, v2, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 852
    throw v1

    .line 822
    :cond_5
    :goto_2
    return-void
.end method

.method private greylist-max-o findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V
    .locals 25
    .param p1, "message"    # Landroid/os/Message;

    .line 331
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v1, v8, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 332
    :try_start_0
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mPendingFindNodeByIdMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 333
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 334
    iget v10, v9, Landroid/os/Message;->arg1:I

    .line 336
    .local v10, "flags":I
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lcom/android/internal/os/SomeArgs;

    .line 337
    .local v11, "args":Lcom/android/internal/os/SomeArgs;
    iget v12, v11, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 338
    .local v12, "accessibilityViewId":I
    iget v13, v11, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 339
    .local v13, "virtualDescendantId":I
    iget v14, v11, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 340
    .local v14, "interactionId":I
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 342
    .local v15, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/view/MagnificationSpec;

    .line 343
    .local v7, "spec":Landroid/view/MagnificationSpec;
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/graphics/Region;

    .line 344
    .local v6, "interactiveRegion":Landroid/graphics/Region;
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    .line 345
    .local v5, "arguments":Landroid/os/Bundle;
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, [F

    .line 347
    .local v4, "matrixValues":[F
    invoke-virtual {v11}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 349
    const/16 v16, 0x0

    .line 350
    .local v16, "requestedView":Landroid/view/View;
    const/4 v3, 0x0

    .line 351
    .local v3, "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    and-int/lit8 v0, v10, 0x20

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 354
    .local v1, "interruptPrefetch":Z
    iget-object v2, v8, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 355
    .local v2, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 357
    :try_start_1
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v0, :cond_c

    :try_start_2
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_1

    move/from16 v17, v1

    move-object/from16 v21, v5

    move-object/from16 v19, v11

    move/from16 v24, v12

    move-object v11, v2

    move-object v12, v7

    move-object v7, v6

    move-object v6, v4

    goto/16 :goto_7

    .line 360
    :cond_1
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v10, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 361
    invoke-direct {v8, v12}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v16, v0

    .line 362
    move-object/from16 v9, v16

    .end local v16    # "requestedView":Landroid/view/View;
    .local v9, "requestedView":Landroid/view/View;
    if-eqz v9, :cond_4

    :try_start_3
    invoke-direct {v8, v9}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 363
    invoke-direct {v8, v9, v5, v13}, Landroid/view/AccessibilityInteractionController;->populateAccessibilityNodeInfoForView(Landroid/view/View;Landroid/os/Bundle;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    move-object v3, v0

    .line 365
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    invoke-static {v0, v1}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->-$$Nest$fputmInterruptPrefetch(Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;Z)V

    .line 366
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v19, v4

    .end local v4    # "matrixValues":[F
    .local v19, "matrixValues":[F
    and-int/lit8 v4, v10, 0x3f

    :try_start_4
    invoke-static {v0, v4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->-$$Nest$fputmFetchFlags(Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;I)V

    .line 368
    if-nez v1, :cond_3

    .line 369
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    .line 371
    if-nez v3, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 370
    :goto_1
    invoke-virtual {v0, v9, v4, v2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchAccessibilityNodeInfos(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)V

    .line 373
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v4, 0x0

    iput v4, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 368
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 377
    :catchall_0
    move-exception v0

    move/from16 v17, v1

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v16, v9

    move/from16 v24, v12

    move-object/from16 v20, v19

    move-object v9, v3

    move-object v12, v7

    move-object/from16 v19, v11

    const/4 v7, 0x0

    move-object v11, v2

    goto/16 :goto_9

    .end local v19    # "matrixValues":[F
    .restart local v4    # "matrixValues":[F
    :catchall_1
    move-exception v0

    move/from16 v17, v1

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v16, v9

    move-object/from16 v19, v11

    move/from16 v24, v12

    move-object v11, v2

    move-object v9, v3

    move-object v12, v7

    const/4 v7, 0x0

    .end local v4    # "matrixValues":[F
    .restart local v19    # "matrixValues":[F
    goto/16 :goto_9

    .line 362
    .end local v19    # "matrixValues":[F
    .restart local v4    # "matrixValues":[F
    :cond_4
    move-object/from16 v19, v4

    const/4 v4, 0x0

    .line 377
    .end local v4    # "matrixValues":[F
    .restart local v19    # "matrixValues":[F
    :goto_2
    move-object v0, v3

    .end local v3    # "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v0, "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v1, :cond_7

    .line 379
    move/from16 v17, v1

    .end local v1    # "interruptPrefetch":Z
    .local v17, "interruptPrefetch":Z
    move-object/from16 v1, p0

    move-object v4, v2

    .end local v2    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v4, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    move-object v3, v15

    move-object/from16 v20, v19

    move-object/from16 v19, v11

    move-object v11, v4

    .end local v4    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v11, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v19, "args":Lcom/android/internal/os/SomeArgs;
    .local v20, "matrixValues":[F
    move v4, v14

    move-object/from16 v21, v5

    .end local v5    # "arguments":Landroid/os/Bundle;
    .local v21, "arguments":Landroid/os/Bundle;
    move-object v5, v7

    move-object/from16 v22, v6

    .end local v6    # "interactiveRegion":Landroid/graphics/Region;
    .local v22, "interactiveRegion":Landroid/graphics/Region;
    move-object/from16 v6, v20

    move-object/from16 v23, v7

    .end local v7    # "spec":Landroid/view/MagnificationSpec;
    .local v23, "spec":Landroid/view/MagnificationSpec;
    move-object/from16 v7, v22

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 382
    nop

    .line 383
    if-nez v0, :cond_5

    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    move-object v1, v0

    :goto_3
    invoke-direct {v8, v1, v11, v10}, Landroid/view/AccessibilityInteractionController;->getSatisfiedRequestInPrefetch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;

    move-result-object v1

    .line 385
    .local v1, "satisfiedRequest":Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;
    if-eqz v1, :cond_6

    .line 386
    invoke-direct {v8, v1}, Landroid/view/AccessibilityInteractionController;->returnFindNodeResult(Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;)V

    .line 388
    :cond_6
    return-void

    .line 391
    .end local v17    # "interruptPrefetch":Z
    .end local v20    # "matrixValues":[F
    .end local v21    # "arguments":Landroid/os/Bundle;
    .end local v22    # "interactiveRegion":Landroid/graphics/Region;
    .end local v23    # "spec":Landroid/view/MagnificationSpec;
    .local v1, "interruptPrefetch":Z
    .restart local v2    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v5    # "arguments":Landroid/os/Bundle;
    .restart local v6    # "interactiveRegion":Landroid/graphics/Region;
    .restart local v7    # "spec":Landroid/view/MagnificationSpec;
    .local v11, "args":Lcom/android/internal/os/SomeArgs;
    .local v19, "matrixValues":[F
    :cond_7
    move/from16 v17, v1

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v20, v19

    move-object/from16 v19, v11

    move-object v11, v2

    .line 392
    .end local v1    # "interruptPrefetch":Z
    .end local v2    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v5    # "arguments":Landroid/os/Bundle;
    .end local v6    # "interactiveRegion":Landroid/graphics/Region;
    .end local v7    # "spec":Landroid/view/MagnificationSpec;
    .local v11, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v17    # "interruptPrefetch":Z
    .local v19, "args":Lcom/android/internal/os/SomeArgs;
    .restart local v20    # "matrixValues":[F
    .restart local v21    # "arguments":Landroid/os/Bundle;
    .restart local v22    # "interactiveRegion":Landroid/graphics/Region;
    .restart local v23    # "spec":Landroid/view/MagnificationSpec;
    if-nez v0, :cond_8

    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    move-object v2, v1

    .line 391
    :goto_4
    move-object/from16 v1, p0

    move v7, v4

    move-object v3, v15

    move v4, v14

    move-object/from16 v5, v23

    move-object/from16 v6, v20

    move/from16 v24, v12

    move v12, v7

    .end local v12    # "accessibilityViewId":I
    .local v24, "accessibilityViewId":I
    move-object/from16 v7, v22

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 395
    nop

    .line 396
    iget-object v1, v8, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    .line 397
    if-nez v0, :cond_9

    const/4 v2, 0x0

    goto :goto_5

    :cond_9
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 396
    :goto_5
    invoke-virtual {v1, v9, v2, v11}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchAccessibilityNodeInfos(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)V

    .line 398
    iget-object v1, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v12, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 399
    move-object/from16 v6, v20

    move-object/from16 v7, v22

    move-object/from16 v12, v23

    .end local v20    # "matrixValues":[F
    .end local v22    # "interactiveRegion":Landroid/graphics/Region;
    .end local v23    # "spec":Landroid/view/MagnificationSpec;
    .local v6, "matrixValues":[F
    .local v7, "interactiveRegion":Landroid/graphics/Region;
    .local v12, "spec":Landroid/view/MagnificationSpec;
    invoke-direct {v8, v11, v12, v6, v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewPort(Ljava/util/List;Landroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 400
    nop

    .line 401
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_6

    :cond_a
    move-object v1, v0

    :goto_6
    invoke-direct {v8, v1, v11, v10}, Landroid/view/AccessibilityInteractionController;->getSatisfiedRequestInPrefetch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;

    move-result-object v1

    .line 405
    .local v1, "satisfiedRequest":Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;
    invoke-direct {v8, v14, v11, v15}, Landroid/view/AccessibilityInteractionController;->returnPrefetchResult(ILjava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    .line 407
    if-eqz v1, :cond_b

    .line 408
    invoke-direct {v8, v1}, Landroid/view/AccessibilityInteractionController;->returnFindNodeResult(Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;)V

    .line 410
    :cond_b
    return-void

    .line 377
    .end local v0    # "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v9    # "requestedView":Landroid/view/View;
    .end local v17    # "interruptPrefetch":Z
    .end local v19    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v21    # "arguments":Landroid/os/Bundle;
    .end local v24    # "accessibilityViewId":I
    .local v1, "interruptPrefetch":Z
    .restart local v2    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v3    # "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v4, "matrixValues":[F
    .restart local v5    # "arguments":Landroid/os/Bundle;
    .local v6, "interactiveRegion":Landroid/graphics/Region;
    .local v7, "spec":Landroid/view/MagnificationSpec;
    .local v11, "args":Lcom/android/internal/os/SomeArgs;
    .local v12, "accessibilityViewId":I
    .restart local v16    # "requestedView":Landroid/view/View;
    :catchall_2
    move-exception v0

    move/from16 v17, v1

    move-object/from16 v21, v5

    move-object/from16 v19, v11

    move/from16 v24, v12

    move-object v11, v2

    move-object v12, v7

    move-object v7, v6

    move-object v9, v3

    move-object/from16 v20, v4

    move-object/from16 v22, v7

    const/4 v7, 0x0

    .end local v1    # "interruptPrefetch":Z
    .end local v2    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v4    # "matrixValues":[F
    .end local v5    # "arguments":Landroid/os/Bundle;
    .local v6, "matrixValues":[F
    .local v7, "interactiveRegion":Landroid/graphics/Region;
    .local v11, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v12, "spec":Landroid/view/MagnificationSpec;
    .restart local v17    # "interruptPrefetch":Z
    .restart local v19    # "args":Lcom/android/internal/os/SomeArgs;
    .restart local v21    # "arguments":Landroid/os/Bundle;
    .restart local v24    # "accessibilityViewId":I
    goto/16 :goto_9

    .line 357
    .end local v17    # "interruptPrefetch":Z
    .end local v19    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v21    # "arguments":Landroid/os/Bundle;
    .end local v24    # "accessibilityViewId":I
    .restart local v1    # "interruptPrefetch":Z
    .restart local v2    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v4    # "matrixValues":[F
    .restart local v5    # "arguments":Landroid/os/Bundle;
    .local v6, "interactiveRegion":Landroid/graphics/Region;
    .local v7, "spec":Landroid/view/MagnificationSpec;
    .local v11, "args":Lcom/android/internal/os/SomeArgs;
    .local v12, "accessibilityViewId":I
    :cond_c
    move/from16 v17, v1

    move-object/from16 v21, v5

    move-object/from16 v19, v11

    move/from16 v24, v12

    move-object v11, v2

    move-object v12, v7

    move-object v7, v6

    move-object v6, v4

    .line 377
    .end local v1    # "interruptPrefetch":Z
    .end local v2    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v4    # "matrixValues":[F
    .end local v5    # "arguments":Landroid/os/Bundle;
    .local v6, "matrixValues":[F
    .local v7, "interactiveRegion":Landroid/graphics/Region;
    .local v11, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v12, "spec":Landroid/view/MagnificationSpec;
    .restart local v17    # "interruptPrefetch":Z
    .restart local v19    # "args":Lcom/android/internal/os/SomeArgs;
    .restart local v21    # "arguments":Landroid/os/Bundle;
    .restart local v24    # "accessibilityViewId":I
    :goto_7
    if-nez v17, :cond_e

    .line 379
    move-object/from16 v1, p0

    move-object v2, v11

    move-object v9, v3

    .end local v3    # "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v9, "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object v3, v15

    move v4, v14

    move-object v5, v12

    move-object/from16 v20, v6

    .end local v6    # "matrixValues":[F
    .restart local v20    # "matrixValues":[F
    move-object/from16 v22, v7

    .end local v7    # "interactiveRegion":Landroid/graphics/Region;
    .restart local v22    # "interactiveRegion":Landroid/graphics/Region;
    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 382
    nop

    .line 383
    const/4 v7, 0x0

    invoke-direct {v8, v7, v11, v10}, Landroid/view/AccessibilityInteractionController;->getSatisfiedRequestInPrefetch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;

    move-result-object v0

    .line 385
    .local v0, "satisfiedRequest":Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;
    if-eqz v0, :cond_d

    .line 386
    invoke-direct {v8, v0}, Landroid/view/AccessibilityInteractionController;->returnFindNodeResult(Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;)V

    .line 388
    :cond_d
    return-void

    .line 391
    .end local v0    # "satisfiedRequest":Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;
    .end local v9    # "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v20    # "matrixValues":[F
    .end local v22    # "interactiveRegion":Landroid/graphics/Region;
    .restart local v3    # "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v6    # "matrixValues":[F
    .restart local v7    # "interactiveRegion":Landroid/graphics/Region;
    :cond_e
    move-object v9, v3

    move-object/from16 v20, v6

    move-object/from16 v22, v7

    const/4 v7, 0x0

    .line 392
    .end local v3    # "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6    # "matrixValues":[F
    .end local v7    # "interactiveRegion":Landroid/graphics/Region;
    .restart local v9    # "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v20    # "matrixValues":[F
    .restart local v22    # "interactiveRegion":Landroid/graphics/Region;
    if-nez v9, :cond_f

    move-object v2, v7

    goto :goto_8

    :cond_f
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    move-object v2, v0

    .line 391
    :goto_8
    move-object/from16 v1, p0

    move-object v3, v15

    move v4, v14

    move-object v5, v12

    move-object/from16 v6, v20

    move-object/from16 v7, v22

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 358
    return-void

    .line 377
    .end local v9    # "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v17    # "interruptPrefetch":Z
    .end local v19    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v20    # "matrixValues":[F
    .end local v21    # "arguments":Landroid/os/Bundle;
    .end local v22    # "interactiveRegion":Landroid/graphics/Region;
    .end local v24    # "accessibilityViewId":I
    .restart local v1    # "interruptPrefetch":Z
    .restart local v2    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v3    # "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v4    # "matrixValues":[F
    .restart local v5    # "arguments":Landroid/os/Bundle;
    .local v6, "interactiveRegion":Landroid/graphics/Region;
    .local v7, "spec":Landroid/view/MagnificationSpec;
    .local v11, "args":Lcom/android/internal/os/SomeArgs;
    .local v12, "accessibilityViewId":I
    :catchall_3
    move-exception v0

    move/from16 v17, v1

    move-object v9, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v19, v11

    move/from16 v24, v12

    move-object v11, v2

    move-object v12, v7

    const/4 v7, 0x0

    .end local v1    # "interruptPrefetch":Z
    .end local v2    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v3    # "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v4    # "matrixValues":[F
    .end local v5    # "arguments":Landroid/os/Bundle;
    .end local v6    # "interactiveRegion":Landroid/graphics/Region;
    .end local v7    # "spec":Landroid/view/MagnificationSpec;
    .restart local v9    # "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v11, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v12, "spec":Landroid/view/MagnificationSpec;
    .restart local v17    # "interruptPrefetch":Z
    .restart local v19    # "args":Lcom/android/internal/os/SomeArgs;
    .restart local v20    # "matrixValues":[F
    .restart local v21    # "arguments":Landroid/os/Bundle;
    .restart local v22    # "interactiveRegion":Landroid/graphics/Region;
    .restart local v24    # "accessibilityViewId":I
    :goto_9
    if-nez v17, :cond_12

    .line 379
    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v15

    move v4, v14

    move-object v5, v12

    move-object/from16 v6, v20

    move-object/from16 v18, v7

    move-object/from16 v7, v22

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 382
    nop

    .line 383
    if-nez v9, :cond_10

    move-object/from16 v0, v18

    goto :goto_a

    :cond_10
    move-object v0, v9

    :goto_a
    invoke-direct {v8, v0, v11, v10}, Landroid/view/AccessibilityInteractionController;->getSatisfiedRequestInPrefetch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;

    move-result-object v0

    .line 385
    .restart local v0    # "satisfiedRequest":Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;
    if-eqz v0, :cond_11

    .line 386
    invoke-direct {v8, v0}, Landroid/view/AccessibilityInteractionController;->returnFindNodeResult(Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;)V

    .line 388
    :cond_11
    return-void

    .line 391
    .end local v0    # "satisfiedRequest":Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;
    :cond_12
    move-object/from16 v18, v7

    .line 392
    if-nez v9, :cond_13

    move-object/from16 v2, v18

    goto :goto_b

    :cond_13
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    move-object v2, v1

    .line 391
    :goto_b
    move-object/from16 v1, p0

    move-object v3, v15

    move v4, v14

    move-object v5, v12

    move-object/from16 v6, v20

    move-object/from16 v7, v22

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 395
    throw v0

    .line 333
    .end local v9    # "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v10    # "flags":I
    .end local v11    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v12    # "spec":Landroid/view/MagnificationSpec;
    .end local v13    # "virtualDescendantId":I
    .end local v14    # "interactionId":I
    .end local v15    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v16    # "requestedView":Landroid/view/View;
    .end local v17    # "interruptPrefetch":Z
    .end local v19    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v20    # "matrixValues":[F
    .end local v21    # "arguments":Landroid/os/Bundle;
    .end local v22    # "interactiveRegion":Landroid/graphics/Region;
    .end local v24    # "accessibilityViewId":I
    :catchall_4
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0
.end method

.method private greylist-max-o findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V
    .locals 22
    .param p1, "message"    # Landroid/os/Message;

    .line 525
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget v10, v9, Landroid/os/Message;->arg1:I

    .line 527
    .local v10, "flags":I
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lcom/android/internal/os/SomeArgs;

    .line 528
    .local v11, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 529
    .local v12, "text":Ljava/lang/String;
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 531
    .local v13, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Landroid/view/MagnificationSpec;

    .line 532
    .local v14, "spec":Landroid/view/MagnificationSpec;
    iget v15, v11, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 533
    .local v15, "accessibilityViewId":I
    iget v7, v11, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 534
    .local v7, "virtualDescendantId":I
    iget v6, v11, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 535
    .local v6, "interactionId":I
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/graphics/Region;

    .line 536
    .local v16, "interactiveRegion":Landroid/graphics/Region;
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [F

    .line 537
    .local v17, "matrixValues":[F
    invoke-virtual {v11}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 539
    const/16 v18, 0x0

    .line 541
    .local v18, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :try_start_0
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    move/from16 v19, v6

    move/from16 v20, v7

    goto/16 :goto_3

    .line 544
    :cond_0
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v10, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 545
    invoke-direct {v8, v15}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 546
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_8

    :try_start_1
    invoke-direct {v8, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 547
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    .line 548
    .local v2, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v2, :cond_1

    .line 549
    invoke-virtual {v2, v12, v7}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    move-object/from16 v18, v3

    goto/16 :goto_2

    .line 551
    :cond_1
    const/4 v3, -0x1

    if-ne v7, v3, :cond_7

    .line 552
    iget-object v4, v8, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    .line 553
    .local v4, "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 554
    const/4 v5, 0x7

    invoke-virtual {v0, v4, v12, v5}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 557
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 558
    iget-object v5, v8, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 559
    .end local v18    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v5, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :try_start_2
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 560
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v19, v18

    .line 561
    .local v19, "viewCount":I
    const/16 v18, 0x0

    move/from16 v1, v18

    .local v1, "i":I
    :goto_0
    move/from16 v3, v19

    .end local v19    # "viewCount":I
    .local v3, "viewCount":I
    if-ge v1, v3, :cond_5

    .line 562
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    move-object/from16 v19, v18

    .line 563
    .local v19, "foundView":Landroid/view/View;
    move-object/from16 v21, v0

    move-object/from16 v0, v19

    .end local v19    # "foundView":Landroid/view/View;
    .local v0, "foundView":Landroid/view/View;
    .local v21, "root":Landroid/view/View;
    invoke-direct {v8, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 564
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v18

    move-object/from16 v2, v18

    .line 565
    if-eqz v2, :cond_3

    .line 566
    nop

    .line 567
    move/from16 v18, v3

    const/4 v3, -0x1

    .end local v3    # "viewCount":I
    .local v18, "viewCount":I
    invoke-virtual {v2, v12, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v19

    move-object/from16 v20, v19

    .line 569
    .local v20, "infosFromProvider":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    move-object/from16 v3, v20

    .end local v20    # "infosFromProvider":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v3, "infosFromProvider":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz v3, :cond_2

    .line 570
    invoke-interface {v5, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 572
    .end local v3    # "infosFromProvider":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_2
    goto :goto_1

    .line 573
    .end local v18    # "viewCount":I
    .local v3, "viewCount":I
    :cond_3
    move/from16 v18, v3

    .end local v3    # "viewCount":I
    .restart local v18    # "viewCount":I
    invoke-virtual {v0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 563
    .end local v18    # "viewCount":I
    .restart local v3    # "viewCount":I
    :cond_4
    move/from16 v18, v3

    .line 561
    .end local v0    # "foundView":Landroid/view/View;
    .end local v3    # "viewCount":I
    .restart local v18    # "viewCount":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move/from16 v19, v18

    move-object/from16 v0, v21

    const/4 v3, -0x1

    goto :goto_0

    .end local v18    # "viewCount":I
    .end local v21    # "root":Landroid/view/View;
    .local v0, "root":Landroid/view/View;
    .restart local v3    # "viewCount":I
    :cond_5
    move-object/from16 v21, v0

    move/from16 v18, v3

    .end local v0    # "root":Landroid/view/View;
    .end local v3    # "viewCount":I
    .restart local v18    # "viewCount":I
    .restart local v21    # "root":Landroid/view/View;
    move-object/from16 v18, v5

    goto :goto_2

    .line 581
    .end local v1    # "i":I
    .end local v2    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v4    # "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v18    # "viewCount":I
    .end local v21    # "root":Landroid/view/View;
    :catchall_0
    move-exception v0

    move-object/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    goto :goto_4

    .line 557
    .end local v5    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v0    # "root":Landroid/view/View;
    .restart local v2    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .restart local v4    # "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v18, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_6
    move-object/from16 v21, v0

    .end local v0    # "root":Landroid/view/View;
    .restart local v21    # "root":Landroid/view/View;
    goto :goto_2

    .line 551
    .end local v4    # "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v21    # "root":Landroid/view/View;
    .restart local v0    # "root":Landroid/view/View;
    :cond_7
    move-object/from16 v21, v0

    .end local v0    # "root":Landroid/view/View;
    .restart local v21    # "root":Landroid/view/View;
    goto :goto_2

    .line 581
    .end local v2    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v21    # "root":Landroid/view/View;
    :catchall_1
    move-exception v0

    move/from16 v19, v6

    move/from16 v20, v7

    goto :goto_4

    .line 546
    .restart local v0    # "root":Landroid/view/View;
    :cond_8
    move-object/from16 v21, v0

    .line 581
    .end local v0    # "root":Landroid/view/View;
    :goto_2
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 582
    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object v3, v13

    move v4, v6

    move-object v5, v14

    move/from16 v19, v6

    .end local v6    # "interactionId":I
    .local v19, "interactionId":I
    move-object/from16 v6, v17

    move/from16 v20, v7

    .end local v7    # "virtualDescendantId":I
    .local v20, "virtualDescendantId":I
    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 584
    nop

    .line 585
    return-void

    .line 541
    .end local v19    # "interactionId":I
    .end local v20    # "virtualDescendantId":I
    .restart local v6    # "interactionId":I
    .restart local v7    # "virtualDescendantId":I
    :cond_9
    move/from16 v19, v6

    move/from16 v20, v7

    .line 581
    .end local v6    # "interactionId":I
    .end local v7    # "virtualDescendantId":I
    .restart local v19    # "interactionId":I
    .restart local v20    # "virtualDescendantId":I
    :goto_3
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 582
    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object v3, v13

    move/from16 v4, v19

    move-object v5, v14

    move-object/from16 v6, v17

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 542
    return-void

    .line 581
    .end local v19    # "interactionId":I
    .end local v20    # "virtualDescendantId":I
    .restart local v6    # "interactionId":I
    .restart local v7    # "virtualDescendantId":I
    :catchall_2
    move-exception v0

    move/from16 v19, v6

    move/from16 v20, v7

    .end local v6    # "interactionId":I
    .end local v7    # "virtualDescendantId":I
    .restart local v19    # "interactionId":I
    .restart local v20    # "virtualDescendantId":I
    :goto_4
    iget-object v1, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 582
    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object v3, v13

    move/from16 v4, v19

    move-object v5, v14

    move-object/from16 v6, v17

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 584
    throw v0
.end method

.method private greylist-max-o findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V
    .locals 20
    .param p1, "message"    # Landroid/os/Message;

    .line 460
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget v10, v9, Landroid/os/Message;->arg1:I

    .line 461
    .local v10, "flags":I
    iget v11, v9, Landroid/os/Message;->arg2:I

    .line 463
    .local v11, "accessibilityViewId":I
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/android/internal/os/SomeArgs;

    .line 464
    .local v12, "args":Lcom/android/internal/os/SomeArgs;
    iget v13, v12, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 465
    .local v13, "interactionId":I
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 467
    .local v14, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Landroid/view/MagnificationSpec;

    .line 468
    .local v15, "spec":Landroid/view/MagnificationSpec;
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 469
    .local v7, "viewId":Ljava/lang/String;
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/graphics/Region;

    .line 470
    .local v16, "interactiveRegion":Landroid/graphics/Region;
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [F

    .line 471
    .local v17, "matrixValues":[F
    invoke-virtual {v12}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 473
    iget-object v6, v8, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 474
    .local v6, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 476
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_4

    if-nez v7, :cond_0

    move-object/from16 v19, v7

    move/from16 v18, v10

    move-object v10, v6

    goto/16 :goto_1

    .line 480
    :cond_0
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v10, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 481
    invoke-direct {v8, v11}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 482
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 483
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 484
    const/4 v3, 0x0

    invoke-virtual {v2, v7, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v5, v2

    .line 485
    .local v5, "resolvedViewId":I
    if-gtz v5, :cond_1

    .line 496
    iget-object v2, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v1, v2, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 497
    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v14

    move v4, v13

    move v9, v5

    .end local v5    # "resolvedViewId":I
    .local v9, "resolvedViewId":I
    move-object v5, v15

    move/from16 v18, v10

    move-object v10, v6

    .end local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v10, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v18, "flags":I
    move-object/from16 v6, v17

    move-object/from16 v19, v7

    .end local v7    # "viewId":Ljava/lang/String;
    .local v19, "viewId":Ljava/lang/String;
    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 486
    return-void

    .line 488
    .end local v9    # "resolvedViewId":I
    .end local v18    # "flags":I
    .end local v19    # "viewId":Ljava/lang/String;
    .restart local v5    # "resolvedViewId":I
    .restart local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v7    # "viewId":Ljava/lang/String;
    .local v10, "flags":I
    :cond_1
    move v9, v5

    move-object/from16 v19, v7

    move/from16 v18, v10

    move-object v10, v6

    .end local v5    # "resolvedViewId":I
    .end local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v7    # "viewId":Ljava/lang/String;
    .restart local v9    # "resolvedViewId":I
    .local v10, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v18    # "flags":I
    .restart local v19    # "viewId":Ljava/lang/String;
    :try_start_1
    iget-object v2, v8, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    if-nez v2, :cond_2

    .line 489
    new-instance v2, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-direct {v2, v8, v3}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId-IA;)V

    iput-object v2, v8, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    .line 491
    :cond_2
    iget-object v2, v8, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v2, v9, v10}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->init(ILjava/util/List;)V

    .line 492
    iget-object v2, v8, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    .line 493
    iget-object v2, v8, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v2}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 496
    .end local v0    # "root":Landroid/view/View;
    .end local v9    # "resolvedViewId":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 482
    .end local v18    # "flags":I
    .end local v19    # "viewId":Ljava/lang/String;
    .restart local v0    # "root":Landroid/view/View;
    .restart local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v7    # "viewId":Ljava/lang/String;
    .local v10, "flags":I
    :cond_3
    move-object/from16 v19, v7

    move/from16 v18, v10

    move-object v10, v6

    .line 496
    .end local v0    # "root":Landroid/view/View;
    .end local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v7    # "viewId":Ljava/lang/String;
    .local v10, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v18    # "flags":I
    .restart local v19    # "viewId":Ljava/lang/String;
    :goto_0
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v1, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 497
    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v14

    move v4, v13

    move-object v5, v15

    move-object/from16 v6, v17

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 499
    nop

    .line 500
    return-void

    .line 476
    .end local v18    # "flags":I
    .end local v19    # "viewId":Ljava/lang/String;
    .restart local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v7    # "viewId":Ljava/lang/String;
    .local v10, "flags":I
    :cond_4
    move-object/from16 v19, v7

    move/from16 v18, v10

    move-object v10, v6

    .line 496
    .end local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v7    # "viewId":Ljava/lang/String;
    .local v10, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v18    # "flags":I
    .restart local v19    # "viewId":Ljava/lang/String;
    :goto_1
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v1, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 497
    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v14

    move v4, v13

    move-object v5, v15

    move-object/from16 v6, v17

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 478
    return-void

    .line 496
    .end local v18    # "flags":I
    .end local v19    # "viewId":Ljava/lang/String;
    .restart local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v7    # "viewId":Ljava/lang/String;
    .local v10, "flags":I
    :catchall_1
    move-exception v0

    move-object/from16 v19, v7

    move/from16 v18, v10

    move-object v10, v6

    .end local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v7    # "viewId":Ljava/lang/String;
    .local v10, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v18    # "flags":I
    .restart local v19    # "viewId":Ljava/lang/String;
    :goto_2
    iget-object v2, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v1, v2, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 497
    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v14

    move v4, v13

    move-object v5, v15

    move-object/from16 v6, v17

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 499
    throw v0
.end method

.method private greylist-max-o findFocusUiThread(Landroid/os/Message;)V
    .locals 21
    .param p1, "message"    # Landroid/os/Message;

    .line 610
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget v10, v9, Landroid/os/Message;->arg1:I

    .line 611
    .local v10, "flags":I
    iget v11, v9, Landroid/os/Message;->arg2:I

    .line 613
    .local v11, "focusType":I
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/android/internal/os/SomeArgs;

    .line 614
    .local v12, "args":Lcom/android/internal/os/SomeArgs;
    iget v13, v12, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 615
    .local v13, "interactionId":I
    iget v14, v12, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 616
    .local v14, "accessibilityViewId":I
    iget v15, v12, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 617
    .local v15, "virtualDescendantId":I
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 619
    .local v16, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/MagnificationSpec;

    .line 620
    .local v17, "spec":Landroid/view/MagnificationSpec;
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/graphics/Region;

    .line 621
    .local v18, "interactiveRegion":Landroid/graphics/Region;
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, [F

    .line 622
    .local v19, "matrixValues":[F
    invoke-virtual {v12}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 624
    const/16 v20, 0x0

    .line 626
    .local v20, "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 629
    :cond_0
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v10, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 630
    invoke-direct {v8, v14}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 631
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_8

    invoke-direct {v8, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 632
    packed-switch v11, :pswitch_data_0

    .line 673
    new-instance v2, Ljava/lang/IllegalArgumentException;

    goto :goto_2

    .line 634
    :pswitch_0
    iget-object v2, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 637
    .local v2, "host":Landroid/view/View;
    if-eqz v2, :cond_8

    invoke-static {v2, v0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 638
    goto/16 :goto_3

    .line 641
    :cond_1
    invoke-direct {v8, v2}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 642
    goto :goto_3

    .line 646
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    .line 647
    .local v3, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v3, :cond_3

    .line 648
    iget-object v4, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 650
    .local v4, "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v4, :cond_4

    .line 651
    nop

    .line 652
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v5

    .line 653
    .local v5, "virtualNodeId":I
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    move-object/from16 v20, v6

    goto :goto_0

    .line 655
    .end local v4    # "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v5    # "virtualNodeId":I
    :cond_3
    const/4 v4, -0x1

    if-ne v15, v4, :cond_4

    .line 656
    invoke-virtual {v2}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    move-object/from16 v20, v4

    .end local v20    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v4, "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_1

    .line 655
    .end local v4    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v20    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_4
    :goto_0
    nop

    .line 658
    .end local v2    # "host":Landroid/view/View;
    .end local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :goto_1
    goto :goto_3

    .line 660
    :pswitch_1
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 661
    .local v2, "target":Landroid/view/View;
    invoke-direct {v8, v2}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 662
    goto :goto_3

    .line 664
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    .line 665
    .restart local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v3, :cond_6

    .line 666
    invoke-virtual {v3, v11}, Landroid/view/accessibility/AccessibilityNodeProvider;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    move-object/from16 v20, v4

    .line 668
    :cond_6
    if-nez v20, :cond_7

    .line 669
    invoke-virtual {v2}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    move-object/from16 v20, v4

    .line 671
    .end local v2    # "target":Landroid/view/View;
    .end local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_7
    goto :goto_3

    .line 673
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown focus type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v10    # "flags":I
    .end local v11    # "focusType":I
    .end local v12    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v13    # "interactionId":I
    .end local v14    # "accessibilityViewId":I
    .end local v15    # "virtualDescendantId":I
    .end local v16    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v17    # "spec":Landroid/view/MagnificationSpec;
    .end local v18    # "interactiveRegion":Landroid/graphics/Region;
    .end local v19    # "matrixValues":[F
    .end local v20    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local p0    # "this":Landroid/view/AccessibilityInteractionController;
    .end local p1    # "message":Landroid/os/Message;
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    .end local v0    # "root":Landroid/view/View;
    .restart local v10    # "flags":I
    .restart local v11    # "focusType":I
    .restart local v12    # "args":Lcom/android/internal/os/SomeArgs;
    .restart local v13    # "interactionId":I
    .restart local v14    # "accessibilityViewId":I
    .restart local v15    # "virtualDescendantId":I
    .restart local v16    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v17    # "spec":Landroid/view/MagnificationSpec;
    .restart local v18    # "interactiveRegion":Landroid/graphics/Region;
    .restart local v19    # "matrixValues":[F
    .restart local v20    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local p0    # "this":Landroid/view/AccessibilityInteractionController;
    .restart local p1    # "message":Landroid/os/Message;
    :cond_8
    :goto_3
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v1, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 678
    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v16

    move v4, v13

    move-object/from16 v5, v17

    move-object/from16 v6, v19

    move-object/from16 v7, v18

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 680
    nop

    .line 681
    return-void

    .line 677
    :cond_9
    :goto_4
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v1, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 678
    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v16

    move v4, v13

    move-object/from16 v5, v17

    move-object/from16 v6, v19

    move-object/from16 v7, v18

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 627
    return-void

    .line 677
    :catchall_0
    move-exception v0

    iget-object v2, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v1, v2, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 678
    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v16

    move v4, v13

    move-object/from16 v5, v17

    move-object/from16 v6, v19

    move-object/from16 v7, v18

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 680
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o findViewByAccessibilityId(I)Landroid/view/View;
    .locals 1
    .param p1, "accessibilityId"    # I

    .line 883
    const v0, 0x7ffffffe

    if-ne p1, v0, :cond_0

    .line 884
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    return-object v0

    .line 886
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeIdManager;->getInstance()Landroid/view/accessibility/AccessibilityNodeIdManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeIdManager;->findView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o focusSearchUiThread(Landroid/os/Message;)V
    .locals 20
    .param p1, "message"    # Landroid/os/Message;

    .line 706
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget v10, v9, Landroid/os/Message;->arg1:I

    .line 707
    .local v10, "flags":I
    iget v11, v9, Landroid/os/Message;->arg2:I

    .line 709
    .local v11, "accessibilityViewId":I
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/android/internal/os/SomeArgs;

    .line 710
    .local v12, "args":Lcom/android/internal/os/SomeArgs;
    iget v13, v12, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 711
    .local v13, "direction":I
    iget v14, v12, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 712
    .local v14, "interactionId":I
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 714
    .local v15, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/MagnificationSpec;

    .line 715
    .local v16, "spec":Landroid/view/MagnificationSpec;
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/graphics/Region;

    .line 716
    .local v17, "interactiveRegion":Landroid/graphics/Region;
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [F

    .line 717
    .local v18, "matrixValues":[F
    invoke-virtual {v12}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 719
    const/16 v19, 0x0

    .line 721
    .local v19, "next":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 724
    :cond_0
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v10, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 725
    invoke-direct {v8, v11}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 726
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-direct {v8, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 727
    invoke-virtual {v0, v13}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    .line 728
    .local v2, "nextView":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 729
    invoke-virtual {v2}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v19, v3

    .line 733
    .end local v0    # "root":Landroid/view/View;
    .end local v2    # "nextView":Landroid/view/View;
    :cond_1
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v1, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 734
    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object v3, v15

    move v4, v14

    move-object/from16 v5, v16

    move-object/from16 v6, v18

    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 736
    nop

    .line 737
    return-void

    .line 733
    :cond_2
    :goto_0
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v1, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 734
    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object v3, v15

    move v4, v14

    move-object/from16 v5, v16

    move-object/from16 v6, v18

    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 722
    return-void

    .line 733
    :catchall_0
    move-exception v0

    iget-object v2, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v1, v2, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 734
    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object v3, v15

    move v4, v14

    move-object/from16 v5, v16

    move-object/from16 v6, v18

    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 736
    throw v0
.end method

.method private blacklist getSatisfiedRequestInPrefetch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;
    .locals 12
    .param p1, "requestedNode"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;I)",
            "Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;"
        }
    .end annotation

    .line 1114
    .local p2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/4 v0, 0x0

    .line 1115
    .local v0, "satisfiedRequest":Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1116
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mPendingFindNodeByIdMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1117
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mPendingFindNodeByIdMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 1118
    .local v3, "pendingMessage":Landroid/os/Message;
    iget v4, v3, Landroid/os/Message;->arg1:I

    .line 1119
    .local v4, "pendingFlags":I
    and-int/lit16 v5, v4, 0x180

    and-int/lit16 v6, p3, 0x180

    if-eq v5, v6, :cond_0

    .line 1121
    goto :goto_1

    .line 1123
    :cond_0
    iget-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/os/SomeArgs;

    .line 1124
    .local v5, "args":Lcom/android/internal/os/SomeArgs;
    iget v6, v5, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1125
    .local v6, "accessibilityViewId":I
    iget v7, v5, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1127
    .local v7, "virtualDescendantId":I
    nop

    .line 1128
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v8

    .line 1127
    invoke-direct {p0, p1, p2, v8, v9}, Landroid/view/AccessibilityInteractionController;->nodeWithIdFromList(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    .line 1131
    .local v8, "satisfiedRequestNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v8, :cond_1

    .line 1132
    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    const/4 v10, 0x2

    iget-object v11, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1135
    iget-object v9, v5, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v9, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 1137
    .local v9, "satisfiedRequestCallback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget v10, v5, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 1138
    .local v10, "satisfiedRequestInteractionId":I
    new-instance v11, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;

    invoke-direct {v11, v8, v9, v10}, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;I)V

    move-object v0, v11

    .line 1141
    invoke-virtual {v5}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1142
    goto :goto_2

    .line 1116
    .end local v3    # "pendingMessage":Landroid/os/Message;
    .end local v4    # "pendingFlags":I
    .end local v5    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v6    # "accessibilityViewId":I
    .end local v7    # "virtualDescendantId":I
    .end local v8    # "satisfiedRequestNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v9    # "satisfiedRequestCallback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v10    # "satisfiedRequestInteractionId":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1145
    .end local v2    # "i":I
    :cond_2
    :goto_2
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mPendingFindNodeByIdMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1147
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;->mSatisfiedRequestNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eq v2, p1, :cond_3

    .line 1149
    iget-object v2, v0, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;->mSatisfiedRequestNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-interface {p2, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1151
    :cond_3
    monitor-exit v1

    return-object v0

    .line 1152
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private greylist-max-o handleClickableSpanActionUiThread(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 1189
    const-string v0, "android.view.accessibility.action.ACTION_ARGUMENT_ACCESSIBLE_CLICKABLE_SPAN"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1190
    .local v0, "span":Landroid/os/Parcelable;
    instance-of v1, v0, Landroid/text/style/AccessibilityClickableSpan;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1191
    return v2

    .line 1195
    :cond_0
    const/4 v1, 0x0

    .line 1196
    .local v1, "infoWithSpan":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    .line 1197
    .local v3, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v3, :cond_1

    .line 1198
    invoke-virtual {v3, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    goto :goto_0

    .line 1199
    :cond_1
    const/4 v4, -0x1

    if-ne p2, v4, :cond_2

    .line 1200
    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 1202
    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 1203
    return v2

    .line 1207
    :cond_3
    move-object v4, v0

    check-cast v4, Landroid/text/style/AccessibilityClickableSpan;

    .line 1208
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getOriginalText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 1207
    invoke-virtual {v4, v5}, Landroid/text/style/AccessibilityClickableSpan;->findClickableSpan(Ljava/lang/CharSequence;)Landroid/text/style/ClickableSpan;

    move-result-object v4

    .line 1209
    .local v4, "clickableSpan":Landroid/text/style/ClickableSpan;
    if-eqz v4, :cond_4

    .line 1210
    invoke-virtual {v4, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 1211
    const/4 v2, 0x1

    return v2

    .line 1213
    :cond_4
    return v2
.end method

.method private greylist-max-o holdOffMessageIfNeeded(Landroid/os/Message;IJ)Z
    .locals 20
    .param p1, "originalMessage"    # Landroid/os/Message;
    .param p2, "callingPid"    # I
    .param p3, "callingTid"    # J

    .line 209
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v9, v7, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 211
    :try_start_0
    iget v0, v7, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    .line 212
    invoke-direct/range {p0 .. p4}, Landroid/view/AccessibilityInteractionController;->queueMessageToHandleOncePrepared(Landroid/os/Message;IJ)V

    .line 213
    monitor-exit v9

    return v10

    .line 217
    :cond_0
    iget v0, v8, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 219
    monitor-exit v9

    return v2

    .line 221
    :cond_1
    iget-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 222
    .local v0, "originalMessageArgs":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    move-object v11, v1

    .line 223
    .local v11, "requestArguments":Landroid/os/Bundle;
    if-nez v11, :cond_2

    .line 224
    monitor-exit v9

    return v2

    .line 228
    :cond_2
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    move v12, v1

    .line 229
    .local v12, "accessibilityViewId":I
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 230
    invoke-virtual {v1, v12}, Landroid/view/accessibility/AccessibilityManager;->getRequestPreparersForAccessibilityId(I)Ljava/util/List;

    move-result-object v1

    move-object v13, v1

    .line 231
    .local v13, "preparers":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityRequestPreparer;>;"
    if-nez v13, :cond_3

    .line 232
    monitor-exit v9

    return v2

    .line 236
    :cond_3
    const-string v1, "android.view.accessibility.AccessibilityNodeInfo.extra_data_requested"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    .line 237
    .local v14, "extraDataKey":Ljava/lang/String;
    if-nez v14, :cond_4

    .line 238
    monitor-exit v9

    return v2

    .line 242
    :cond_4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v7, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    .line 243
    const/4 v1, 0x0

    move v15, v1

    .local v15, "i":I
    :goto_0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-ge v15, v1, :cond_6

    .line 244
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    move-object v6, v1

    .line 246
    .local v6, "requestPreparerMessage":Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    move-object v4, v1

    .line 248
    .local v4, "requestPreparerArgs":Lcom/android/internal/os/SomeArgs;
    nop

    .line 249
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_5

    .line 250
    const/4 v1, -0x1

    goto :goto_1

    :cond_5
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    :goto_1
    iput v1, v4, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 251
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 252
    iput-object v14, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 253
    iput-object v11, v4, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 254
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    move-object v5, v1

    .line 256
    .local v5, "preparationFinishedMessage":Landroid/os/Message;
    iget v1, v7, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    add-int/2addr v1, v10

    iput v1, v7, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    iput v1, v5, Landroid/os/Message;->arg1:I

    .line 257
    iput-object v5, v4, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 259
    iput-object v4, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 260
    const/16 v16, 0x1

    move-object/from16 v1, p0

    move-object v2, v6

    move/from16 v3, p2

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    .end local v4    # "requestPreparerArgs":Lcom/android/internal/os/SomeArgs;
    .end local v5    # "preparationFinishedMessage":Landroid/os/Message;
    .local v17, "requestPreparerArgs":Lcom/android/internal/os/SomeArgs;
    .local v18, "preparationFinishedMessage":Landroid/os/Message;
    move-wide/from16 v4, p3

    move-object/from16 v19, v6

    .end local v6    # "requestPreparerMessage":Landroid/os/Message;
    .local v19, "requestPreparerMessage":Landroid/os/Message;
    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 262
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage(I)Landroid/os/Message;

    .line 263
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 243
    nop

    .end local v17    # "requestPreparerArgs":Lcom/android/internal/os/SomeArgs;
    .end local v18    # "preparationFinishedMessage":Landroid/os/Message;
    .end local v19    # "requestPreparerMessage":Landroid/os/Message;
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 268
    .end local v15    # "i":I
    :cond_6
    invoke-direct/range {p0 .. p4}, Landroid/view/AccessibilityInteractionController;->queueMessageToHandleOncePrepared(Landroid/os/Message;IJ)V

    .line 269
    monitor-exit v9

    return v10

    .line 270
    .end local v0    # "originalMessageArgs":Lcom/android/internal/os/SomeArgs;
    .end local v11    # "requestArguments":Landroid/os/Bundle;
    .end local v12    # "accessibilityViewId":I
    .end local v13    # "preparers":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityRequestPreparer;>;"
    .end local v14    # "extraDataKey":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private greylist-max-o isShown(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 166
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist nodeWithIdFromList(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;J)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4
    .param p1, "requestedNode"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p3, "nodeId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;J)",
            "Landroid/view/accessibility/AccessibilityNodeInfo;"
        }
    .end annotation

    .line 1157
    .local p2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v0

    cmp-long v0, v0, p3

    if-nez v0, :cond_0

    .line 1158
    return-object p1

    .line 1160
    :cond_0
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1161
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1162
    .local v1, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-nez v2, :cond_1

    .line 1163
    return-object v1

    .line 1160
    .end local v1    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1166
    .end local v0    # "j":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist notifyOutsideTouchUiThread()V
    .locals 12

    .line 867
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 871
    :cond_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 872
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 874
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 875
    .local v10, "now":J
    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v4, v10

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 877
    .local v1, "event":Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 878
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    .line 880
    .end local v1    # "event":Landroid/view/MotionEvent;
    .end local v10    # "now":J
    :cond_1
    return-void

    .line 869
    .end local v0    # "root":Landroid/view/View;
    :cond_2
    :goto_0
    return-void
.end method

.method private greylist-max-o performAccessibilityActionUiThread(Landroid/os/Message;)V
    .locals 13
    .param p1, "message"    # Landroid/os/Message;

    .line 761
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 762
    .local v0, "flags":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 764
    .local v1, "accessibilityViewId":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 765
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget v3, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 766
    .local v3, "virtualDescendantId":I
    iget v4, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 767
    .local v4, "action":I
    iget v5, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 768
    .local v5, "interactionId":I
    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 770
    .local v6, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v7, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Landroid/os/Bundle;

    .line 772
    .local v7, "arguments":Landroid/os/Bundle;
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 774
    const/4 v8, 0x0

    .line 776
    .local v8, "succeeded":Z
    const/4 v9, 0x0

    :try_start_0
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v10, :cond_5

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v10, :cond_5

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-boolean v10, v10, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v10, :cond_5

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-boolean v10, v10, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    if-eqz v10, :cond_0

    goto :goto_2

    .line 780
    :cond_0
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v0, v10, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 781
    invoke-direct {p0, v1}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v10

    .line 782
    .local v10, "target":Landroid/view/View;
    if-eqz v10, :cond_4

    invoke-direct {p0, v10}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 783
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v11, v4}, Landroid/view/accessibility/AccessibilityManager;->notifyPerformingAction(I)V

    .line 784
    const v11, 0x1020194

    if-ne v4, v11, :cond_1

    .line 786
    invoke-direct {p0, v10, v3, v7}, Landroid/view/AccessibilityInteractionController;->handleClickableSpanActionUiThread(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v11

    move v8, v11

    goto :goto_0

    .line 789
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v11

    .line 790
    .local v11, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v11, :cond_2

    .line 791
    invoke-virtual {v11, v3, v4, v7}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v12

    move v8, v12

    goto :goto_0

    .line 793
    :cond_2
    const/4 v12, -0x1

    if-ne v3, v12, :cond_3

    .line 794
    invoke-virtual {v10, v4, v7}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v12

    move v8, v12

    .line 797
    .end local v11    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_3
    :goto_0
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v11, v9}, Landroid/view/accessibility/AccessibilityManager;->notifyPerformingAction(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    .end local v10    # "target":Landroid/view/View;
    :cond_4
    :try_start_1
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v9, v10, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 802
    invoke-interface {v6, v8, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 805
    goto :goto_1

    .line 803
    :catch_0
    move-exception v9

    .line 806
    nop

    .line 807
    :goto_1
    return-void

    .line 801
    :cond_5
    :goto_2
    :try_start_2
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v9, v10, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 802
    invoke-interface {v6, v8, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 805
    goto :goto_3

    .line 803
    :catch_1
    move-exception v9

    .line 778
    :goto_3
    return-void

    .line 800
    :catchall_0
    move-exception v10

    .line 801
    :try_start_3
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v9, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 802
    invoke-interface {v6, v8, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 805
    goto :goto_4

    .line 803
    :catch_2
    move-exception v9

    .line 806
    :goto_4
    throw v10
.end method

.method private blacklist populateAccessibilityNodeInfoForView(Landroid/view/View;Landroid/os/Bundle;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "arguments"    # Landroid/os/Bundle;
    .param p3, "virtualViewId"    # I

    .line 414
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 416
    .local v0, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 417
    :cond_0
    const-string v1, "android.view.accessibility.AccessibilityNodeInfo.extra_data_requested"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    nop

    .line 418
    .local v1, "extraDataRequested":Ljava/lang/String;
    const/4 v2, 0x0

    .line 419
    .local v2, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_1

    .line 420
    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 421
    if-eqz v2, :cond_2

    .line 422
    if-eqz v1, :cond_2

    .line 423
    invoke-virtual {p1, v2, v1, p2}, Landroid/view/View;->addExtraDataToAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 427
    :cond_1
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 428
    if-eqz v2, :cond_2

    .line 429
    if-eqz v1, :cond_2

    .line 430
    invoke-virtual {v0, p3, v2, v1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->addExtraDataToAccessibilityNodeInfo(ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 435
    :cond_2
    :goto_1
    return-object v2
.end method

.method private greylist-max-o prepareForExtraDataRequestUiThread(Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .line 274
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 275
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 276
    .local v1, "virtualDescendantId":I
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/AccessibilityRequestPreparer;

    .line 277
    .local v2, "preparer":Landroid/view/accessibility/AccessibilityRequestPreparer;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 278
    .local v3, "extraDataKey":Ljava/lang/String;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    .line 279
    .local v4, "requestArguments":Landroid/os/Bundle;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v5, Landroid/os/Message;

    .line 281
    .local v5, "preparationFinishedMessage":Landroid/os/Message;
    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/view/accessibility/AccessibilityRequestPreparer;->onPrepareExtraData(ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Message;)V

    .line 283
    return-void
.end method

.method private greylist-max-o queueMessageToHandleOncePrepared(Landroid/os/Message;IJ)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "interrogatingPid"    # I
    .param p3, "interrogatingTid"    # J

    .line 287
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    .line 290
    :cond_0
    new-instance v0, Landroid/view/AccessibilityInteractionController$MessageHolder;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/view/AccessibilityInteractionController$MessageHolder;-><init>(Landroid/os/Message;IJ)V

    .line 292
    .local v0, "messageHolder":Landroid/view/AccessibilityInteractionController$MessageHolder;
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    return-void
.end method

.method private greylist-max-o requestPreparerDoneUiThread(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .line 296
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p0, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    if-eq v1, v2, :cond_0

    .line 298
    const-string v1, "AccessibilityInteractionController"

    const-string v2, "Surprising AccessibilityRequestPreparer callback (likely late)"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    monitor-exit v0

    return-void

    .line 301
    :cond_0
    iget v1, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    .line 302
    if-gtz v1, :cond_1

    .line 303
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->removeMessages(I)V

    .line 304
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->scheduleAllMessagesWaitingForRequestPreparerLocked()V

    .line 306
    :cond_1
    monitor-exit v0

    .line 307
    return-void

    .line 306
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o requestPreparerTimeoutUiThread()V
    .locals 3

    .line 310
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_0
    const-string v1, "AccessibilityInteractionController"

    const-string v2, "AccessibilityRequestPreparer timed out"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->scheduleAllMessagesWaitingForRequestPreparerLocked()V

    .line 313
    monitor-exit v0

    .line 314
    return-void

    .line 313
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist returnFindNodeResult(Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;)V
    .locals 3
    .param p1, "satisfiedRequest"    # Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;

    .line 1090
    :try_start_0
    iget-object v0, p1, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;->mSatisfiedRequestNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1091
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v1, p1, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;->mSatisfiedRequestCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 1093
    .local v1, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget v2, p1, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;->mSatisfiedRequestInteractionId:I

    .line 1094
    .local v2, "interactionId":I
    invoke-interface {v1, v0, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1097
    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v1    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v2    # "interactionId":I
    goto :goto_0

    .line 1095
    :catch_0
    move-exception v0

    .line 1098
    :goto_0
    return-void
.end method

.method private blacklist returnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;I)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p3, "interactionId"    # I

    .line 1081
    :try_start_0
    invoke-interface {p2, p1, p3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1084
    goto :goto_0

    .line 1082
    :catch_0
    move-exception v0

    .line 1085
    :goto_0
    return-void
.end method

.method private blacklist returnFindNodesResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;I)V
    .locals 1
    .param p2, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p3, "interactionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;",
            "I)V"
        }
    .end annotation

    .line 1103
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :try_start_0
    invoke-interface {p2, p1, p3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    .line 1104
    if-eqz p1, :cond_0

    .line 1105
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    :cond_0
    goto :goto_0

    .line 1107
    :catch_0
    move-exception v0

    .line 1110
    :goto_0
    return-void
.end method

.method private blacklist returnPrefetchResult(ILjava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .locals 1
    .param p1, "interactionId"    # I
    .param p3, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;",
            ")V"
        }
    .end annotation

    .line 1171
    .local p2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1173
    :try_start_0
    invoke-interface {p3, p2, p1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPrefetchAccessibilityNodeInfoResult(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1176
    goto :goto_0

    .line 1174
    :catch_0
    move-exception v0

    .line 1178
    :cond_0
    :goto_0
    return-void
.end method

.method private greylist-max-o scheduleAllMessagesWaitingForRequestPreparerLocked()V
    .locals 10

    .line 318
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 319
    .local v0, "numMessages":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_1

    .line 320
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/AccessibilityInteractionController$MessageHolder;

    .line 321
    .local v3, "request":Landroid/view/AccessibilityInteractionController$MessageHolder;
    iget-object v5, v3, Landroid/view/AccessibilityInteractionController$MessageHolder;->mMessage:Landroid/os/Message;

    iget v6, v3, Landroid/view/AccessibilityInteractionController$MessageHolder;->mInterrogatingPid:I

    iget-wide v7, v3, Landroid/view/AccessibilityInteractionController$MessageHolder;->mInterrogatingTid:J

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    move v9, v2

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 319
    .end local v3    # "request":Landroid/view/AccessibilityInteractionController$MessageHolder;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 326
    iput v2, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    .line 327
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    .line 328
    return-void
.end method

.method private greylist-max-o scheduleMessage(Landroid/os/Message;IJZ)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "interrogatingPid"    # I
    .param p3, "interrogatingTid"    # J
    .param p5, "ignoreRequestPreparers"    # Z

    .line 142
    if-nez p5, :cond_0

    .line 143
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/AccessibilityInteractionController;->holdOffMessageIfNeeded(Landroid/os/Message;IJ)Z

    move-result v0

    if-nez v0, :cond_3

    .line 148
    :cond_0
    iget v0, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p2, v0, :cond_1

    iget-wide v0, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v0, p3, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    .line 149
    invoke-virtual {v0, p1}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->hasAccessibilityCallback(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    invoke-static {p3, p4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 151
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0, p1}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->hasAccessibilityCallback(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 156
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 157
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0, p1}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 159
    :cond_2
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0, p1}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 163
    :cond_3
    :goto_0
    return-void
.end method

.method private greylist-max-o shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z
    .locals 1
    .param p1, "appScale"    # F
    .param p2, "spec"    # Landroid/view/MagnificationSpec;

    .line 987
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private blacklist shouldBypassAdjustIsVisible()Z
    .locals 2

    .line 910
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v0, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 911
    .local v0, "windowType":I
    const/16 v1, 0x7db

    if-ne v0, v1, :cond_0

    .line 912
    const/4 v1, 0x1

    return v1

    .line 914
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist shouldBypassApplyWindowMatrix()Z
    .locals 2

    .line 939
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindowMatrixInEmbeddedHierarchy:Landroid/graphics/Matrix;

    .line 940
    .local v0, "windowMatrix":Landroid/graphics/Matrix;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private blacklist shouldBypassAssociateLeashedParent()Z
    .locals 2

    .line 958
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mLeashedParentToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mLeashedParentAccessibilityViewId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist transformBoundsWithScreenMatrix(Landroid/view/accessibility/AccessibilityNodeInfo;[F)V
    .locals 8
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "matrixValues"    # [F

    .line 1018
    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 1021
    :cond_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 1022
    .local v0, "boundInScreen":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRectF:Landroid/graphics/RectF;

    .line 1024
    .local v1, "transformedBounds":Landroid/graphics/RectF;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 1025
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1027
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1028
    .local v2, "transformMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 1029
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 1030
    .local v3, "applicationScale":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_1

    .line 1031
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1036
    :cond_1
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mWindowMatrixInEmbeddedHierarchy:Landroid/graphics/Matrix;

    if-nez v4, :cond_2

    .line 1037
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v5, v5, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1041
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1042
    return-void

    .line 1044
    :cond_3
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1046
    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v1, v4, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 1047
    iget v4, v1, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v1, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v1, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1049
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 1051
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->hasExtras()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1052
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 1053
    .local v4, "extras":Landroid/os/Bundle;
    const-class v5, Landroid/graphics/RectF;

    .line 1054
    const-string v6, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/graphics/RectF;

    .line 1055
    .local v5, "textLocations":[Landroid/graphics/RectF;
    if-eqz v5, :cond_5

    .line 1056
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v5

    if-ge v6, v7, :cond_5

    .line 1059
    aget-object v7, v5, v6

    .line 1060
    .local v7, "textLocation":Landroid/graphics/RectF;
    if-eqz v7, :cond_4

    .line 1061
    invoke-virtual {v2, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1056
    .end local v7    # "textLocation":Landroid/graphics/RectF;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1066
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v5    # "textLocations":[Landroid/graphics/RectF;
    .end local v6    # "i":I
    :cond_5
    return-void

    .line 1019
    .end local v0    # "boundInScreen":Landroid/graphics/Rect;
    .end local v1    # "transformedBounds":Landroid/graphics/RectF;
    .end local v2    # "transformMatrix":Landroid/graphics/Matrix;
    .end local v3    # "applicationScale":F
    :cond_6
    :goto_1
    return-void
.end method

.method private blacklist updateInfoForViewPort(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "spec"    # Landroid/view/MagnificationSpec;
    .param p3, "matrixValues"    # [F
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;

    .line 999
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->associateLeashedParentIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1001
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->applyHostWindowMatrixIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1003
    invoke-direct {p0, p1, p3}, Landroid/view/AccessibilityInteractionController;->transformBoundsWithScreenMatrix(Landroid/view/accessibility/AccessibilityNodeInfo;[F)V

    .line 1004
    invoke-direct {p0, p1, p4, p2}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;Landroid/view/MagnificationSpec;)V

    .line 1005
    invoke-direct {p0, p1, p2}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    .line 1006
    return-void
.end method

.method private blacklist updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p3, "interactionId"    # I
    .param p4, "spec"    # Landroid/view/MagnificationSpec;
    .param p5, "matrixValues"    # [F
    .param p6, "interactiveRegion"    # Landroid/graphics/Region;

    .line 1183
    invoke-direct {p0, p1, p4, p5, p6}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewPort(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 1184
    invoke-direct {p0, p1, p2, p3}, Landroid/view/AccessibilityInteractionController;->returnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;I)V

    .line 1185
    return-void
.end method

.method private blacklist updateInfosForViewPort(Ljava/util/List;Landroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V
    .locals 2
    .param p2, "spec"    # Landroid/view/MagnificationSpec;
    .param p3, "matrixValues"    # [F
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/MagnificationSpec;",
            "[F",
            "Landroid/graphics/Region;",
            ")V"
        }
    .end annotation

    .line 992
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 993
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v1, p2, p3, p4}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewPort(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 992
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 995
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V
    .locals 0
    .param p2, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p3, "interactionId"    # I
    .param p4, "spec"    # Landroid/view/MagnificationSpec;
    .param p5, "matrixValues"    # [F
    .param p6, "interactiveRegion"    # Landroid/graphics/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;",
            "I",
            "Landroid/view/MagnificationSpec;",
            "[F",
            "Landroid/graphics/Region;",
            ")V"
        }
    .end annotation

    .line 1071
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz p1, :cond_0

    .line 1072
    invoke-direct {p0, p1, p4, p5, p6}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewPort(Ljava/util/List;Landroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 1074
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/view/AccessibilityInteractionController;->returnFindNodesResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;I)V

    .line 1075
    return-void
.end method


# virtual methods
.method public blacklist clearAccessibilityFocusClientThread()V
    .locals 7

    .line 813
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 814
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 817
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 818
    return-void
.end method

.method public blacklist findAccessibilityNodeInfoByAccessibilityIdClientThread(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[FLandroid/os/Bundle;)V
    .locals 17
    .param p1, "accessibilityNodeId"    # J
    .param p3, "interactiveRegion"    # Landroid/graphics/Region;
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "interrogatingPid"    # I
    .param p8, "interrogatingTid"    # J
    .param p10, "spec"    # Landroid/view/MagnificationSpec;
    .param p11, "matrixValues"    # [F
    .param p12, "arguments"    # Landroid/os/Bundle;

    .line 174
    move-object/from16 v7, p0

    iget-object v0, v7, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    .line 175
    .local v8, "message":Landroid/os/Message;
    const/4 v0, 0x2

    iput v0, v8, Landroid/os/Message;->what:I

    .line 176
    move/from16 v9, p6

    iput v9, v8, Landroid/os/Message;->arg1:I

    .line 178
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v10

    .line 179
    .local v10, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v10, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 180
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    iput v0, v10, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 181
    move/from16 v11, p4

    iput v11, v10, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 182
    move-object/from16 v12, p5

    iput-object v12, v10, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 183
    move-object/from16 v13, p10

    iput-object v13, v10, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 184
    move-object/from16 v14, p3

    iput-object v14, v10, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 185
    move-object/from16 v15, p12

    iput-object v15, v10, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 186
    move-object/from16 v6, p11

    iput-object v6, v10, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 187
    iput-object v10, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 189
    iget-object v4, v7, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 190
    :try_start_0
    iget-object v0, v7, Landroid/view/AccessibilityInteractionController;->mPendingFindNodeByIdMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object v2, v8

    move/from16 v3, p7

    move-object/from16 v16, v4

    move-wide/from16 v4, p8

    move v6, v0

    :try_start_1
    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 193
    monitor-exit v16

    .line 194
    return-void

    .line 193
    :catchall_0
    move-exception v0

    move-object/from16 v16, v4

    :goto_0
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public blacklist findAccessibilityNodeInfosByTextClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .locals 16
    .param p1, "accessibilityNodeId"    # J
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .param p12, "matrixValues"    # [F

    .line 506
    move-object/from16 v6, p0

    iget-object v0, v6, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 507
    .local v7, "message":Landroid/os/Message;
    const/4 v0, 0x4

    iput v0, v7, Landroid/os/Message;->what:I

    .line 508
    move/from16 v8, p7

    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 510
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v9

    .line 511
    .local v9, "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v10, p3

    iput-object v10, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 512
    move-object/from16 v11, p6

    iput-object v11, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 513
    move-object/from16 v12, p11

    iput-object v12, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 514
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 515
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    iput v0, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 516
    move/from16 v13, p5

    iput v13, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 517
    move-object/from16 v14, p4

    iput-object v14, v9, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 518
    move-object/from16 v15, p12

    iput-object v15, v9, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 519
    iput-object v9, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 521
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, p8

    move-wide/from16 v3, p9

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 522
    return-void
.end method

.method public blacklist findAccessibilityNodeInfosByViewIdClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .locals 16
    .param p1, "accessibilityNodeId"    # J
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .param p12, "matrixValues"    # [F

    .line 442
    move-object/from16 v6, p0

    iget-object v0, v6, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 443
    .local v7, "message":Landroid/os/Message;
    const/4 v0, 0x3

    iput v0, v7, Landroid/os/Message;->what:I

    .line 444
    move/from16 v8, p7

    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 445
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v7, Landroid/os/Message;->arg2:I

    .line 447
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v9

    .line 448
    .local v9, "args":Lcom/android/internal/os/SomeArgs;
    move/from16 v10, p5

    iput v10, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 449
    move-object/from16 v11, p6

    iput-object v11, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 450
    move-object/from16 v12, p11

    iput-object v12, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 451
    move-object/from16 v13, p3

    iput-object v13, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 452
    move-object/from16 v14, p4

    iput-object v14, v9, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 453
    move-object/from16 v15, p12

    iput-object v15, v9, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 454
    iput-object v9, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 456
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, p8

    move-wide/from16 v3, p9

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 457
    return-void
.end method

.method public blacklist findFocusClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .locals 16
    .param p1, "accessibilityNodeId"    # J
    .param p3, "focusType"    # I
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .param p12, "matrixValues"    # [F

    .line 591
    move-object/from16 v6, p0

    iget-object v0, v6, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 592
    .local v7, "message":Landroid/os/Message;
    const/4 v0, 0x5

    iput v0, v7, Landroid/os/Message;->what:I

    .line 593
    move/from16 v8, p7

    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 594
    move/from16 v9, p3

    iput v9, v7, Landroid/os/Message;->arg2:I

    .line 596
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v10

    .line 597
    .local v10, "args":Lcom/android/internal/os/SomeArgs;
    move/from16 v11, p5

    iput v11, v10, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 598
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v10, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 599
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    iput v0, v10, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 600
    move-object/from16 v12, p6

    iput-object v12, v10, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 601
    move-object/from16 v13, p11

    iput-object v13, v10, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 602
    move-object/from16 v14, p4

    iput-object v14, v10, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 603
    move-object/from16 v15, p12

    iput-object v15, v10, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 604
    iput-object v10, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 606
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, p8

    move-wide/from16 v3, p9

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 607
    return-void
.end method

.method public blacklist focusSearchClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .locals 16
    .param p1, "accessibilityNodeId"    # J
    .param p3, "direction"    # I
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .param p12, "matrixValues"    # [F

    .line 687
    move-object/from16 v6, p0

    iget-object v0, v6, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 688
    .local v7, "message":Landroid/os/Message;
    const/4 v0, 0x6

    iput v0, v7, Landroid/os/Message;->what:I

    .line 689
    move/from16 v8, p7

    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 690
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v7, Landroid/os/Message;->arg2:I

    .line 692
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v9

    .line 693
    .local v9, "args":Lcom/android/internal/os/SomeArgs;
    move/from16 v10, p3

    iput v10, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 694
    move/from16 v11, p5

    iput v11, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 695
    move-object/from16 v12, p6

    iput-object v12, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 696
    move-object/from16 v13, p11

    iput-object v13, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 697
    move-object/from16 v14, p4

    iput-object v14, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 698
    move-object/from16 v15, p12

    iput-object v15, v9, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 700
    iput-object v9, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 702
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, p8

    move-wide/from16 v3, p9

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 703
    return-void
.end method

.method public blacklist notifyOutsideTouchClientThread()V
    .locals 7

    .line 859
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 860
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    .line 863
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 864
    return-void
.end method

.method public greylist-max-o performAccessibilityActionClientThread(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 14
    .param p1, "accessibilityNodeId"    # J
    .param p3, "action"    # I
    .param p4, "arguments"    # Landroid/os/Bundle;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J

    .line 743
    move-object v6, p0

    iget-object v0, v6, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 744
    .local v7, "message":Landroid/os/Message;
    const/4 v0, 0x1

    iput v0, v7, Landroid/os/Message;->what:I

    .line 745
    move/from16 v8, p7

    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 746
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v7, Landroid/os/Message;->arg2:I

    .line 748
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v9

    .line 749
    .local v9, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    iput v0, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 750
    move/from16 v10, p3

    iput v10, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 751
    move/from16 v11, p5

    iput v11, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 752
    move-object/from16 v12, p6

    iput-object v12, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 753
    move-object/from16 v13, p4

    iput-object v13, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 755
    iput-object v9, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 757
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v7

    move/from16 v2, p8

    move-wide/from16 v3, p9

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 758
    return-void
.end method
