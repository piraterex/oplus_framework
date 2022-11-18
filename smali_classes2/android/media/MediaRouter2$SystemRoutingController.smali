.class Landroid/media/MediaRouter2$SystemRoutingController;
.super Landroid/media/MediaRouter2$RoutingController;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SystemRoutingController"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaRouter2;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaRouter2;
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 1822
    iput-object p1, p0, Landroid/media/MediaRouter2$SystemRoutingController;->this$0:Landroid/media/MediaRouter2;

    .line 1823
    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    .line 1824
    return-void
.end method


# virtual methods
.method public whitelist isReleased()Z
    .locals 1

    .line 1829
    const/4 v0, 0x0

    return v0
.end method

.method blacklist releaseInternal(Z)V
    .locals 0
    .param p1, "shouldReleaseSession"    # Z

    .line 1841
    return-void
.end method

.method blacklist scheduleRelease()Z
    .locals 1

    .line 1835
    const/4 v0, 0x1

    return v0
.end method
