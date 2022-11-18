.class Landroid/widget/RemoteViews$ViewGroupActionRemove$1;
.super Landroid/widget/RemoteViews$RuntimeAction;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$ViewGroupActionRemove;->initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/RemoteViews$ViewGroupActionRemove;

.field final synthetic blacklist val$targetVg:Landroid/view/ViewGroup;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews$ViewGroupActionRemove;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/RemoteViews$ViewGroupActionRemove;

    .line 2677
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;->this$1:Landroid/widget/RemoteViews$ViewGroupActionRemove;

    iput-object p2, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;->val$targetVg:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Landroid/widget/RemoteViews$RuntimeAction;-><init>(Landroid/widget/RemoteViews$RuntimeAction-IA;)V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 2681
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;->this$1:Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-static {v0}, Landroid/widget/RemoteViews$ViewGroupActionRemove;->-$$Nest$fgetmViewIdToKeep(Landroid/widget/RemoteViews$ViewGroupActionRemove;)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 2682
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;->val$targetVg:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2683
    iget-object v1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;->val$targetVg:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/widget/RemoteViews;->-$$Nest$smhasStableId(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2684
    iget-object v1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;->val$targetVg:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 2682
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2687
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 2690
    :cond_2
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;->this$1:Landroid/widget/RemoteViews$ViewGroupActionRemove;

    iget-object v1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;->val$targetVg:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;->-$$Nest$mremoveAllViewsExceptIdToKeep(Landroid/widget/RemoteViews$ViewGroupActionRemove;Landroid/view/ViewGroup;)V

    .line 2691
    return-void
.end method
