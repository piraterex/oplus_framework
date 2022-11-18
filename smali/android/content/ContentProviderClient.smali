.class public Landroid/content/ContentProviderClient;
.super Ljava/lang/Object;
.source "ContentProviderClient.java"

# interfaces
.implements Landroid/content/ContentInterface;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentProviderClient$CursorWrapperInner;,
        Landroid/content/ContentProviderClient$NotRespondingRunnable;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "ContentProviderClient"

.field private static greylist-max-o sAnrHandler:Landroid/os/Handler;


# instance fields
.field private greylist-max-o mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

.field private greylist-max-o mAnrTimeout:J

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mAuthority:Ljava/lang/String;

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final greylist mContentProvider:Landroid/content/IContentProvider;

.field private final greylist-max-o mContentResolver:Landroid/content/ContentResolver;

.field private final greylist-max-p mPackageName:Ljava/lang/String;

.field private final greylist-max-o mStable:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContentProvider(Landroid/content/ContentProviderClient;)Landroid/content/IContentProvider;
    .locals 0

    iget-object p0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContentResolver(Landroid/content/ContentProviderClient;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentProvider"    # Landroid/content/IContentProvider;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "stable"    # Z

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProviderClient;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 104
    iput-object p1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    .line 105
    iput-object p2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    .line 106
    iget-object v1, p1, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    iput-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 109
    iput-object p3, p0, Landroid/content/ContentProviderClient;->mAuthority:Ljava/lang/String;

    .line 110
    iput-boolean p4, p0, Landroid/content/ContentProviderClient;->mStable:Z

    .line 112
    const-string v1, "ContentProviderClient.close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Z)V
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentProvider"    # Landroid/content/IContentProvider;
    .param p3, "stable"    # Z

    .line 98
    const-string/jumbo v0, "unknown"

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/content/ContentProviderClient;-><init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Ljava/lang/String;Z)V

    .line 99
    return-void
.end method

.method private greylist-max-o afterRemote()V
    .locals 2

    .line 159
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    if-eqz v0, :cond_0

    .line 160
    sget-object v1, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 162
    :cond_0
    return-void
.end method

.method private greylist-max-o beforeRemote()V
    .locals 4

    .line 153
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    if-eqz v0, :cond_0

    .line 154
    sget-object v1, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    iget-wide v2, p0, Landroid/content/ContentProviderClient;->mAnrTimeout:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    :cond_0
    return-void
.end method

.method private greylist-max-o closeInternal()Z
    .locals 3

    .line 631
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 632
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentProviderClient;->setDetectNotResponding(J)V

    .line 637
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    move-result v0

    return v0

    .line 640
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    move-result v0

    return v0

    .line 643
    :cond_1
    return v1
.end method

.method public static blacklist closeQuietly(Landroid/content/ContentProviderClient;)V
    .locals 0
    .param p0, "client"    # Landroid/content/ContentProviderClient;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 676
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 677
    return-void
.end method

.method public static greylist-max-o releaseQuietly(Landroid/content/ContentProviderClient;)V
    .locals 0
    .param p0, "client"    # Landroid/content/ContentProviderClient;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 682
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 683
    return-void
.end method


