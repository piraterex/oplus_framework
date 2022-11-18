.class public abstract Landroid/location/provider/LocationProviderBase;
.super Ljava/lang/Object;
.source "LocationProviderBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/provider/LocationProviderBase$Service;,
        Landroid/location/provider/LocationProviderBase$OnFlushCompleteCallback;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_FUSED_PROVIDER:Ljava/lang/String; = "com.android.location.service.FusedLocationProvider"

.field public static final whitelist ACTION_NETWORK_PROVIDER:Ljava/lang/String; = "com.android.location.service.v3.NetworkLocationProvider"


# instance fields
.field volatile blacklist mAllowed:Z

.field final blacklist mAttributionTag:Ljava/lang/String;

.field final blacklist mBinder:Landroid/os/IBinder;

.field volatile blacklist mManager:Landroid/location/provider/ILocationProviderManager;

.field volatile blacklist mProperties:Landroid/location/provider/ProviderProperties;

.field final blacklist mTag:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;Landroid/location/provider/ProviderProperties;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "properties"    # Landroid/location/provider/ProviderProperties;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p2, p0, Landroid/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/provider/LocationProviderBase;->mAttributionTag:Ljava/lang/String;

    .line 117
    new-instance v0, Landroid/location/provider/LocationProviderBase$Service;

    invoke-direct {v0, p0}, Landroid/location/provider/LocationProviderBase$Service;-><init>(Landroid/location/provider/LocationProviderBase;)V

    iput-object v0, p0, Landroid/location/provider/LocationProviderBase;->mBinder:Landroid/os/IBinder;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/provider/LocationProviderBase;->mManager:Landroid/location/provider/ILocationProviderManager;

    .line 120
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/provider/ProviderProperties;

    iput-object v0, p0, Landroid/location/provider/LocationProviderBase;->mProperties:Landroid/location/provider/ProviderProperties;

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/provider/LocationProviderBase;->mAllowed:Z

    .line 122
    return-void
.end method

.method private static blacklist stripExtras(Landroid/location/Location;)Landroid/location/Location;
    .locals 5
    .param p0, "location"    # Landroid/location/Location;

    .line 262
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 263
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v1, "noGPSLocation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "coarseLocation"

    const-string v4, "indoorProbability"

    if-nez v2, :cond_0

    .line 264
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 265
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 266
    :cond_0
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object p0, v2

    .line 267
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 268
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 275
    :cond_1
    return-object p0
.end method

