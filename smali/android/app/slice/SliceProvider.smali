.class public abstract Landroid/app/slice/SliceProvider;
.super Landroid/content/ContentProvider;
.source "SliceProvider.java"


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field public static final greylist-max-o EXTRA_BIND_URI:Ljava/lang/String; = "slice_uri"

.field public static final greylist-max-o EXTRA_INTENT:Ljava/lang/String; = "slice_intent"

.field public static final greylist-max-o EXTRA_PKG:Ljava/lang/String; = "pkg"

.field public static final greylist-max-o EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final greylist-max-o EXTRA_SLICE:Ljava/lang/String; = "slice"

.field public static final greylist-max-o EXTRA_SLICE_DESCENDANTS:Ljava/lang/String; = "slice_descendants"

.field public static final greylist-max-o EXTRA_SUPPORTED_SPECS:Ljava/lang/String; = "supported_specs"

.field public static final greylist-max-o METHOD_GET_DESCENDANTS:Ljava/lang/String; = "get_descendants"

.field public static final greylist-max-o METHOD_GET_PERMISSIONS:Ljava/lang/String; = "get_permissions"

.field public static final greylist-max-o METHOD_MAP_INTENT:Ljava/lang/String; = "map_slice"

.field public static final greylist-max-o METHOD_MAP_ONLY_INTENT:Ljava/lang/String; = "map_only"

.field public static final greylist-max-o METHOD_PIN:Ljava/lang/String; = "pin"

.field public static final greylist-max-o METHOD_SLICE:Ljava/lang/String; = "bind_slice"

.field public static final greylist-max-o METHOD_UNPIN:Ljava/lang/String; = "unpin"

.field private static final greylist-max-o SLICE_BIND_ANR:J = 0x7d0L

.field public static final whitelist SLICE_TYPE:Ljava/lang/String; = "vnd.android.slice"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SliceProvider"


# instance fields
.field private final greylist-max-o mAnr:Ljava/lang/Runnable;

