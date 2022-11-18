.class Landroid/media/MediaRouter2Manager$Client;
.super Landroid/media/IMediaRouter2Manager$Stub;
.source "MediaRouter2Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Client"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaRouter2Manager;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaRouter2Manager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaRouter2Manager;

    .line 1110
    iput-object p1, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    invoke-direct {p0}, Landroid/media/IMediaRouter2Manager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist notifyDiscoveryPreferenceChanged(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "discoveryPreference"    # Landroid/media/RouteDiscoveryPreference;

    .line 1139
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    iget-object v0, v0, Landroid/media/MediaRouter2Manager;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1141
    return-void
.end method

.method public blacklist notifyRequestFailed(II)V
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "reason"    # I

    .line 1132
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    iget-object v0, v0, Landroid/media/MediaRouter2Manager;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    .line 1133
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1132
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1134
    return-void
.end method

.method public blacklist notifyRoutesAdded(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1145
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    iget-object v0, v0, Landroid/media/MediaRouter2Manager;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda7;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1147
    return-void
.end method

.method public blacklist notifyRoutesChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1157
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    iget-object v0, v0, Landroid/media/MediaRouter2Manager;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda6;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1159
    return-void
.end method

.method public blacklist notifyRoutesRemoved(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1151
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    iget-object v0, v0, Landroid/media/MediaRouter2Manager;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1153
    return-void
.end method

.method public blacklist notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "session"    # Landroid/media/RoutingSessionInfo;

    .line 1113
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    iget-object v0, v0, Landroid/media/MediaRouter2Manager;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda4;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    .line 1114
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1113
    invoke-static {v1, v2, v3, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1115
    return-void
.end method

.method public blacklist notifySessionReleased(Landroid/media/RoutingSessionInfo;)V
    .locals 3
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;

    .line 1125
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    iget-object v0, v0, Landroid/media/MediaRouter2Manager;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1127
    return-void
.end method

.method public blacklist notifySessionUpdated(Landroid/media/RoutingSessionInfo;)V
    .locals 3
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;

    .line 1119
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    iget-object v0, v0, Landroid/media/MediaRouter2Manager;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda5;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2Manager$Client;->this$0:Landroid/media/MediaRouter2Manager;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1121
    return-void
.end method