.method private static blacklist stripExtras(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .line 279
    .local p0, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    move-object v0, p0

    .line 280
    .local v0, "mapped":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 281
    .local v1, "size":I
    const/4 v2, 0x0

    .line 282
    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    .line 283
    .local v4, "location":Landroid/location/Location;
    invoke-static {v4}, Landroid/location/provider/LocationProviderBase;->stripExtras(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v5

    .line 284
    .local v5, "newLocation":Landroid/location/Location;
    if-eq v0, p0, :cond_0

    .line 285
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 286
    :cond_0
    if-eq v5, v4, :cond_3

    .line 287
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v6

    .line 288
    const/4 v6, 0x0

    .line 289
    .local v6, "j":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/Location;

    .line 290
    .local v8, "copiedLocation":Landroid/location/Location;
    if-lt v6, v2, :cond_1

    .line 291
    goto :goto_2

    .line 293
    :cond_1
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    nop

    .end local v8    # "copiedLocation":Landroid/location/Location;
    add-int/lit8 v6, v6, 0x1

    .line 295
    goto :goto_1

    .line 296
    :cond_2
    :goto_2
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    .end local v6    # "j":I
    :cond_3
    :goto_3
    nop

    .end local v4    # "location":Landroid/location/Location;
    .end local v5    # "newLocation":Landroid/location/Location;
    add-int/lit8 v2, v2, 0x1

    .line 299
    goto :goto_0

    .line 301
    :cond_4
    return-object v0
.end method


# virtual methods
.method public final whitelist getBinder()Landroid/os/IBinder;
    .locals 1

    .line 129
    iget-object v0, p0, Landroid/location/provider/LocationProviderBase;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getProperties()Landroid/location/provider/ProviderProperties;
    .locals 1

    .line 201
    iget-object v0, p0, Landroid/location/provider/LocationProviderBase;->mProperties:Landroid/location/provider/ProviderProperties;

    return-object v0
.end method

.method public whitelist isAllowed()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Landroid/location/provider/LocationProviderBase;->mAllowed:Z

    return v0
.end method

.method public abstract whitelist onFlush(Landroid/location/provider/LocationProviderBase$OnFlushCompleteCallback;)V
.end method

.method public abstract whitelist onSendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract whitelist onSetRequest(Landroid/location/provider/ProviderRequest;)V
.end method

.method public whitelist reportLocation(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .line 208
    iget-object v0, p0, Landroid/location/provider/LocationProviderBase;->mManager:Landroid/location/provider/ILocationProviderManager;

    .line 209
    .local v0, "manager":Landroid/location/provider/ILocationProviderManager;
    if-eqz v0, :cond_0

    .line 211
    :try_start_0
    invoke-static {p1}, Landroid/location/provider/LocationProviderBase;->stripExtras(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/location/provider/ILocationProviderManager;->onReportLocation(Landroid/location/Location;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Landroid/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 212
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 213
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 218
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist reportLocations(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 225
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    iget-object v0, p0, Landroid/location/provider/LocationProviderBase;->mManager:Landroid/location/provider/ILocationProviderManager;

    .line 226
    .local v0, "manager":Landroid/location/provider/ILocationProviderManager;
    if-eqz v0, :cond_0

    .line 230
    :try_start_0
    invoke-static {p1}, Landroid/location/provider/LocationProviderBase;->stripExtras(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/location/provider/ILocationProviderManager;->onReportLocations(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    goto :goto_0

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Landroid/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 231
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 232
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 237
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setAllowed(Z)V
    .locals 3
    .param p1, "allowed"    # Z

    .line 149
    iget-object v0, p0, Landroid/location/provider/LocationProviderBase;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    .line 150
    :try_start_0
    iget-boolean v1, p0, Landroid/location/provider/LocationProviderBase;->mAllowed:Z

    if-ne v1, p1, :cond_0

    .line 151
    monitor-exit v0

    return-void

    .line 154
    :cond_0
    iput-boolean p1, p0, Landroid/location/provider/LocationProviderBase;->mAllowed:Z

    .line 155
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    iget-object v0, p0, Landroid/location/provider/LocationProviderBase;->mManager:Landroid/location/provider/ILocationProviderManager;

    .line 158
    .local v0, "manager":Landroid/location/provider/ILocationProviderManager;
    if-eqz v0, :cond_1

    .line 160
    :try_start_1
    iget-boolean v1, p0, Landroid/location/provider/LocationProviderBase;->mAllowed:Z

    invoke-interface {v0, v1}, Landroid/location/provider/ILocationProviderManager;->onSetAllowed(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Landroid/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 161
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 162
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 167
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void

    .line 155
    .end local v0    # "manager":Landroid/location/provider/ILocationProviderManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist setProperties(Landroid/location/provider/ProviderProperties;)V
    .locals 3
    .param p1, "properties"    # Landroid/location/provider/ProviderProperties;

    .line 181
    iget-object v0, p0, Landroid/location/provider/LocationProviderBase;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    .line 182
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/provider/ProviderProperties;

    iput-object v1, p0, Landroid/location/provider/LocationProviderBase;->mProperties:Landroid/location/provider/ProviderProperties;

    .line 183
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    iget-object v0, p0, Landroid/location/provider/LocationProviderBase;->mManager:Landroid/location/provider/ILocationProviderManager;

    .line 186
    .local v0, "manager":Landroid/location/provider/ILocationProviderManager;
    if-eqz v0, :cond_0

    .line 188
    :try_start_1
    iget-object v1, p0, Landroid/location/provider/LocationProviderBase;->mProperties:Landroid/location/provider/ProviderProperties;

    invoke-interface {v0, v1}, Landroid/location/provider/ILocationProviderManager;->onSetProperties(Landroid/location/provider/ProviderProperties;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    goto :goto_0

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Landroid/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 189
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 190
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 195
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void

    .line 183
    .end local v0    # "manager":Landroid/location/provider/ILocationProviderManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
