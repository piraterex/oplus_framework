.class Landroid/appwidget/AppWidgetHost$UpdateHandler;
.super Landroid/os/Handler;
.source "AppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/appwidget/AppWidgetHost;


# direct methods
.method public constructor blacklist <init>(Landroid/appwidget/AppWidgetHost;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/appwidget/AppWidgetHost;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 140
    iput-object p1, p0, Landroid/appwidget/AppWidgetHost$UpdateHandler;->this$0:Landroid/appwidget/AppWidgetHost;

    .line 141
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 142
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 145
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 151
    :pswitch_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$UpdateHandler;->this$0:Landroid/appwidget/AppWidgetHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHost;->dispatchOnAppWidgetRemoved(I)V

    .line 152
    goto :goto_0

    .line 163
    :pswitch_1
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$UpdateHandler;->this$0:Landroid/appwidget/AppWidgetHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetHost;->viewDataChanged(II)V

    goto :goto_0

    .line 159
    :pswitch_2
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$UpdateHandler;->this$0:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->onProvidersChanged()V

    .line 160
    goto :goto_0

    .line 155
    :pswitch_3
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$UpdateHandler;->this$0:Landroid/appwidget/AppWidgetHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetHost;->onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 156
    goto :goto_0

    .line 147
    :pswitch_4
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$UpdateHandler;->this$0:Landroid/appwidget/AppWidgetHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetHost;->updateAppWidgetView(ILandroid/widget/RemoteViews;)V

    .line 148
    nop

    .line 167
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
