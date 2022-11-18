.class Landroid/service/media/MediaBrowserService$ServiceBinder$1;
.super Ljava/lang/Object;
.source "MediaBrowserService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/media/MediaBrowserService$ServiceBinder;->connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/media/MediaBrowserService$ServiceBinder;

.field final synthetic blacklist val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

.field final synthetic blacklist val$pid:I

.field final synthetic blacklist val$pkg:Ljava/lang/String;

.field final synthetic blacklist val$rootHints:Landroid/os/Bundle;

.field final synthetic blacklist val$service:Landroid/service/media/MediaBrowserService;

.field final synthetic blacklist val$uid:I


# direct methods
.method constructor blacklist <init>(Landroid/service/media/MediaBrowserService$ServiceBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/service/media/MediaBrowserService;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/media/MediaBrowserService$ServiceBinder;

    .line 238
    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->this$0:Landroid/service/media/MediaBrowserService$ServiceBinder;

    iput-object p2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iput-object p3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$service:Landroid/service/media/MediaBrowserService;

    iput-object p4, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$pkg:Ljava/lang/String;

    iput p5, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$pid:I

    iput p6, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$uid:I

    iput-object p7, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$rootHints:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 13

    .line 241
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v0}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 244
    .local v0, "b":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$service:Landroid/service/media/MediaBrowserService;

    invoke-static {v1}, Landroid/service/media/MediaBrowserService;->-$$Nest$fgetmConnections(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$service:Landroid/service/media/MediaBrowserService;

    new-instance v10, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iget-object v4, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$pkg:Ljava/lang/String;

    iget v5, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$pid:I

    iget v6, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$uid:I

    iget-object v7, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$rootHints:Landroid/os/Bundle;

    iget-object v8, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    const/4 v9, 0x0

    move-object v2, v10

    move-object v3, v1

    invoke-direct/range {v2 .. v9}, Landroid/service/media/MediaBrowserService$ConnectionRecord;-><init>(Landroid/service/media/MediaBrowserService;Ljava/lang/String;IILandroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/service/media/MediaBrowserService$BrowserRoot;)V

    invoke-static {v1, v10}, Landroid/service/media/MediaBrowserService;->-$$Nest$fputmCurConnection(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    .line 251
    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$service:Landroid/service/media/MediaBrowserService;

    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$pkg:Ljava/lang/String;

    iget v3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$uid:I

    iget-object v4, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$rootHints:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v4}, Landroid/service/media/MediaBrowserService;->onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;

    move-result-object v1

    .line 252
    .local v1, "root":Landroid/service/media/MediaBrowserService$BrowserRoot;
    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$service:Landroid/service/media/MediaBrowserService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/service/media/MediaBrowserService;->-$$Nest$fputmCurConnection(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    .line 255
    const-string v2, "MediaBrowserService"

    if-nez v1, :cond_0

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No root for client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 257
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 256
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :try_start_0
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v3}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onConnectFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v3

    .line 261
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling onConnectFailed() failed. Ignoring. pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .end local v3    # "ex":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 266
    :cond_0
    :try_start_1
    new-instance v3, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iget-object v6, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$service:Landroid/service/media/MediaBrowserService;

    iget-object v7, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$pkg:Ljava/lang/String;

    iget v8, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$pid:I

    iget v9, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$uid:I

    iget-object v10, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$rootHints:Landroid/os/Bundle;

    iget-object v11, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-object v5, v3

    move-object v12, v1

    invoke-direct/range {v5 .. v12}, Landroid/service/media/MediaBrowserService$ConnectionRecord;-><init>(Landroid/service/media/MediaBrowserService;Ljava/lang/String;IILandroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/service/media/MediaBrowserService$BrowserRoot;)V

    .line 269
    .local v3, "connection":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    iget-object v4, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$service:Landroid/service/media/MediaBrowserService;

    invoke-static {v4}, Landroid/service/media/MediaBrowserService;->-$$Nest$fgetmConnections(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 271
    iget-object v4, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$service:Landroid/service/media/MediaBrowserService;

    iget-object v4, v4, Landroid/service/media/MediaBrowserService;->mSession:Landroid/media/session/MediaSession$Token;

    if-eqz v4, :cond_1

    .line 272
    iget-object v4, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iget-object v5, v3, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    invoke-virtual {v5}, Landroid/service/media/MediaBrowserService$BrowserRoot;->getRootId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$service:Landroid/service/media/MediaBrowserService;

    iget-object v6, v6, Landroid/service/media/MediaBrowserService;->mSession:Landroid/media/session/MediaSession$Token;

    iget-object v7, v3, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    .line 273
    invoke-virtual {v7}, Landroid/service/media/MediaBrowserService$BrowserRoot;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 272
    invoke-interface {v4, v5, v6, v7}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onConnect(Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 279
    .end local v3    # "connection":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    :cond_1
    goto :goto_1

    .line 275
    :catch_1
    move-exception v3

    .line 276
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling onConnect() failed. Dropping client. pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$service:Landroid/service/media/MediaBrowserService;

    invoke-static {v2}, Landroid/service/media/MediaBrowserService;->-$$Nest$fgetmConnections(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .end local v3    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
