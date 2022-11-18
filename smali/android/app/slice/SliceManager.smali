.class public Landroid/app/slice/SliceManager;
.super Ljava/lang/Object;
.source "SliceManager.java"


# static fields
.field public static final greylist-max-o ACTION_REQUEST_SLICE_PERMISSION:Ljava/lang/String; = "com.android.intent.action.REQUEST_SLICE_PERMISSION"

.field public static final whitelist CATEGORY_SLICE:Ljava/lang/String; = "android.app.slice.category.SLICE"

.field public static final whitelist SLICE_METADATA_KEY:Ljava/lang/String; = "android.metadata.SLICE_URI"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SliceManager"


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mService:Landroid/app/slice/ISliceManager;

.field private final greylist-max-o mToken:Landroid/os/IBinder;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/slice/SliceManager;->mToken:Landroid/os/IBinder;

    .line 114
    iput-object p1, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    .line 115
    nop

    .line 116
    const-string/jumbo v0, "slice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 115
    invoke-static {v0}, Landroid/app/slice/ISliceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/slice/ISliceManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/slice/SliceManager;->mService:Landroid/app/slice/ISliceManager;

    .line 117
    return-void
.end method

.method private greylist-max-o getAuthority(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 335
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 336
    .local v0, "queryIntent":Landroid/content/Intent;
    const-string v1, "android.app.slice.category.SLICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 337
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    :cond_0
    iget-object v1, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    .line 340
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 341
    .local v1, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_0

    .line 342
    :cond_1
    const/4 v2, 0x0

    .line 341
    :goto_0
    return-object v2
.end method

.method private greylist-max-o resolveStatic(Landroid/content/Intent;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .line 346
    const-string v0, "intent"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 347
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 348
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 347
    const-string v1, "Slice intent must be explicit %s"

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 352
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 353
    .local v0, "intentData":Landroid/net/Uri;
    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vnd.android.slice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 354
    return-object v0

    .line 357
    :cond_2
    iget-object v1, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 359
    .local v1, "resolve":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_3

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_3

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 361
    const-string v3, "android.metadata.SLICE_URI"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 362
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 363
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 362
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 365
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public greylist bindSlice(Landroid/content/Intent;Ljava/util/List;)Landroid/app/slice/Slice;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/app/slice/SliceSpec;",
            ">;)",
            "Landroid/app/slice/Slice;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 422
    .local p2, "supportedSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/app/slice/SliceSpec;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Landroid/app/slice/SliceManager;->bindSlice(Landroid/content/Intent;Ljava/util/Set;)Landroid/app/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public whitelist bindSlice(Landroid/content/Intent;Ljava/util/Set;)Landroid/app/slice/Slice;
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Set<",
            "Landroid/app/slice/SliceSpec;",
            ">;)",
            "Landroid/app/slice/Slice;"
        }
    .end annotation

    .line 381
    .local p2, "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/slice/SliceSpec;>;"
    const-string v0, "intent"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 382
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 383
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    .line 382
    const-string v4, "Slice intent must be explicit %s"

    invoke-static {v0, v4, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 385
    iget-object v0, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 386
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0, p1, v0}, Landroid/app/slice/SliceManager;->resolveStatic(Landroid/content/Intent;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v3

    .line 387
    .local v3, "staticUri":Landroid/net/Uri;
    if-eqz v3, :cond_2

    invoke-virtual {p0, v3, p2}, Landroid/app/slice/SliceManager;->bindSlice(Landroid/net/Uri;Ljava/util/Set;)Landroid/app/slice/Slice;

    move-result-object v1

    return-object v1

    .line 389
    :cond_2
    invoke-direct {p0, p1}, Landroid/app/slice/SliceManager;->getAuthority(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 390
    .local v4, "authority":Ljava/lang/String;
    const/4 v5, 0x0

    if-nez v4, :cond_3

    return-object v5

    .line 391
    :cond_3
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    const-string v7, "content"

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 392
    invoke-virtual {v6, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 393
    .local v6, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v0, v6}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .local v7, "provider":Landroid/content/ContentProviderClient;
    if-nez v7, :cond_5

    .line 395
    :try_start_1
    const-string v8, "SliceManager"

    const-string v9, "Unknown URI: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v1

    invoke-static {v9, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    nop

    .line 407
    if-eqz v7, :cond_4

    :try_start_2
    invoke-virtual {v7}, Landroid/content/ContentProviderClient;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 396
    :cond_4
    return-object v5

    .line 398
    :cond_5
    :try_start_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 399
    .local v1, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "slice_intent"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 400
    const-string/jumbo v2, "supported_specs"

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 402
    const-string/jumbo v2, "map_slice"

    invoke-virtual {v7, v2, v5, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 403
    .local v2, "res":Landroid/os/Bundle;
    if-nez v2, :cond_7

    .line 404
    nop

    .line 407
    if-eqz v7, :cond_6

    :try_start_4
    invoke-virtual {v7}, Landroid/content/ContentProviderClient;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 404
    :cond_6
    return-object v5

    .line 406
    :cond_7
    :try_start_5
    const-string/jumbo v8, "slice"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/app/slice/Slice;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 407
    if-eqz v7, :cond_8

    :try_start_6
    invoke-virtual {v7}, Landroid/content/ContentProviderClient;->close()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 406
    :cond_8
    return-object v8

    .line 393
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "res":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_9

    :try_start_7
    invoke-virtual {v7}, Landroid/content/ContentProviderClient;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "staticUri":Landroid/net/Uri;
    .end local v4    # "authority":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local p0    # "this":Landroid/app/slice/SliceManager;
    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/slice/SliceSpec;>;"
    :cond_9
    :goto_2
    throw v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    .line 407
    .end local v7    # "provider":Landroid/content/ContentProviderClient;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v3    # "staticUri":Landroid/net/Uri;
    .restart local v4    # "authority":Ljava/lang/String;
    .restart local v6    # "uri":Landroid/net/Uri;
    .restart local p0    # "this":Landroid/app/slice/SliceManager;
    .restart local p1    # "intent":Landroid/content/Intent;
    .restart local p2    # "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/slice/SliceSpec;>;"
    :catch_0
    move-exception v1

    .line 410
    .local v1, "e":Landroid/os/RemoteException;
    return-object v5
.end method

.method public greylist bindSlice(Landroid/net/Uri;Ljava/util/List;)Landroid/app/slice/Slice;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/app/slice/SliceSpec;",
            ">;)",
            "Landroid/app/slice/Slice;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 281
    .local p2, "supportedSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/app/slice/SliceSpec;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Landroid/app/slice/SliceManager;->bindSlice(Landroid/net/Uri;Ljava/util/Set;)Landroid/app/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public whitelist bindSlice(Landroid/net/Uri;Ljava/util/Set;)Landroid/app/slice/Slice;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroid/app/slice/SliceSpec;",
            ">;)",
            "Landroid/app/slice/Slice;"
        }
    .end annotation

    .line 251
    .local p2, "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/slice/SliceSpec;>;"
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 253
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .local v2, "provider":Landroid/content/ContentProviderClient;
    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 255
    :try_start_1
    const-string v4, "SliceManager"

    const-string v5, "Unknown URI: %s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v3, v6

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    nop

    .line 268
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 256
    :cond_0
    return-object v1

    .line 258
    :cond_1
    :try_start_3
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 259
    .local v4, "extras":Landroid/os/Bundle;
    const-string/jumbo v5, "slice_uri"

    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 260
    const-string/jumbo v5, "supported_specs"

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 262
    const-string v5, "bind_slice"

    invoke-virtual {v2, v5, v1, v4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 263
    .local v5, "res":Landroid/os/Bundle;
    invoke-static {v5, v3}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 264
    if-nez v5, :cond_3

    .line 265
    nop

    .line 268
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 265
    :cond_2
    return-object v1

    .line 267
    :cond_3
    :try_start_5
    const-string/jumbo v3, "slice"

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/slice/Slice;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 268
    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 267
    :cond_4
    return-object v3

    .line 253
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v5    # "res":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_5

    :try_start_7
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_8
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local p0    # "this":Landroid/app/slice/SliceManager;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/slice/SliceSpec;>;"
    :cond_5
    :goto_0
    throw v3
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    .line 268
    .end local v2    # "provider":Landroid/content/ContentProviderClient;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local p0    # "this":Landroid/app/slice/SliceManager;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/slice/SliceSpec;>;"
    :catch_0
    move-exception v2

    .line 271
    .local v2, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist checkSlicePermission(Landroid/net/Uri;II)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 442
    :try_start_0
    iget-object v0, p0, Landroid/app/slice/SliceManager;->mService:Landroid/app/slice/ISliceManager;

    iget-object v1, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v6}, Landroid/app/slice/ISliceManager;->checkSlicePermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o enforceSlicePermission(Landroid/net/Uri;Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "autoGrantPermissions"    # [Ljava/lang/String;

    .line 494
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {p4, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    return-void

    .line 497
    :cond_0
    if-eqz p2, :cond_2

    .line 500
    iget-object v1, p0, Landroid/app/slice/SliceManager;->mService:Landroid/app/slice/ISliceManager;

    iget-object v0, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Landroid/app/slice/ISliceManager;->checkSlicePermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)I

    move-result v0

    .line 502
    .local v0, "result":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 508
    .end local v0    # "result":I
    nop

    .line 509
    return-void

    .line 503
    .restart local v0    # "result":I
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have slice permission for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/slice/SliceManager;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "pkg":Ljava/lang/String;
    .end local p3    # "pid":I
    .end local p4    # "uid":I
    .end local p5    # "autoGrantPermissions":[Ljava/lang/String;
    throw v1

    .line 498
    .end local v0    # "result":I
    .restart local p0    # "this":Landroid/app/slice/SliceManager;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "pkg":Ljava/lang/String;
    .restart local p3    # "pid":I
    .restart local p4    # "uid":I
    .restart local p5    # "autoGrantPermissions":[Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No pkg specified"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/slice/SliceManager;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "pkg":Ljava/lang/String;
    .end local p3    # "pid":I
    .end local p4    # "uid":I
    .end local p5    # "autoGrantPermissions":[Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    .restart local p0    # "this":Landroid/app/slice/SliceManager;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "pkg":Ljava/lang/String;
    .restart local p3    # "pid":I
    .restart local p4    # "uid":I
    .restart local p5    # "autoGrantPermissions":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPinnedSlices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 207
    :try_start_0
    iget-object v0, p0, Landroid/app/slice/SliceManager;->mService:Landroid/app/slice/ISliceManager;

    iget-object v1, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/slice/ISliceManager;->getPinnedSlices(Ljava/lang/String;)[Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPinnedSpecs(Landroid/net/Uri;)Ljava/util/Set;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set<",
            "Landroid/app/slice/SliceSpec;",
            ">;"
        }
    .end annotation

    .line 194
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/app/slice/SliceManager;->mService:Landroid/app/slice/ISliceManager;

    iget-object v2, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    .line 195
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-interface {v1, p1, v2}, Landroid/app/slice/ISliceManager;->getPinnedSpecs(Landroid/net/Uri;Ljava/lang/String;)[Landroid/app/slice/SliceSpec;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 225
    const-string v0, "SliceManager"

    iget-object v1, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 226
    .local v1, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .local v2, "provider":Landroid/content/ContentProviderClient;
    if-nez v2, :cond_1

    .line 228
    :try_start_1
    const-string v3, "Unknown URI: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 238
    .end local v2    # "provider":Landroid/content/ContentProviderClient;
    :cond_0
    goto :goto_1

    .line 230
    .restart local v2    # "provider":Landroid/content/ContentProviderClient;
    :cond_1
    :try_start_3
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 231
    .local v3, "extras":Landroid/os/Bundle;
    const-string/jumbo v4, "slice_uri"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 232
    const-string v4, "get_descendants"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 234
    .local v4, "res":Landroid/os/Bundle;
    const-string/jumbo v5, "slice_descendants"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 236
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 234
    :cond_2
    return-object v5

    .line 226
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "res":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local p0    # "this":Landroid/app/slice/SliceManager;
    .end local p1    # "uri":Landroid/net/Uri;
    :cond_3
    :goto_0
    throw v3
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 236
    .end local v2    # "provider":Landroid/content/ContentProviderClient;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local p0    # "this":Landroid/app/slice/SliceManager;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 237
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Unable to get slice descendants"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o grantPermissionFromUser(Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "allSlices"    # Z

    .line 517
    :try_start_0
    iget-object v0, p0, Landroid/app/slice/SliceManager;->mService:Landroid/app/slice/ISliceManager;

    iget-object v1, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1, p3}, Landroid/app/slice/ISliceManager;->grantPermissionFromUser(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    nop

    .line 521
    return-void

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist grantSlicePermission(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "toPackage"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 459
    :try_start_0
    iget-object v0, p0, Landroid/app/slice/SliceManager;->mService:Landroid/app/slice/ISliceManager;

    iget-object v1, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/app/slice/ISliceManager;->grantSlicePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    nop

    .line 463
    return-void

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o hasSliceAccess()Z
    .locals 2

    .line 179
    :try_start_0
    iget-object v0, p0, Landroid/app/slice/SliceManager;->mService:Landroid/app/slice/ISliceManager;

    iget-object v1, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/slice/ISliceManager;->hasSliceAccess(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist mapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .line 307
    iget-object v0, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 308
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0, p1, v0}, Landroid/app/slice/SliceManager;->resolveStatic(Landroid/content/Intent;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v1

    .line 309
    .local v1, "staticUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    return-object v1

    .line 311
    :cond_0
    invoke-direct {p0, p1}, Landroid/app/slice/SliceManager;->getAuthority(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "authority":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez v2, :cond_1

    return-object v3

    .line 313
    :cond_1
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "content"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 314
    invoke-virtual {v4, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 315
    .local v4, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .local v5, "provider":Landroid/content/ContentProviderClient;
    if-nez v5, :cond_3

    .line 317
    :try_start_1
    const-string v6, "SliceManager"

    const-string v7, "Unknown URI: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    nop

    .line 327
    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 318
    :cond_2
    return-object v3

    .line 320
    :cond_3
    :try_start_3
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 321
    .local v6, "extras":Landroid/os/Bundle;
    const-string/jumbo v7, "slice_intent"

    invoke-virtual {v6, v7, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 322
    const-string/jumbo v7, "map_only"

    invoke-virtual {v5, v7, v3, v6}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 323
    .local v7, "res":Landroid/os/Bundle;
    if-nez v7, :cond_5

    .line 324
    nop

    .line 327
    if-eqz v5, :cond_4

    :try_start_4
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 324
    :cond_4
    return-object v3

    .line 326
    :cond_5
    :try_start_5
    const-string/jumbo v8, "slice"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 327
    if-eqz v5, :cond_6

    :try_start_6
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 326
    :cond_6
    return-object v8

    .line 315
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v7    # "res":Landroid/os/Bundle;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_7

    :try_start_7
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v7

    :try_start_8
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "staticUri":Landroid/net/Uri;
    .end local v2    # "authority":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local p0    # "this":Landroid/app/slice/SliceManager;
    .end local p1    # "intent":Landroid/content/Intent;
    :cond_7
    :goto_0
    throw v6
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    .line 327
    .end local v5    # "provider":Landroid/content/ContentProviderClient;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "staticUri":Landroid/net/Uri;
    .restart local v2    # "authority":Ljava/lang/String;
    .restart local v4    # "uri":Landroid/net/Uri;
    .restart local p0    # "this":Landroid/app/slice/SliceManager;
    .restart local p1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v5

    .line 330
    .local v5, "e":Landroid/os/RemoteException;
    return-object v3
.end method

.method public greylist pinSlice(Landroid/net/Uri;Ljava/util/List;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/app/slice/SliceSpec;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    .local p2, "specs":Ljava/util/List;, "Ljava/util/List<Landroid/app/slice/SliceSpec;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Landroid/app/slice/SliceManager;->pinSlice(Landroid/net/Uri;Ljava/util/Set;)V

    .line 150
    return-void
.end method

.method public whitelist pinSlice(Landroid/net/Uri;Ljava/util/Set;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroid/app/slice/SliceSpec;",
            ">;)V"
        }
    .end annotation

    .line 136
    .local p2, "specs":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/slice/SliceSpec;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/slice/SliceManager;->mService:Landroid/app/slice/ISliceManager;

    iget-object v1, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Landroid/app/slice/SliceSpec;

    invoke-interface {p2, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/app/slice/SliceSpec;

    iget-object v3, p0, Landroid/app/slice/SliceManager;->mToken:Landroid/os/IBinder;

    .line 136
    invoke-interface {v0, v1, p1, v2, v3}, Landroid/app/slice/ISliceManager;->pinSlice(Ljava/lang/String;Landroid/net/Uri;[Landroid/app/slice/SliceSpec;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    nop

    .line 141
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist revokeSlicePermission(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "toPackage"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 481
    :try_start_0
    iget-object v0, p0, Landroid/app/slice/SliceManager;->mService:Landroid/app/slice/ISliceManager;

    iget-object v1, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/app/slice/ISliceManager;->revokeSlicePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    nop

    .line 485
    return-void

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unpinSlice(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 168
    :try_start_0
    iget-object v0, p0, Landroid/app/slice/SliceManager;->mService:Landroid/app/slice/ISliceManager;

    iget-object v1, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/slice/SliceManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1, v2}, Landroid/app/slice/ISliceManager;->unpinSlice(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    nop

    .line 172
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
