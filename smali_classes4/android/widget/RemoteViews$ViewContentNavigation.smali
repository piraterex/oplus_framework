.class final Landroid/widget/RemoteViews$ViewContentNavigation;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewContentNavigation"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final greylist-max-o mNext:Z

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews;IZ)V
    .locals 0
    .param p2, "viewId"    # I
    .param p3, "next"    # Z

    .line 1548
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 1549
    iput p2, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->viewId:I

    .line 1550
    iput-boolean p3, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->mNext:Z

    .line 1551
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 0
    .param p2, "in"    # Landroid/os/Parcel;

    .line 1553
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 1554
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->viewId:I

    .line 1555
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->mNext:Z

    .line 1556
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 5
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 1566
    iget v0, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1567
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    return-void

    .line 1570
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->this$0:Landroid/widget/RemoteViews;

    .line 1571
    iget-boolean v2, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->mNext:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "showNext"

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "showPrevious"

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1570
    invoke-static {v1, v0, v2, v3, v4}, Landroid/widget/RemoteViews;->-$$Nest$mgetMethod(Landroid/widget/RemoteViews;Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    .line 1571
    invoke-polymorphic {v1, v0}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1574
    nop

    .line 1575
    return-void

    .line 1572
    :catchall_0
    move-exception v1

    .line 1573
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v2, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public greylist-max-o getActionTag()I
    .locals 1

    .line 1583
    const/4 v0, 0x5

    return v0
.end method

.method public greylist-max-o mergeBehavior()I
    .locals 1

    .line 1578
    const/4 v0, 0x2

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1559
    iget v0, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1560
    iget-boolean v0, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->mNext:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1561
    return-void
.end method
