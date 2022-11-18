.class Landroid/appwidget/AppWidgetHost$Callbacks;
.super Lcom/android/internal/appwidget/IAppWidgetHost$Stub;
.source "AppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Callbacks"
.end annotation


# instance fields
.field private final greylist-max-o mWeakHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .line 79
    invoke-direct {p0}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    .line 81
    return-void
.end method

.method private static greylist-max-o isLocalBinder()Z
    .locals 2

    .line 135
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist appWidgetRemoved(I)V
    .locals 3
    .param p1, "appWidgetId"    # I

    .line 109
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 110
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 114
    return-void
.end method

.method public greylist-max-o providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 3
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 96
    invoke-static {}, Landroid/appwidget/AppWidgetHost$Callbacks;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p2}, Landroid/appwidget/AppWidgetProviderInfo;->clone()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p2

    .line 99
    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 100
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1

    .line 101
    return-void

    .line 103
    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 105
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 106
    return-void
.end method

.method public greylist-max-o providersChanged()V
    .locals 2

    .line 117
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 118
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 119
    return-void

    .line 121
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 122
    return-void
.end method

.method public greylist-max-o updateAppWidget(ILandroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "appWidgetId"    # I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .line 84
    invoke-static {}, Landroid/appwidget/AppWidgetHost$Callbacks;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p2

    .line 87
    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 88
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1

    .line 89
    return-void

    .line 91
    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 92
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 93
    return-void
.end method

.method public greylist-max-o viewDataChanged(II)V
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "viewId"    # I

    .line 125
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 126
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 127
    return-void

    .line 129
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 131
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 132
    return-void
.end method
