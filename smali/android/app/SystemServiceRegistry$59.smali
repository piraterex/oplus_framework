.class Landroid/app/SystemServiceRegistry$59;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/net/wifi/nl80211/WifiNl80211Manager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 803
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/net/wifi/nl80211/WifiNl80211Manager;
    .locals 2
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 806
    new-instance v0, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 803
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$59;->createService(Landroid/app/ContextImpl;)Landroid/net/wifi/nl80211/WifiNl80211Manager;

    move-result-object p1

    return-object p1
.end method
