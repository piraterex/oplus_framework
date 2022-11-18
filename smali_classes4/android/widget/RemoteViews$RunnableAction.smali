.class final Landroid/widget/RemoteViews$RunnableAction;
.super Landroid/widget/RemoteViews$RuntimeAction;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RunnableAction"
.end annotation


# instance fields
.field private final greylist-max-o mRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 2305
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$RuntimeAction;-><init>(Landroid/widget/RemoteViews$RuntimeAction-IA;)V

    .line 2306
    iput-object p1, p0, Landroid/widget/RemoteViews$RunnableAction;->mRunnable:Ljava/lang/Runnable;

    .line 2307
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 1
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 2312
    iget-object v0, p0, Landroid/widget/RemoteViews$RunnableAction;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2313
    return-void
.end method
