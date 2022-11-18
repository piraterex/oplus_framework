.class Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;
.super Ljava/lang/Object;
.source "DynamicSystemClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/image/DynamicSystemClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DynSystemServiceConnection"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/image/DynamicSystemClient;


# direct methods
.method private constructor blacklist <init>(Landroid/os/image/DynamicSystemClient;)V
    .locals 0

    .line 239
    iput-object p1, p0, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;->this$0:Landroid/os/image/DynamicSystemClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/image/DynamicSystemClient;Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;-><init>(Landroid/os/image/DynamicSystemClient;)V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicSystemClient"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;->this$0:Landroid/os/image/DynamicSystemClient;

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v2}, Landroid/os/image/DynamicSystemClient;->-$$Nest$fputmService(Landroid/os/image/DynamicSystemClient;Landroid/os/Messenger;)V

    .line 246
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 247
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;->this$0:Landroid/os/image/DynamicSystemClient;

    invoke-static {v2}, Landroid/os/image/DynamicSystemClient;->-$$Nest$fgetmMessenger(Landroid/os/image/DynamicSystemClient;)Landroid/os/Messenger;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 249
    iget-object v2, p0, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;->this$0:Landroid/os/image/DynamicSystemClient;

    invoke-static {v2}, Landroid/os/image/DynamicSystemClient;->-$$Nest$fgetmService(Landroid/os/image/DynamicSystemClient;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 251
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "Unable to get status from installation service"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v2, p0, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;->this$0:Landroid/os/image/DynamicSystemClient;

    const/4 v3, 0x0

    const/4 v4, 0x5

    const-wide/16 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroid/os/image/DynamicSystemClient;->-$$Nest$mnotifyOnStatusChangedListener(Landroid/os/image/DynamicSystemClient;IIJLjava/lang/Throwable;)V

    .line 254
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceDisconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicSystemClient"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;->this$0:Landroid/os/image/DynamicSystemClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/image/DynamicSystemClient;->-$$Nest$fputmService(Landroid/os/image/DynamicSystemClient;Landroid/os/Messenger;)V

    .line 259
    return-void
.end method
