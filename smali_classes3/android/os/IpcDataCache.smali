.class public Landroid/os/IpcDataCache;
.super Landroid/app/PropertyInvalidatedCache;
.source "IpcDataCache.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IpcDataCache$SystemServerCallHandler;,
        Landroid/os/IpcDataCache$RemoteCall;,
        Landroid/os/IpcDataCache$Config;,
        Landroid/os/IpcDataCache$IpcDataCacheModule;,
        Landroid/os/IpcDataCache$QueryHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Query:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/PropertyInvalidatedCache<",
        "TQuery;TResult;>;"
    }
.end annotation


# static fields
.field public static final blacklist MODULE_BLUETOOTH:Ljava/lang/String; = "bluetooth"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist MODULE_SYSTEM:Ljava/lang/String; = "system_server"

.field public static final blacklist MODULE_TEST:Ljava/lang/String; = "test"


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V
    .locals 0
    .param p1, "maxEntries"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "api"    # Ljava/lang/String;
    .param p4, "cacheName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/IpcDataCache$QueryHandler<",
            "TQuery;TResult;>;)V"
        }
    .end annotation

    .line 328
    .local p0, "this":Landroid/os/IpcDataCache;, "Landroid/os/IpcDataCache<TQuery;TResult;>;"
    .local p5, "computer":Landroid/os/IpcDataCache$QueryHandler;, "Landroid/os/IpcDataCache$QueryHandler<TQuery;TResult;>;"
    invoke-direct/range {p0 .. p5}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    .line 329
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$QueryHandler;)V
    .locals 6
    .param p1, "config"    # Landroid/os/IpcDataCache$Config;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$Config;",
            "Landroid/os/IpcDataCache$QueryHandler<",
            "TQuery;TResult;>;)V"
        }
    .end annotation

    .line 550
    .local p0, "this":Landroid/os/IpcDataCache;, "Landroid/os/IpcDataCache<TQuery;TResult;>;"
    .local p2, "computer":Landroid/os/IpcDataCache$QueryHandler;, "Landroid/os/IpcDataCache$QueryHandler<TQuery;TResult;>;"
    invoke-virtual {p1}, Landroid/os/IpcDataCache$Config;->maxEntries()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/IpcDataCache$Config;->module()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/IpcDataCache$Config;->api()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/IpcDataCache$Config;->name()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    .line 551
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V
    .locals 1
    .param p1, "config"    # Landroid/os/IpcDataCache$Config;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$Config;",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "TQuery;TResult;>;)V"
        }
    .end annotation

    .line 588
    .local p0, "this":Landroid/os/IpcDataCache;, "Landroid/os/IpcDataCache<TQuery;TResult;>;"
    .local p2, "computer":Landroid/os/IpcDataCache$RemoteCall;, "Landroid/os/IpcDataCache$RemoteCall<TQuery;TResult;>;"
    new-instance v0, Landroid/os/IpcDataCache$SystemServerCallHandler;

    invoke-direct {v0, p2}, Landroid/os/IpcDataCache$SystemServerCallHandler;-><init>(Landroid/os/IpcDataCache$RemoteCall;)V

    invoke-direct {p0, p1, v0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$QueryHandler;)V

    .line 589
    return-void
.end method

.method public static blacklist disableForCurrentProcess(Ljava/lang/String;)V
    .locals 0
    .param p0, "cacheName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 349
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->disableForCurrentProcess(Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public static blacklist invalidateCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "api"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 382
    invoke-static {p0, p1}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void
.end method


# virtual methods
.method public blacklist disableForCurrentProcess()V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 339
    .local p0, "this":Landroid/os/IpcDataCache;, "Landroid/os/IpcDataCache<TQuery;TResult;>;"
    invoke-super {p0}, Landroid/app/PropertyInvalidatedCache;->disableForCurrentProcess()V

    .line 340
    return-void
.end method

.method public blacklist invalidateCache()V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 371
    .local p0, "this":Landroid/os/IpcDataCache;, "Landroid/os/IpcDataCache<TQuery;TResult;>;"
    invoke-super {p0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache()V

    .line 372
    return-void
.end method

.method public blacklist query(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)TResult;"
        }
    .end annotation

    .line 360
    .local p0, "this":Landroid/os/IpcDataCache;, "Landroid/os/IpcDataCache<TQuery;TResult;>;"
    .local p1, "query":Ljava/lang/Object;, "TQuery;"
    invoke-super {p0, p1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
