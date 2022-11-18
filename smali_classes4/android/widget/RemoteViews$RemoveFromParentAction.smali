.class Landroid/widget/RemoteViews$RemoveFromParentAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveFromParentAction"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews;I)V
    .locals 0
    .param p2, "viewId"    # I

    .line 2726
    iput-object p1, p0, Landroid/widget/RemoteViews$RemoveFromParentAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 2727
    iput p2, p0, Landroid/widget/RemoteViews$RemoveFromParentAction;->viewId:I

    .line 2728
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 0
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 2730
    iput-object p1, p0, Landroid/widget/RemoteViews$RemoveFromParentAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 2731
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$RemoveFromParentAction;->viewId:I

    .line 2732
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 2741
    iget v0, p0, Landroid/widget/RemoteViews$RemoveFromParentAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2743
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 2747
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2748
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewManager;

    if-eqz v2, :cond_1

    .line 2749
    move-object v2, v1

    check-cast v2, Landroid/view/ViewManager;

    invoke-interface {v2, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 2751
    :cond_1
    return-void

    .line 2744
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist getActionTag()I
    .locals 1

    .line 2783
    const/16 v0, 0x17

    return v0
.end method

.method public blacklist initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$Action;
    .locals 4
    .param p1, "root"    # Landroid/widget/RemoteViews$ViewTree;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 2758
    invoke-virtual {p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    .line 2759
    iget v0, p0, Landroid/widget/RemoteViews$RemoveFromParentAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v0

    .line 2761
    .local v0, "target":Landroid/widget/RemoteViews$ViewTree;
    if-eqz v0, :cond_3

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 2765
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeParentOf(Landroid/widget/RemoteViews$ViewTree;)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v1

    .line 2766
    .local v1, "parent":Landroid/widget/RemoteViews$ViewTree;
    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewManager;

    if-nez v2, :cond_1

    goto :goto_0

    .line 2769
    :cond_1
    invoke-static {v1}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewManager;

    .line 2771
    .local v2, "parentVg":Landroid/view/ViewManager;
    invoke-static {v1}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2772
    new-instance v3, Landroid/widget/RemoteViews$RemoveFromParentAction$1;

    invoke-direct {v3, p0, v2, v0}, Landroid/widget/RemoteViews$RemoveFromParentAction$1;-><init>(Landroid/widget/RemoteViews$RemoveFromParentAction;Landroid/view/ViewManager;Landroid/widget/RemoteViews$ViewTree;)V

    return-object v3

    .line 2767
    .end local v2    # "parentVg":Landroid/view/ViewManager;
    :cond_2
    :goto_0
    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object v2

    return-object v2

    .line 2762
    .end local v1    # "parent":Landroid/widget/RemoteViews$ViewTree;
    :cond_3
    :goto_1
    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object v1

    return-object v1
.end method

.method public blacklist mergeBehavior()I
    .locals 1

    .line 2788
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2735
    iget v0, p0, Landroid/widget/RemoteViews$RemoveFromParentAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2736
    return-void
.end method
