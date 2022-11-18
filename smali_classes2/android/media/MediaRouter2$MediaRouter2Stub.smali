.class Landroid/media/MediaRouter2$MediaRouter2Stub;
.super Landroid/media/IMediaRouter2$Stub;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaRouter2Stub"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaRouter2;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaRouter2;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaRouter2;

    .line 1948
    iput-object p1, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {p0}, Landroid/media/IMediaRouter2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist notifyRouterRegistered(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V
    .locals 3
    .param p2, "currentSystemSessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;",
            "Landroid/media/RoutingSessionInfo;",
            ")V"
        }
    .end annotation

    .line 1952
    .local p1, "currentRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    iget-object v0, v0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    .line 1953
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1952
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1958
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

    .line 1962
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    iget-object v0, v0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda5;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    .line 1963
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1962
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1964
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

    .line 1974
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    iget-object v0, v0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    .line 1975
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1974
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1976
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

    .line 1968
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    iget-object v0, v0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda4;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    .line 1969
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1968
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1970
    return-void
.end method

.method public blacklist notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 1980
    iget-object v0, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    iget-object v0, v0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda6;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    .line 1984
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1981
    invoke-static {v1, v2, v3, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1980
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1986
    return-void
.end method

.method public blacklist notifySessionInfoChanged(Landroid/media/RoutingSessionInfo;)V
    .locals 3
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 1990
    iget-object v0, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    iget-object v0, v0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda7;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    .line 1991
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1990
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1995
    return-void
.end method

.method public blacklist notifySessionReleased(Landroid/media/RoutingSessionInfo;)V
    .locals 3
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 1999
    iget-object v0, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    iget-object v0, v0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    .line 2000
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1999
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2004
    return-void
.end method

.method public blacklist requestCreateSessionByManager(JLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .locals 4
    .param p1, "managerRequestId"    # J
    .param p3, "oldSession"    # Landroid/media/RoutingSessionInfo;
    .param p4, "route"    # Landroid/media/MediaRoute2Info;

    .line 2009
    iget-object v0, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    iget-object v0, v0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    .line 2015
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2010
    invoke-static {v1, v2, p3, p4, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2009
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2016
    return-void
.end method
