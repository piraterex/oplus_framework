.class Landroid/view/AccessibilityInteractionController$VirtualNode;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"

# interfaces
.implements Landroid/view/AccessibilityInteractionController$DequeNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VirtualNode"
.end annotation


# instance fields
.field blacklist mInfoId:J

.field blacklist mProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

.field final synthetic blacklist this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method constructor blacklist <init>(Landroid/view/AccessibilityInteractionController;JLandroid/view/accessibility/AccessibilityNodeProvider;)V
    .locals 0
    .param p2, "id"    # J
    .param p4, "provider"    # Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 1865
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1866
    iput-wide p2, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->mInfoId:J

    .line 1867
    iput-object p4, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->mProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 1868
    return-void
.end method


# virtual methods
.method public blacklist addChildren(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/AccessibilityInteractionController$PrefetchDeque;)V
    .locals 7
    .param p1, "virtualRoot"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "deque"    # Landroid/view/AccessibilityInteractionController$PrefetchDeque;

    .line 1880
    if-nez p1, :cond_0

    .line 1881
    return-void

    .line 1883
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    .line 1884
    .local v0, "childCount":I
    invoke-virtual {p2}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->isStack()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1885
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1886
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v2

    .line 1887
    .local v2, "childNodeId":J
    new-instance v4, Landroid/view/AccessibilityInteractionController$VirtualNode;

    iget-object v5, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->this$0:Landroid/view/AccessibilityInteractionController;

    iget-object v6, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->mProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    invoke-direct {v4, v5, v2, v3, v6}, Landroid/view/AccessibilityInteractionController$VirtualNode;-><init>(Landroid/view/AccessibilityInteractionController;JLandroid/view/accessibility/AccessibilityNodeProvider;)V

    invoke-virtual {p2, v4}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->push(Ljava/lang/Object;)V

    .line 1885
    .end local v2    # "childNodeId":J
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_1
    goto :goto_2

    .line 1890
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1891
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v2

    .line 1892
    .restart local v2    # "childNodeId":J
    new-instance v4, Landroid/view/AccessibilityInteractionController$VirtualNode;

    iget-object v5, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->this$0:Landroid/view/AccessibilityInteractionController;

    iget-object v6, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->mProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    invoke-direct {v4, v5, v2, v3, v6}, Landroid/view/AccessibilityInteractionController$VirtualNode;-><init>(Landroid/view/AccessibilityInteractionController;JLandroid/view/accessibility/AccessibilityNodeProvider;)V

    invoke-virtual {p2, v4}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->push(Ljava/lang/Object;)V

    .line 1890
    .end local v2    # "childNodeId":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1895
    .end local v1    # "i":I
    :cond_3
    :goto_2
    return-void
.end method

.method public blacklist getA11yNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    .line 1871
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->mProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    if-nez v0, :cond_0

    .line 1872
    const/4 v0, 0x0

    return-object v0

    .line 1874
    :cond_0
    iget-wide v1, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->mInfoId:J

    .line 1875
    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v1

    .line 1874
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method