# virtual methods
.method public whitelist applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 3
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 570
    .local p2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string/jumbo v0, "operations"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 572
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 574
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/IContentProvider;->applyBatch(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 574
    return-object v0

    .line 582
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    .line 578
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 580
    :cond_0
    nop

    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p1    # "authority":Ljava/lang/String;
    .end local p2    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p1    # "authority":Ljava/lang/String;
    .restart local p2    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_0
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 583
    throw v0
.end method

.method public whitelist applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 562
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mAuthority:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method public whitelist bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # [Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 364
    const-string v0, "initialValues"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 366
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 368
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/IContentProvider;->bulkInsert(Landroid/content/AttributionSource;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 368
    return v0

    .line 375
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    .line 371
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 373
    :cond_0
    nop

    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p1    # "url":Landroid/net/Uri;
    .end local p2    # "initialValues":[Landroid/content/ContentValues;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p1    # "url":Landroid/net/Uri;
    .restart local p2    # "initialValues":[Landroid/content/ContentValues;
    :goto_0
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 376
    throw v0
.end method

.method public whitelist call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 589
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mAuthority:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 596
    const-string v0, "authority"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 597
    const-string/jumbo v0, "method"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 599
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 601
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 601
    return-object v0

    .line 609
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    .line 605
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 607
    :cond_0
    nop

    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p1    # "authority":Ljava/lang/String;
    .end local p2    # "method":Ljava/lang/String;
    .end local p3    # "arg":Ljava/lang/String;
    .end local p4    # "extras":Landroid/os/Bundle;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 609
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p1    # "authority":Ljava/lang/String;
    .restart local p2    # "method":Ljava/lang/String;
    .restart local p3    # "arg":Ljava/lang/String;
    .restart local p4    # "extras":Landroid/os/Bundle;
    :goto_0
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 610
    throw v0
.end method

.method public final whitelist canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 256
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 258
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1}, Landroid/content/IContentProvider;->canonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 258
    return-object v0

    .line 265
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    .line 261
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 263
    :cond_0
    nop

    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p1    # "url":Landroid/net/Uri;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p1    # "url":Landroid/net/Uri;
    :goto_0
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 266
    throw v0
.end method

.method public blacklist checkUriPermission(Landroid/net/Uri;II)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "uid"    # I
    .param p3, "modeFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 319
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 321
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/content/IContentProvider;->checkUriPermission(Landroid/content/AttributionSource;Landroid/net/Uri;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 321
    return v0

    .line 329
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    .line 325
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 327
    :cond_0
    nop

    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "uid":I
    .end local p3    # "modeFlags":I
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "uid":I
    .restart local p3    # "modeFlags":I
    :goto_0
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 330
    throw v0
.end method

.method public whitelist test-api close()V
    .locals 0

    .line 619
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->closeInternal()Z

    .line 620
    return-void
.end method

.method public whitelist delete(Landroid/net/Uri;Landroid/os/Bundle;)I
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 388
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 390
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 392
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/IContentProvider;->delete(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 392
    return v0

    .line 399
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    .line 395
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 397
    :cond_0
    nop

    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p1    # "url":Landroid/net/Uri;
    .end local p2    # "extras":Landroid/os/Bundle;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p1    # "url":Landroid/net/Uri;
    .restart local p2    # "extras":Landroid/os/Bundle;
    :goto_0
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 400
    throw v0
.end method

.method public whitelist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 382
    invoke-static {p2, p3}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 650
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 654
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 657
    nop

    .line 658
    return-void

    .line 656
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 657
    throw v0
.end method

.method public whitelist getLocalContentProvider()Landroid/content/ContentProvider;
    .locals 1

    .line 670
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-static {v0}, Landroid/content/ContentProvider;->coerceToLocalContentProvider(Landroid/content/IContentProvider;)Landroid/content/ContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    const-string/jumbo v0, "mimeTypeFilter"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 238
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 240
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v0, p1, p2}, Landroid/content/IContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 240
    return-object v0

    .line 247
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    .line 243
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 245
    :cond_0
    nop

    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p1    # "url":Landroid/net/Uri;
    .end local p2    # "mimeTypeFilter":Ljava/lang/String;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p1    # "url":Landroid/net/Uri;
    .restart local p2    # "mimeTypeFilter":Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 248
    throw v0
.end method

.method public whitelist getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 218
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 220
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v0, p1}, Landroid/content/IContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 220
    return-object v0

    .line 227
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    .line 223
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 225
    :cond_0
    nop

    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p1    # "url":Landroid/net/Uri;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p1    # "url":Landroid/net/Uri;
    :goto_0
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 228
    throw v0
.end method

.method public whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 336
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 345
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 347
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/content/IContentProvider;->insert(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 347
    return-object v0

    .line 355
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    .line 351
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 353
    :cond_0
    nop

    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p1    # "url":Landroid/net/Uri;
    .end local p2    # "initialValues":Landroid/content/ContentValues;
    .end local p3    # "extras":Landroid/os/Bundle;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p1    # "url":Landroid/net/Uri;
    .restart local p2    # "initialValues":Landroid/content/ContentValues;
    .restart local p3    # "extras":Landroid/os/Bundle;
    :goto_0
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 356
    throw v0
.end method

.method public whitelist openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 481
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 494
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 495
    const-string/jumbo v0, "mode"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 497
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 499
    const/4 v0, 0x0

    .line 500
    .local v0, "remoteSignal":Landroid/os/ICancellationSignal;
    if-eqz p3, :cond_0

    .line 501
    :try_start_0
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 502
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v1

    move-object v0, v1

    .line 503
    invoke-virtual {p3, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 505
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, p1, p2, v0}, Landroid/content/IContentProvider;->openAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 505
    return-object v1

    .line 513
    .end local v0    # "remoteSignal":Landroid/os/ICancellationSignal;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_1

    .line 509
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 511
    :cond_1
    nop

    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p1    # "url":Landroid/net/Uri;
    .end local p2    # "mode":Ljava/lang/String;
    .end local p3    # "signal":Landroid/os/CancellationSignal;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 513
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p1    # "url":Landroid/net/Uri;
    .restart local p2    # "mode":Ljava/lang/String;
    .restart local p3    # "signal":Landroid/os/CancellationSignal;
    :goto_0
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 514
    throw v0
.end method

.method public whitelist openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 437
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 450
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 451
    const-string/jumbo v0, "mode"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 453
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, "remoteSignal":Landroid/os/ICancellationSignal;
    if-eqz p3, :cond_0

    .line 457
    :try_start_0
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 458
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v1

    move-object v0, v1

    .line 459
    invoke-virtual {p3, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 461
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, p1, p2, v0}, Landroid/content/IContentProvider;->openFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 461
    return-object v1

    .line 468
    .end local v0    # "remoteSignal":Landroid/os/ICancellationSignal;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_1

    .line 464
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 466
    :cond_1
    nop

    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p1    # "url":Landroid/net/Uri;
    .end local p2    # "mode":Ljava/lang/String;
    .end local p3    # "signal":Landroid/os/CancellationSignal;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p1    # "url":Landroid/net/Uri;
    .restart local p2    # "mode":Ljava/lang/String;
    .restart local p3    # "signal":Landroid/os/CancellationSignal;
    :goto_0
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 469
    throw v0
.end method

.method public final whitelist openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 535
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 536
    const-string/jumbo v0, "mimeTypeFilter"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 538
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 540
    const/4 v0, 0x0

    .line 541
    .local v0, "remoteSignal":Landroid/os/ICancellationSignal;
    if-eqz p4, :cond_0

    .line 542
    :try_start_0
    invoke-virtual {p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 543
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v1

    move-object v0, v1

    .line 544
    invoke-virtual {p4, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 546
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->openTypedAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 546
    return-object v1

    .line 554
    .end local v0    # "remoteSignal":Landroid/os/ICancellationSignal;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_1

    .line 550
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 552
    :cond_1
    nop

    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mimeTypeFilter":Ljava/lang/String;
    .end local p3    # "opts":Landroid/os/Bundle;
    .end local p4    # "signal":Landroid/os/CancellationSignal;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 554
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mimeTypeFilter":Ljava/lang/String;
    .restart local p3    # "opts":Landroid/os/Bundle;
    .restart local p4    # "signal":Landroid/os/CancellationSignal;
    :goto_0
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 555
    throw v0
.end method

.method public final whitelist openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 521
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentProviderClient;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 528
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/ContentProviderClient;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "queryArgs"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 188
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    if-eqz p4, :cond_0

    .line 192
    :try_start_0
    invoke-virtual {p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 193
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v1

    move-object v0, v1

    .line 194
    invoke-virtual {p4, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 196
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 200
    const/4 v2, 0x0

    .line 209
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 200
    return-object v2

    .line 202
    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/ContentProviderClient$CursorWrapperInner;

    invoke-direct {v2, p0, v1}, Landroid/content/ContentProviderClient$CursorWrapperInner;-><init>(Landroid/content/ContentProviderClient;Landroid/database/Cursor;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 202
    return-object v2

    .line 209
    .end local v0    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_2
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_2

    .line 205
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 207
    :cond_2
    nop

    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "projection":[Ljava/lang/String;
    .end local p3    # "queryArgs":Landroid/os/Bundle;
    .end local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "projection":[Ljava/lang/String;
    .restart local p3    # "queryArgs":Landroid/os/Bundle;
    .restart local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_0
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 210
    throw v0
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    nop

    .line 177
    invoke-static {p3, p4, p5}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 178
    .local v0, "queryArgs":Landroid/os/Bundle;
    invoke-virtual {p0, p1, p2, v0, p6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public whitelist refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 293
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    if-eqz p3, :cond_0

    .line 297
    :try_start_0
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 298
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v1

    move-object v0, v1

    .line 299
    invoke-virtual {p3, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 301
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, p1, p2, v0}, Landroid/content/IContentProvider;->refresh(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 301
    return v1

    .line 309
    .end local v0    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_1

    .line 305
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 307
    :cond_1
    nop

    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p1    # "url":Landroid/net/Uri;
    .end local p2    # "extras":Landroid/os/Bundle;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p1    # "url":Landroid/net/Uri;
    .restart local p2    # "extras":Landroid/os/Bundle;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_0
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 310
    throw v0
.end method

.method public whitelist release()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 627
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->closeInternal()Z

    move-result v0

    return v0
.end method

.method public whitelist setDetectNotResponding(J)V
    .locals 5
    .param p1, "timeoutMillis"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 128
    const-class v0, Landroid/content/ContentProviderClient;

    monitor-enter v0

    .line 129
    :try_start_0
    iput-wide p1, p0, Landroid/content/ContentProviderClient;->mAnrTimeout:J

    .line 131
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 132
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    if-nez v1, :cond_0

    .line 133
    new-instance v1, Landroid/content/ContentProviderClient$NotRespondingRunnable;

    invoke-direct {v1, p0, v2}, Landroid/content/ContentProviderClient$NotRespondingRunnable;-><init>(Landroid/content/ContentProviderClient;Landroid/content/ContentProviderClient$NotRespondingRunnable-IA;)V

    iput-object v1, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    .line 135
    :cond_0
    sget-object v1, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 136
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v3, v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    sput-object v1, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    .line 141
    :cond_1
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    goto :goto_0

    .line 143
    :cond_2
    iput-object v2, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    .line 147
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->defaultBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 149
    :goto_0
    monitor-exit v0

    .line 150
    return-void

    .line 149
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final whitelist uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 274
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 276
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1}, Landroid/content/IContentProvider;->uncanonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 276
    return-object v0

    .line 283
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    .line 279
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 281
    :cond_0
    nop

    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p1    # "url":Landroid/net/Uri;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p1    # "url":Landroid/net/Uri;
    :goto_0
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 284
    throw v0
.end method

.method public whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 415
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 417
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/content/IContentProvider;->update(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 417
    return v0

    .line 424
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    .line 420
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 422
    :cond_0
    nop

    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p1    # "url":Landroid/net/Uri;
    .end local p2    # "values":Landroid/content/ContentValues;
    .end local p3    # "extras":Landroid/os/Bundle;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p1    # "url":Landroid/net/Uri;
    .restart local p2    # "values":Landroid/content/ContentValues;
    .restart local p3    # "extras":Landroid/os/Bundle;
    :goto_0
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 425
    throw v0
.end method

.method public whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 406
    invoke-static {p3, p4}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method
