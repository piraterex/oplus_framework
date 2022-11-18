.class Landroid/widget/RemoteViews$ViewGroupActionAdd$1;
.super Landroid/widget/RemoteViews$RuntimeAction;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$ViewGroupActionAdd;->initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/RemoteViews$ViewGroupActionAdd;

.field final synthetic blacklist val$nextChild:I

.field final synthetic blacklist val$reapplyTask:Landroid/widget/RemoteViews$AsyncApplyTask;

.field final synthetic blacklist val$recycledViewIndex:I

.field final synthetic blacklist val$targetVg:Landroid/view/ViewGroup;

.field final synthetic blacklist val$tree:Landroid/widget/RemoteViews$ViewTree;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews$ViewGroupActionAdd;Landroid/widget/RemoteViews$AsyncApplyTask;Landroid/widget/RemoteViews$ViewTree;IILandroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/RemoteViews$ViewGroupActionAdd;

    .line 2521
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->this$1:Landroid/widget/RemoteViews$ViewGroupActionAdd;

    iput-object p2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$reapplyTask:Landroid/widget/RemoteViews$AsyncApplyTask;

    iput-object p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$tree:Landroid/widget/RemoteViews$ViewTree;

    iput p4, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$recycledViewIndex:I

    iput p5, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$nextChild:I

    iput-object p6, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$targetVg:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Landroid/widget/RemoteViews$RuntimeAction;-><init>(Landroid/widget/RemoteViews$RuntimeAction-IA;)V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 2526
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$reapplyTask:Landroid/widget/RemoteViews$AsyncApplyTask;

    iget-object v1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$tree:Landroid/widget/RemoteViews$ViewTree;

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$AsyncApplyTask;->onPostExecute(Landroid/widget/RemoteViews$ViewTree;)V

    .line 2527
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$recycledViewIndex:I

    iget v1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$nextChild:I

    if-le v0, v1, :cond_0

    .line 2528
    iget-object v2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$targetVg:Landroid/view/ViewGroup;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 2530
    :cond_0
    return-void
.end method
