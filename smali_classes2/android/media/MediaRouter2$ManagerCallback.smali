.class Landroid/media/MediaRouter2$ManagerCallback;
.super Ljava/lang/Object;
.source "MediaRouter2.java"

# interfaces
.implements Landroid/media/MediaRouter2Manager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ManagerCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaRouter2;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaRouter2;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaRouter2;

    .line 2020
    iput-object p1, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onDiscoveryPreferenceChanged(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "preference"    # Landroid/media/RouteDiscoveryPreference;

    .line 2121
    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmClientPackageName(Landroid/media/MediaRouter2;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2122
    return-void

    .line 2125
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2126
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1, p2}, Landroid/media/MediaRouter2;->-$$Nest$fputmDiscoveryPreference(Landroid/media/MediaRouter2;Landroid/media/RouteDiscoveryPreference;)V

    .line 2127
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2128
    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$mupdateAllRoutesFromManager(Landroid/media/MediaRouter2;)V

    .line 2129
    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-virtual {p2}, Landroid/media/RouteDiscoveryPreference;->getPreferredFeatures()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyPreferredFeaturesChanged(Landroid/media/MediaRouter2;Ljava/util/List;)V

    .line 2130
    return-void

    .line 2127
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist onRequestFailed(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 2135
    return-void
.end method

.method public blacklist onRoutesAdded(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 2024
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$mupdateAllRoutesFromManager(Landroid/media/MediaRouter2;)V

    .line 2025
    return-void
.end method

.method public blacklist onRoutesChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 2034
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$mupdateAllRoutesFromManager(Landroid/media/MediaRouter2;)V

    .line 2035
    return-void
.end method

.method public blacklist onRoutesRemoved(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 2029
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$mupdateAllRoutesFromManager(Landroid/media/MediaRouter2;)V

    .line 2030
    return-void
.end method

.method public blacklist onSessionReleased(Landroid/media/RoutingSessionInfo;)V
    .locals 3
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;

    .line 2106
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2107
    const-string v0, "MR2"

    const-string v1, "onSessionReleased: Called on system session. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    return-void

    .line 2111
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmClientPackageName(Landroid/media/MediaRouter2;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2112
    return-void

    .line 2115
    :cond_1
    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    new-instance v1, Landroid/media/MediaRouter2$RoutingController;

    const/4 v2, 0x3

    invoke-direct {v1, v0, p1, v2}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;I)V

    invoke-static {v0, v1}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyStop(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;)V

    .line 2116
    return-void
.end method

.method public blacklist onSessionUpdated(Landroid/media/RoutingSessionInfo;)V
    .locals 2
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;

    .line 2088
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmClientPackageName(Landroid/media/MediaRouter2;)Ljava/lang/String;

    move-result-object v0

    .line 2089
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2090
    return-void

    .line 2094
    :cond_0
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2095
    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    iget-object v0, v0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    iget-object v1, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    .line 2096
    invoke-static {v1, p1}, Landroid/media/MediaRouter2;->-$$Nest$mensureClientPackageNameForSystemSession(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    move-result-object v1

    .line 2095
    invoke-virtual {v0, v1}, Landroid/media/MediaRouter2$RoutingController;->setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V

    .line 2097
    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    iget-object v0, v0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    .local v0, "controller":Landroid/media/MediaRouter2$RoutingController;
    goto :goto_0

    .line 2099
    .end local v0    # "controller":Landroid/media/MediaRouter2$RoutingController;
    :cond_1
    new-instance v0, Landroid/media/MediaRouter2$RoutingController;

    iget-object v1, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {v0, v1, p1}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    .line 2101
    .restart local v0    # "controller":Landroid/media/MediaRouter2$RoutingController;
    :goto_0
    iget-object v1, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1, v0}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyControllerUpdated(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;)V

    .line 2102
    return-void
.end method

.method public blacklist onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .locals 2
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;

    .line 2079
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmClientPackageName(Landroid/media/MediaRouter2;)Ljava/lang/String;

    move-result-object v0

    .line 2080
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2081
    return-void

    .line 2083
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0, p2}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyTransferFailure(Landroid/media/MediaRouter2;Landroid/media/MediaRoute2Info;)V

    .line 2084
    return-void
.end method

.method public blacklist onTransferred(Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V
    .locals 3
    .param p1, "oldSession"    # Landroid/media/RoutingSessionInfo;
    .param p2, "newSession"    # Landroid/media/RoutingSessionInfo;

    .line 2040
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmClientPackageName(Landroid/media/MediaRouter2;)Ljava/lang/String;

    move-result-object v0

    .line 2041
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2042
    return-void

    .line 2045
    :cond_0
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmClientPackageName(Landroid/media/MediaRouter2;)Ljava/lang/String;

    move-result-object v0

    .line 2046
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2047
    return-void

    .line 2051
    :cond_1
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2052
    return-void

    .line 2056
    :cond_2
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2057
    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    iget-object v0, v0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    iget-object v1, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    .line 2058
    invoke-static {v1, p1}, Landroid/media/MediaRouter2;->-$$Nest$mensureClientPackageNameForSystemSession(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    move-result-object v1

    .line 2057
    invoke-virtual {v0, v1}, Landroid/media/MediaRouter2$RoutingController;->setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V

    .line 2059
    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    iget-object v0, v0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    .local v0, "oldController":Landroid/media/MediaRouter2$RoutingController;
    goto :goto_0

    .line 2061
    .end local v0    # "oldController":Landroid/media/MediaRouter2$RoutingController;
    :cond_3
    new-instance v0, Landroid/media/MediaRouter2$RoutingController;

    iget-object v1, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {v0, v1, p1}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    .line 2065
    .restart local v0    # "oldController":Landroid/media/MediaRouter2$RoutingController;
    :goto_0
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2066
    iget-object v1, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    iget-object v1, v1, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    iget-object v2, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    .line 2067
    invoke-static {v2, p2}, Landroid/media/MediaRouter2;->-$$Nest$mensureClientPackageNameForSystemSession(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    move-result-object v2

    .line 2066
    invoke-virtual {v1, v2}, Landroid/media/MediaRouter2$RoutingController;->setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V

    .line 2068
    iget-object v1, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    iget-object v1, v1, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    .local v1, "newController":Landroid/media/MediaRouter2$RoutingController;
    goto :goto_1

    .line 2070
    .end local v1    # "newController":Landroid/media/MediaRouter2$RoutingController;
    :cond_4
    new-instance v1, Landroid/media/MediaRouter2$RoutingController;

    iget-object v2, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {v1, v2, p2}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    .line 2073
    .restart local v1    # "newController":Landroid/media/MediaRouter2$RoutingController;
    :goto_1
    iget-object v2, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2, v0, v1}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyTransfer(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V

    .line 2074
    return-void
.end method