.field private final greylist-max-o mAutoGrantPermissions:[Ljava/lang/String;

.field private greylist-max-o mCallback:Ljava/lang/String;

.field private greylist-max-o mSliceManager:Landroid/app/slice/SliceManager;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 184
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 563
    new-instance v0, Landroid/app/slice/SliceProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/app/slice/SliceProvider$$ExternalSyntheticLambda0;-><init>(Landroid/app/slice/SliceProvider;)V

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    .line 185
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mAutoGrantPermissions:[Ljava/lang/String;

    .line 186
    return-void
.end method

.method public varargs constructor whitelist <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "autoGrantPermissions"    # [Ljava/lang/String;

    .line 180
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 563
    new-instance v0, Landroid/app/slice/SliceProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/app/slice/SliceProvider$$ExternalSyntheticLambda0;-><init>(Landroid/app/slice/SliceProvider;)V

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    .line 181
    iput-object p1, p0, Landroid/app/slice/SliceProvider;->mAutoGrantPermissions:[Ljava/lang/String;

    .line 182
    return-void
.end method

.method public static blacklist createPermissionIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sliceUri"    # Landroid/net/Uri;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 523
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.REQUEST_SLICE_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 524
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10402ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 526
    const-string/jumbo v1, "slice_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 527
    const-string/jumbo v1, "pkg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 530
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 529
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 531
    return-object v0
.end method

.method public static blacklist createPermissionPendingIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sliceUri"    # Landroid/net/Uri;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 513
    nop

    .line 514
    invoke-static {p0, p1, p2}, Landroid/app/slice/SliceProvider;->createPermissionIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 513
    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getPermissionString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 538
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 540
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const v1, 0x10408a9

    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 542
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 543
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    .line 540
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 544
    :catch_0
    move-exception v1

    .line 546
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unknown calling app"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private greylist-max-o handleBindSlice(Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;II)Landroid/app/slice/Slice;
    .locals 7
    .param p1, "sliceUri"    # Landroid/net/Uri;
    .param p3, "callingPkg"    # Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "callingPid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/app/slice/SliceSpec;",
            ">;",
            "Ljava/lang/String;",
            "II)",
            "Landroid/app/slice/Slice;"
        }
    .end annotation

    .line 452
    .local p2, "supportedSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/app/slice/SliceSpec;>;"
    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    .line 453
    :cond_0
    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    .line 455
    .local v0, "pkg":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/app/slice/SliceProvider;->mSliceManager:Landroid/app/slice/SliceManager;

    iget-object v6, p0, Landroid/app/slice/SliceProvider;->mAutoGrantPermissions:[Ljava/lang/String;

    move-object v2, p1

    move-object v3, v0

    move v4, p5

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/slice/SliceManager;->enforceSlicePermission(Landroid/net/Uri;Ljava/lang/String;II[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    nop

    .line 460
    const-string/jumbo v1, "onBindSlice"

    iput-object v1, p0, Landroid/app/slice/SliceProvider;->mCallback:Ljava/lang/String;

    .line 461
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 463
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/app/slice/SliceProvider;->onBindSliceStrict(Landroid/net/Uri;Ljava/util/List;)Landroid/app/slice/Slice;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 463
    return-object v1

    .line 465
    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 466
    throw v1

    .line 457
    :catch_0
    move-exception v1

    .line 458
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, p1, v0}, Landroid/app/slice/SliceProvider;->createPermissionSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/slice/Slice;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o handleGetDescendants(Landroid/net/Uri;)Ljava/util/Collection;
    .locals 1
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

    .line 424
    const-string/jumbo v0, "onGetSliceDescendants"

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mCallback:Ljava/lang/String;

    .line 425
    invoke-virtual {p0, p1}, Landroid/app/slice/SliceProvider;->onGetSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o handlePinSlice(Landroid/net/Uri;)V
    .locals 4
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 429
    const-string/jumbo v0, "onSlicePinned"

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mCallback:Ljava/lang/String;

    .line 430
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 432
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/slice/SliceProvider;->onSlicePinned(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 435
    nop

    .line 436
    return-void

    .line 434
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 435
    throw v0
.end method

.method private greylist-max-o handleUnpinSlice(Landroid/net/Uri;)V
    .locals 4
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 439
    const-string/jumbo v0, "onSliceUnpinned"

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mCallback:Ljava/lang/String;

    .line 440
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 442
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/slice/SliceProvider;->onSliceUnpinned(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 445
    nop

    .line 446
    return-void

    .line 444
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 445
    throw v0
.end method

.method private greylist-max-o onBindSliceStrict(Landroid/net/Uri;Ljava/util/List;)Landroid/app/slice/Slice;
    .locals 2
    .param p1, "sliceUri"    # Landroid/net/Uri;
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

    .line 551
    .local p2, "supportedSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/app/slice/SliceSpec;>;"
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 553
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 554
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    .line 555
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    .line 556
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 553
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 557
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v1}, Landroid/app/slice/SliceProvider;->onBindSlice(Landroid/net/Uri;Ljava/util/Set;)Landroid/app/slice/Slice;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 557
    return-object v1

    .line 559
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 560
    throw v1
.end method

.method private blacklist validateIncomingUriOrNull(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 420
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/slice/SliceProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public whitelist attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .line 190
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 191
    const-class v0, Landroid/app/slice/SliceManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/slice/SliceManager;

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mSliceManager:Landroid/app/slice/SliceManager;

    .line 192
    return-void
.end method

.method public whitelist call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 12
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 353
    const-string v0, "bind_slice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "supported_specs"

    const-string/jumbo v2, "slice"

    const-string/jumbo v3, "slice_uri"

    if-eqz v0, :cond_0

    .line 354
    nop

    .line 355
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 354
    invoke-direct {p0, v0}, Landroid/app/slice/SliceProvider;->validateIncomingUriOrNull(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/app/slice/SliceProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 356
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 358
    .local v1, "supportedSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/app/slice/SliceSpec;>;"
    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v9

    .line 359
    .local v9, "callingPackage":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 360
    .local v10, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 362
    .local v11, "callingPid":I
    move-object v3, p0

    move-object v4, v0

    move-object v5, v1

    move-object v6, v9

    move v7, v10

    move v8, v11

    invoke-direct/range {v3 .. v8}, Landroid/app/slice/SliceProvider;->handleBindSlice(Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;II)Landroid/app/slice/Slice;

    move-result-object v3

    .line 363
    .local v3, "s":Landroid/app/slice/Slice;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 364
    .local v4, "b":Landroid/os/Bundle;
    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 365
    return-object v4

    .line 366
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "supportedSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/app/slice/SliceSpec;>;"
    .end local v3    # "s":Landroid/app/slice/Slice;
    .end local v4    # "b":Landroid/os/Bundle;
    .end local v9    # "callingPackage":Ljava/lang/String;
    .end local v10    # "callingUid":I
    .end local v11    # "callingPid":I
    :cond_0
    const-string/jumbo v0, "map_slice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v4, "slice_intent"

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    .line 367
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 368
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_1

    return-object v5

    .line 369
    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/slice/SliceProvider;->onMapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/slice/SliceProvider;->validateIncomingUriOrNull(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 370
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 371
    .restart local v1    # "supportedSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/app/slice/SliceSpec;>;"
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 372
    .restart local v4    # "b":Landroid/os/Bundle;
    if-eqz v3, :cond_2

    .line 373
    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v9

    .line 374
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 373
    move-object v6, p0

    move-object v7, v3

    move-object v8, v1

    invoke-direct/range {v6 .. v11}, Landroid/app/slice/SliceProvider;->handleBindSlice(Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;II)Landroid/app/slice/Slice;

    move-result-object v5

    .line 375
    .local v5, "s":Landroid/app/slice/Slice;
    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 376
    .end local v5    # "s":Landroid/app/slice/Slice;
    goto :goto_0

    .line 377
    :cond_2
    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 379
    :goto_0
    return-object v4

    .line 380
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "supportedSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/app/slice/SliceSpec;>;"
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "b":Landroid/os/Bundle;
    :cond_3
    const-string/jumbo v0, "map_only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 381
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 382
    .restart local v0    # "intent":Landroid/content/Intent;
    if-nez v0, :cond_4

    return-object v5

    .line 383
    :cond_4
    invoke-virtual {p0, v0}, Landroid/app/slice/SliceProvider;->onMapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/app/slice/SliceProvider;->validateIncomingUriOrNull(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 384
    .local v1, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 385
    .local v3, "b":Landroid/os/Bundle;
    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 386
    return-object v3

    .line 387
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "b":Landroid/os/Bundle;
    :cond_5
    const-string/jumbo v0, "pin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Only the system can pin/unpin slices"

    const/16 v2, 0x3e8

    if-eqz v0, :cond_7

    .line 388
    nop

    .line 389
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 388
    invoke-direct {p0, v0}, Landroid/app/slice/SliceProvider;->validateIncomingUriOrNull(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/app/slice/SliceProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 390
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-ne v3, v2, :cond_6

    .line 393
    invoke-direct {p0, v0}, Landroid/app/slice/SliceProvider;->handlePinSlice(Landroid/net/Uri;)V

    .line 394
    .end local v0    # "uri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 391
    .restart local v0    # "uri":Landroid/net/Uri;
    :cond_6
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 394
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_7
    const-string/jumbo v0, "unpin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 395
    nop

    .line 396
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 395
    invoke-direct {p0, v0}, Landroid/app/slice/SliceProvider;->validateIncomingUriOrNull(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/app/slice/SliceProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 397
    .restart local v0    # "uri":Landroid/net/Uri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-ne v3, v2, :cond_8

    .line 400
    invoke-direct {p0, v0}, Landroid/app/slice/SliceProvider;->handleUnpinSlice(Landroid/net/Uri;)V

    .line 401
    .end local v0    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 398
    .restart local v0    # "uri":Landroid/net/Uri;
    :cond_8
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 401
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_9
    const-string v0, "get_descendants"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 402
    nop

    .line 403
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Landroid/app/slice/SliceProvider;->validateIncomingUriOrNull(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 402
    invoke-static {v0}, Landroid/app/slice/SliceProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 404
    .restart local v0    # "uri":Landroid/net/Uri;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 405
    .local v1, "b":Landroid/os/Bundle;
    new-instance v2, Ljava/util/ArrayList;

    .line 406
    invoke-direct {p0, v0}, Landroid/app/slice/SliceProvider;->handleGetDescendants(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 405
    const-string/jumbo v3, "slice_descendants"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 407
    return-object v1

    .line 408
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "b":Landroid/os/Bundle;
    :cond_a
    const-string v0, "get_permissions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 409
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne v0, v2, :cond_b

    .line 412
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 413
    .local v0, "b":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/slice/SliceProvider;->mAutoGrantPermissions:[Ljava/lang/String;

    const-string/jumbo v2, "result"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 414
    return-object v0

    .line 410
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the system can get permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_c
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o createPermissionSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/slice/Slice;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sliceUri"    # Landroid/net/Uri;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 475
    const-string/jumbo v0, "onCreatePermissionRequest"

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mCallback:Ljava/lang/String;

    .line 476
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 478
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/app/slice/SliceProvider;->onCreatePermissionRequest(Landroid/net/Uri;)Landroid/app/PendingIntent;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    .local v0, "action":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 481
    nop

    .line 482
    new-instance v1, Landroid/app/slice/Slice$Builder;

    invoke-direct {v1, p2}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    .line 483
    .local v1, "parent":Landroid/app/slice/Slice$Builder;
    new-instance v2, Landroid/app/slice/Slice$Builder;

    invoke-direct {v2, v1}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/app/slice/Slice$Builder;)V

    const v3, 0x1080520

    .line 484
    invoke-static {p1, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 486
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 484
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/app/slice/Slice$Builder;->addIcon(Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v2

    const-string/jumbo v3, "title"

    const-string/jumbo v4, "shortcut"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 487
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v2

    new-instance v3, Landroid/app/slice/Slice$Builder;

    invoke-direct {v3, v1}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/app/slice/Slice$Builder;)V

    .line 488
    invoke-virtual {v3}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v5}, Landroid/app/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;

    move-result-object v2

    .line 490
    .local v2, "childAction":Landroid/app/slice/Slice$Builder;
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 491
    .local v3, "tv":Landroid/util/TypedValue;
    new-instance v4, Landroid/view/ContextThemeWrapper;

    const v6, 0x103012b

    invoke-direct {v4, p1, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 492
    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v6, 0x1010435

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v3, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 493
    iget v4, v3, Landroid/util/TypedValue;->data:I

    .line 495
    .local v4, "deviceDefaultAccent":I
    new-instance v6, Landroid/app/slice/Slice$Builder;

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string/jumbo v8, "permission"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    const v7, 0x108032d

    .line 496
    invoke-static {p1, v7}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    .line 498
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 496
    invoke-virtual {v6, v7, v5, v8}, Landroid/app/slice/Slice$Builder;->addIcon(Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v6

    .line 499
    invoke-static {p1, p3}, Landroid/app/slice/SliceProvider;->getPermissionString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 500
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 499
    invoke-virtual {v6, v7, v5, v8}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v6

    .line 502
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 501
    const-string v8, "color"

    invoke-virtual {v6, v4, v8, v7}, Landroid/app/slice/Slice$Builder;->addInt(ILjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v6

    .line 503
    invoke-virtual {v2}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/app/slice/Slice$Builder;->addSubSlice(Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;

    move-result-object v6

    .line 504
    invoke-virtual {v6}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object v6

    .line 495
    invoke-virtual {v1, v6, v5}, Landroid/app/slice/Slice$Builder;->addSubSlice(Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;

    .line 505
    const-string/jumbo v5, "permission_request"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object v5

    return-object v5

    .line 480
    .end local v0    # "action":Landroid/app/PendingIntent;
    .end local v1    # "parent":Landroid/app/slice/Slice$Builder;
    .end local v2    # "childAction":Landroid/app/slice/Slice$Builder;
    .end local v3    # "tv":Landroid/util/TypedValue;
    .end local v4    # "deviceDefaultAccent":I
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 481
    throw v0
.end method

.method public final whitelist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 348
    const-string/jumbo v0, "vnd.android.slice"

    return-object v0
.end method

.method public final whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 342
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic blacklist lambda$new$0$android-app-slice-SliceProvider()V
    .locals 2

    .line 564
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Process;->sendSignal(II)V

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timed out while handling slice callback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/slice/SliceProvider;->mCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SliceProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    return-void
.end method

.method public greylist onBindSlice(Landroid/net/Uri;Ljava/util/List;)Landroid/app/slice/Slice;
    .locals 1
    .param p1, "sliceUri"    # Landroid/net/Uri;
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

    .line 221
    .local p2, "supportedSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/app/slice/SliceSpec;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onBindSlice(Landroid/net/Uri;Ljava/util/Set;)Landroid/app/slice/Slice;
    .locals 1
    .param p1, "sliceUri"    # Landroid/net/Uri;
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

    .line 212
    .local p2, "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/slice/SliceSpec;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Landroid/app/slice/SliceProvider;->onBindSlice(Landroid/net/Uri;Ljava/util/List;)Landroid/app/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onCreatePermissionRequest(Landroid/net/Uri;)Landroid/app/PendingIntent;
    .locals 2
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 302
    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/app/slice/SliceProvider;->createPermissionPendingIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onGetSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;
    .locals 1
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

    .line 267
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onMapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 284
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This provider has not implemented intent to uri mapping"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onSlicePinned(Landroid/net/Uri;)V
    .locals 0
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 243
    return-void
.end method

.method public whitelist onSliceUnpinned(Landroid/net/Uri;)V
    .locals 0
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 254
    return-void
.end method

.method public final whitelist query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "queryArgs"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 336
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 322
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 329
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 309
    const/4 v0, 0x0

    return v0
.end method
