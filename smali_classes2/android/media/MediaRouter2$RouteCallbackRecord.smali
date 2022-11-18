.class final Landroid/media/MediaRouter2$RouteCallbackRecord;
.super Ljava/lang/Object;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RouteCallbackRecord"
.end annotation


# instance fields
.field public final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field public final blacklist mPreference:Landroid/media/RouteDiscoveryPreference;

.field public final blacklist mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "routeCallback"    # Landroid/media/MediaRouter2$RouteCallback;
    .param p3, "preference"    # Landroid/media/RouteDiscoveryPreference;

    .line 1852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1853
    iput-object p2, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    .line 1854
    iput-object p1, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1855
    iput-object p3, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mPreference:Landroid/media/RouteDiscoveryPreference;

    .line 1856
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1860
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1861
    return v0

    .line 1863
    :cond_0
    instance-of v1, p1, Landroid/media/MediaRouter2$RouteCallbackRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1864
    return v2

    .line 1866
    :cond_1
    iget-object v1, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    move-object v3, p1

    check-cast v3, Landroid/media/MediaRouter2$RouteCallbackRecord;

    iget-object v3, v3, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 1871
    iget-object v0, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
