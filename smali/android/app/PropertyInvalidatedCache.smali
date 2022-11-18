.class public Landroid/app/PropertyInvalidatedCache;
.super Ljava/lang/Object;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/PropertyInvalidatedCache$AutoCorker;,
        Landroid/app/PropertyInvalidatedCache$NoPreloadHolder;,
        Landroid/app/PropertyInvalidatedCache$DefaultComputer;,
        Landroid/app/PropertyInvalidatedCache$QueryHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Query:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist MODULE_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final blacklist MODULE_SYSTEM:Ljava/lang/String; = "system_server"

.field public static final blacklist MODULE_TELEPHONY:Ljava/lang/String; = "telephony"

.field public static final blacklist MODULE_TEST:Ljava/lang/String; = "test"

.field static final blacklist NAME_CONTAINS:Ljava/lang/String; = "-name-has="

.field static final blacklist NAME_LIKE:Ljava/lang/String; = "-name-like="

.field private static final blacklist NONCE_BYPASS:I = 0x3

.field private static final blacklist NONCE_CORKED:I = 0x2

.field private static final blacklist NONCE_DISABLED:I = 0x1

.field private static final blacklist NONCE_UNSET:I = 0x0

.field static final blacklist PROPERTY_CONTAINS:Ljava/lang/String; = "-property-has="

.field static final blacklist PROPERTY_LIKE:Ljava/lang/String; = "-property-like="

.field private static final blacklist TAG:Ljava/lang/String; = "PropertyInvalidatedCache"

.field private static final blacklist VERIFY:Z = false

.field private static final blacklist sCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/PropertyInvalidatedCache;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sCorkLock:Ljava/lang/Object;

.field private static final blacklist sCorkedInvalidates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sCorks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sDisabledKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sEnabled:Z

.field private static final blacklist sInvalidates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sNonceName:[Ljava/lang/String;

.field private static volatile blacklist sTesting:Z

.field private static final blacklist sTestingPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TQuery;TResult;>;"
        }
    .end annotation
.end field

.field private final blacklist mCacheName:Ljava/lang/String;

.field private blacklist mClears:J

.field private blacklist mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
            "TQuery;TResult;>;"
        }
    .end annotation
.end field

.field private blacklist mDisabled:Z

.field private blacklist mHighWaterMark:J

.field private blacklist mHits:J

.field private blacklist mLastSeenNonce:J

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mMaxEntries:I

.field private blacklist mMissOverflow:J

.field private blacklist mMisses:J

.field private volatile blacklist mPropertyHandle:Landroid/os/SystemProperties$Handle;

.field private final blacklist mPropertyName:Ljava/lang/String;

.field private blacklist mSkips:[J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHighWaterMark(Landroid/app/PropertyInvalidatedCache;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxEntries(Landroid/app/PropertyInvalidatedCache;)I
    .locals 0

    iget p0, p0, Landroid/app/PropertyInvalidatedCache;->mMaxEntries:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMissOverflow(Landroid/app/PropertyInvalidatedCache;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHighWaterMark(Landroid/app/PropertyInvalidatedCache;J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMissOverflow(Landroid/app/PropertyInvalidatedCache;J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsCorkLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsCorkedInvalidates()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkedInvalidates:Ljava/util/HashMap;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    .line 372
    const-string/jumbo v0, "unset"

    const-string v1, "disabled"

    const-string v2, "corked"

    const-string v3, "bypass"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sNonceName:[Ljava/lang/String;

    .line 400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sInvalidates:Ljava/util/HashMap;

    .line 408
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkedInvalidates:Ljava/util/HashMap;

    .line 414
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    .line 416
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    .line 425
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sCorks:Ljava/util/HashMap;

    .line 433
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    .line 440
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sCaches:Ljava/util/WeakHashMap;

    .line 601
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/PropertyInvalidatedCache;->sTesting:Z

    .line 604
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sTestingPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "maxEntries"    # I
    .param p2, "propertyName"    # Ljava/lang/String;

    .line 514
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    invoke-direct {p0, p1, p2, p2}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 515
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "maxEntries"    # I
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "cacheName"    # Ljava/lang/String;

    .line 529
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    .line 383
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    .line 386
    const/4 v2, 0x4

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    iput-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    .line 389
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    .line 392
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    .line 395
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mClears:J

    .line 442
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    .line 487
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    .line 530
    iput-object p2, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    .line 531
    iput-object p3, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    .line 532
    iput p1, p0, Landroid/app/PropertyInvalidatedCache;->mMaxEntries:I

    .line 533
    new-instance v0, Landroid/app/PropertyInvalidatedCache$DefaultComputer;

    invoke-direct {v0, p0}, Landroid/app/PropertyInvalidatedCache$DefaultComputer;-><init>(Landroid/app/PropertyInvalidatedCache;)V

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    .line 534
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->createMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Ljava/util/LinkedHashMap;

    .line 535
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->registerCache()V

    .line 536
    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V
    .locals 3
    .param p1, "maxEntries"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "api"    # Ljava/lang/String;
    .param p4, "cacheName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
            "TQuery;TResult;>;)V"
        }
    .end annotation

    .line 552
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p5, "computer":Landroid/app/PropertyInvalidatedCache$QueryHandler;, "Landroid/app/PropertyInvalidatedCache$QueryHandler<TQuery;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    .line 383
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    .line 386
    const/4 v2, 0x4

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    iput-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    .line 389
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    .line 392
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    .line 395
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mClears:J

    .line 442
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    .line 487
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    .line 553
    invoke-static {p2, p3}, Landroid/app/PropertyInvalidatedCache;->createPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    .line 554
    iput-object p4, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    .line 555
    iput p1, p0, Landroid/app/PropertyInvalidatedCache;->mMaxEntries:I

    .line 556
    iput-object p5, p0, Landroid/app/PropertyInvalidatedCache;->mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    .line 557
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->createMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Ljava/util/LinkedHashMap;

    .line 558
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->registerCache()V

    .line 559
    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static blacklist anyDetailed([Ljava/lang/String;)Z
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    .line 1394
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 1395
    .local v3, "a":Ljava/lang/String;
    const-string v4, "-name-has="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "-name-like="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1396
    const-string v4, "-property-has="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "-property-like="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 1394
    .end local v3    # "a":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1397
    .restart local v3    # "a":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 1400
    .end local v3    # "a":Ljava/lang/String;
    :cond_2
    return v1
.end method

.method private static blacklist chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "arg"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "reference"    # Ljava/lang/String;
    .param p3, "contains"    # Z

    .line 1407
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1408
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1409
    .local v0, "value":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 1410
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 1412
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1415
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist corkInvalidations(Ljava/lang/String;)V
    .locals 8
    .param p0, "name"    # Ljava/lang/String;

    .line 1088
    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    if-nez v0, :cond_0

    .line 1093
    return-void

    .line 1096
    :cond_0
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1097
    :try_start_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sCorks:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1111
    .local v1, "numberCorks":I
    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    if-nez v1, :cond_2

    .line 1112
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->getNonce(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1113
    .local v6, "nonce":J
    cmp-long v4, v6, v4

    if-eqz v4, :cond_1

    cmp-long v2, v6, v2

    if-eqz v2, :cond_1

    .line 1118
    const-wide/16 v2, 0x2

    :try_start_1
    invoke-static {p0, v2, v3}, Landroid/app/PropertyInvalidatedCache;->setNonce(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1123
    goto :goto_0

    .line 1121
    :catch_0
    move-exception v2

    .line 1122
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v3, "PropertyInvalidatedCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set property fail, name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .end local v6    # "nonce":J
    :cond_1
    :goto_0
    goto :goto_1

    .line 1127
    :cond_2
    sget-object v6, Landroid/app/PropertyInvalidatedCache;->sCorkedInvalidates:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, p0, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1128
    .local v4, "count":J
    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    .end local v4    # "count":J
    :goto_1
    sget-object v2, Landroid/app/PropertyInvalidatedCache;->sCorks:Ljava/util/HashMap;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    nop

    .end local v1    # "numberCorks":I
    monitor-exit v0

    .line 1135
    return-void

    .line 1134
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private blacklist createMap()Ljava/util/LinkedHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "TQuery;TResult;>;"
        }
    .end annotation

    .line 563
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    new-instance v0, Landroid/app/PropertyInvalidatedCache$1;

    const/4 v1, 0x2

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/app/PropertyInvalidatedCache$1;-><init>(Landroid/app/PropertyInvalidatedCache;IFZ)V

    return-object v0
.end method

.method public static blacklist createPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "apiName"    # Ljava/lang/String;

    .line 329
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 330
    .local v0, "api":[C
    const/4 v1, 0x0

    .line 331
    .local v1, "upper":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 332
    aget-char v3, v0, v2

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 333
    add-int/lit8 v1, v1, 0x1

    .line 331
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 336
    .end local v2    # "i":I
    :cond_1
    array-length v2, v0

    add-int/2addr v2, v1

    new-array v2, v2, [C

    .line 337
    .local v2, "suffix":[C
    const/4 v3, 0x0

    .line 338
    .local v3, "j":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_5

    .line 339
    aget-char v5, v0, v4

    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 340
    aget-char v5, v0, v4

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 341
    if-lez v4, :cond_2

    .line 342
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "j":I
    .local v5, "j":I
    const/16 v6, 0x5f

    aput-char v6, v2, v3

    move v3, v5

    .line 344
    .end local v5    # "j":I
    .restart local v3    # "j":I
    :cond_2
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "j":I
    .restart local v5    # "j":I
    aget-char v6, v0, v4

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    aput-char v6, v2, v3

    move v3, v5

    goto :goto_2

    .line 346
    .end local v5    # "j":I
    .restart local v3    # "j":I
    :cond_3
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "j":I
    .restart local v5    # "j":I
    aget-char v6, v0, v4

    aput-char v6, v2, v3

    move v3, v5

    .line 338
    .end local v5    # "j":I
    .restart local v3    # "j":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 349
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "invalid api name"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 353
    .end local v4    # "i":I
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cache_key."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static blacklist disableForCurrentProcess(Ljava/lang/String;)V
    .locals 0
    .param p0, "cacheName"    # Ljava/lang/String;

    .line 826
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->disableLocal(Ljava/lang/String;)V

    .line 827
    return-void
.end method

.method public static blacklist disableForTestMode()V
    .locals 2

    .line 1346
    const-string v0, "PropertyInvalidatedCache"

    const-string v1, "disabling all caches in the process"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    .line 1348
    return-void
.end method

.method private static final blacklist disableLocal(Ljava/lang/String;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .line 777
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 778
    :try_start_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 779
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PropertyInvalidatedCache;

    .line 780
    .local v2, "cache":Landroid/app/PropertyInvalidatedCache;
    iget-object v3, v2, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 781
    invoke-virtual {v2}, Landroid/app/PropertyInvalidatedCache;->disableInstance()V

    .line 783
    .end local v2    # "cache":Landroid/app/PropertyInvalidatedCache;
    :cond_0
    goto :goto_0

    .line 784
    :cond_1
    monitor-exit v0

    .line 785
    return-void

    .line 784
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist disableSystemWide(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 973
    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    if-nez v0, :cond_0

    .line 974
    return-void

    .line 976
    :cond_0
    const-wide/16 v0, 0x1

    invoke-static {p0, v0, v1}, Landroid/app/PropertyInvalidatedCache;->setNonce(Ljava/lang/String;J)V

    .line 977
    return-void
.end method

.method public static blacklist dumpCacheInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .locals 5
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "args"    # [Ljava/lang/String;

    .line 1547
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1548
    .local v0, "barray":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1549
    .local v1, "bout":Ljava/io/PrintWriter;
    invoke-static {v1, p1}, Landroid/app/PropertyInvalidatedCache;->dumpCacheInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1550
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 1554
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1555
    .local v2, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 1556
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1557
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1560
    .end local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 1558
    :catch_0
    move-exception v2

    .line 1559
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "PropertyInvalidatedCache"

    const-string v4, "Failed to dump PropertyInvalidatedCache instances"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private static blacklist dumpCacheInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "args"    # [Ljava/lang/String;

    .line 1512
    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    if-nez v0, :cond_0

    .line 1513
    const-string v0, "  Caching is disabled in this process."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1514
    return-void

    .line 1519
    :cond_0
    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache;->anyDetailed([Ljava/lang/String;)Z

    move-result v0

    .line 1522
    .local v0, "detail":Z
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1523
    :try_start_0
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->getActiveCaches()Ljava/util/ArrayList;

    move-result-object v2

    .line 1524
    .local v2, "activeCaches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PropertyInvalidatedCache;>;"
    if-nez v0, :cond_1

    .line 1525
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->dumpCorkInfo(Ljava/io/PrintWriter;)V

    .line 1527
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1529
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1530
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PropertyInvalidatedCache;

    .line 1531
    .local v3, "currentCache":Landroid/app/PropertyInvalidatedCache;
    invoke-direct {v3, p0, v0, p1}, Landroid/app/PropertyInvalidatedCache;->dumpContents(Ljava/io/PrintWriter;Z[Ljava/lang/String;)V

    .line 1529
    .end local v3    # "currentCache":Landroid/app/PropertyInvalidatedCache;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1533
    .end local v1    # "i":I
    :cond_2
    return-void

    .line 1527
    .end local v2    # "activeCaches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PropertyInvalidatedCache;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private blacklist dumpContents(Ljava/io/PrintWriter;Z[Ljava/lang/String;)V
    .locals 21
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "detailed"    # Z
    .param p3, "args"    # [Ljava/lang/String;

    .line 1437
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz p2, :cond_0

    move-object/from16 v3, p3

    invoke-direct {v1, v3}, Landroid/app/PropertyInvalidatedCache;->showDetailed([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1438
    return-void

    .line 1437
    :cond_0
    move-object/from16 v3, p3

    .line 1443
    :cond_1
    sget-object v4, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1444
    :try_start_0
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sInvalidates:Ljava/util/HashMap;

    iget-object v5, v1, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1445
    .local v8, "invalidateCount":J
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkedInvalidates:Ljava/util/HashMap;

    iget-object v5, v1, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1446
    .local v5, "corkedInvalidates":J
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1448
    iget-object v7, v1, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1449
    :try_start_1
    const-string v0, "  Cache Name: %s"

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Landroid/app/PropertyInvalidatedCache;->cacheName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v0, v10}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1450
    const-string v0, "    Property: %s"

    new-array v10, v4, [Ljava/lang/Object;

    iget-object v11, v1, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    aput-object v11, v10, v12

    invoke-static {v0, v10}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1451
    iget-object v0, v1, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    const/4 v10, 0x2

    aget-wide v13, v0, v10

    aget-wide v15, v0, v12

    add-long/2addr v13, v15

    aget-wide v15, v0, v4

    add-long/2addr v13, v15

    const/4 v11, 0x3

    aget-wide v15, v0, v11

    add-long/2addr v13, v15

    .line 1453
    .local v13, "skips":J
    const-string v0, "    Hits: %d, Misses: %d, Skips: %d, Clears: %d"

    const/4 v15, 0x4

    new-array v11, v15, [Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide/from16 v17, v5

    .end local v5    # "corkedInvalidates":J
    .local v17, "corkedInvalidates":J
    :try_start_2
    iget-wide v4, v1, Landroid/app/PropertyInvalidatedCache;->mHits:J

    .line 1455
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v11, v12

    iget-wide v4, v1, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v11, v5

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v11, v10

    iget-wide v4, v1, Landroid/app/PropertyInvalidatedCache;->mClears:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v11, v5

    .line 1453
    invoke-static {v0, v11}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1456
    const-string v0, "    Skip-corked: %d, Skip-unset: %d, Skip-bypass: %d, Skip-other: %d"

    new-array v4, v15, [Ljava/lang/Object;

    iget-object v5, v1, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    aget-wide v19, v5, v10

    .line 1458
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v12

    iget-object v5, v1, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    aget-wide v19, v5, v12

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-object v5, v1, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    const/4 v11, 0x3

    aget-wide v19, v5, v11

    .line 1459
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v10

    iget-object v5, v1, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    const/4 v6, 0x1

    aget-wide v19, v5, v6

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v11, 0x3

    aput-object v5, v4, v11

    .line 1456
    invoke-static {v0, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1460
    const-string v0, "    Nonce: 0x%016x, Invalidates: %d, CorkedInvalidates: %d"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v11, v7

    :try_start_3
    iget-wide v6, v1, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    .line 1462
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v4, 0x1

    aput-object v6, v5, v4

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v10

    .line 1460
    invoke-static {v0, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1463
    const-string v0, "    Current Size: %d, Max Size: %d, HW Mark: %d, Overflows: %d"

    new-array v4, v15, [Ljava/lang/Object;

    iget-object v5, v1, Landroid/app/PropertyInvalidatedCache;->mCache:Ljava/util/LinkedHashMap;

    .line 1465
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v12

    iget v5, v1, Landroid/app/PropertyInvalidatedCache;->mMaxEntries:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-wide v6, v1, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v10

    iget-wide v6, v1, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v4, v7

    .line 1463
    invoke-static {v0, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1466
    const-string v0, "    Enabled: %s"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget-boolean v4, v1, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    if-eqz v4, :cond_2

    const-string v4, "false"

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "true"

    :goto_0
    aput-object v4, v5, v12

    invoke-static {v0, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1467
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1471
    if-nez p2, :cond_3

    .line 1472
    monitor-exit v11

    return-void

    .line 1474
    :cond_3
    iget-object v0, v1, Landroid/app/PropertyInvalidatedCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1475
    .local v0, "cacheEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TQuery;TResult;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 1476
    monitor-exit v11

    return-void

    .line 1479
    :cond_4
    const-string v4, "    Contents:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1480
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1481
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TQuery;TResult;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1482
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 1484
    .local v15, "value":Ljava/lang/String;
    const-string v6, "      Key: %s\n      Value: %s\n"

    new-array v12, v10, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v7, v12, v19

    const/16 v16, 0x1

    aput-object v15, v12, v16

    invoke-static {v6, v12}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1485
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TQuery;TResult;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    move/from16 v12, v19

    goto :goto_1

    .line 1486
    .end local v0    # "cacheEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TQuery;TResult;>;>;"
    .end local v13    # "skips":J
    :cond_5
    monitor-exit v11

    .line 1487
    return-void

    .line 1486
    :catchall_0
    move-exception v0

    move-object v11, v7

    goto :goto_2

    .end local v17    # "corkedInvalidates":J
    .local v5, "corkedInvalidates":J
    :catchall_1
    move-exception v0

    move-wide/from16 v17, v5

    move-object v11, v7

    .end local v5    # "corkedInvalidates":J
    .restart local v17    # "corkedInvalidates":J
    :goto_2
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 1446
    .end local v8    # "invalidateCount":J
    .end local v17    # "corkedInvalidates":J
    :catchall_3
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0
.end method

.method private static blacklist dumpCorkInfo(Ljava/io/PrintWriter;)V
    .locals 6
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 1494
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->getActiveCorks()Ljava/util/ArrayList;

    move-result-object v0

    .line 1495
    .local v0, "activeCorks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1496
    const-string v1, "  Corking Status:"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1497
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1498
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1499
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1500
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 1499
    const-string v4, "    Property Name: %s Count: %d"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1497
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1503
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private static blacklist getActiveCaches()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/PropertyInvalidatedCache;",
            ">;"
        }
    .end annotation

    .line 1364
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1365
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Landroid/app/PropertyInvalidatedCache;->sCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 1366
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist getActiveCorks()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1373
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1374
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Landroid/app/PropertyInvalidatedCache;->sCorks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 1375
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist getCurrentNonce()J
    .locals 4

    .line 642
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sTesting:Z

    if-eqz v0, :cond_1

    .line 643
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sTestingPropertyMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 644
    :try_start_0
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 645
    .local v1, "n":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 646
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    .line 648
    .end local v1    # "n":Ljava/lang/Long;
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 651
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyHandle:Landroid/os/SystemProperties$Handle;

    .line 652
    .local v0, "handle":Landroid/os/SystemProperties$Handle;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_3

    .line 653
    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/SystemProperties;->find(Ljava/lang/String;)Landroid/os/SystemProperties$Handle;

    move-result-object v0

    .line 654
    if-nez v0, :cond_2

    .line 655
    return-wide v1

    .line 657
    :cond_2
    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyHandle:Landroid/os/SystemProperties$Handle;

    .line 659
    :cond_3
    invoke-virtual {v0, v1, v2}, Landroid/os/SystemProperties$Handle;->getLong(J)J

    move-result-wide v1

    return-wide v1
.end method

.method private static blacklist getNonce(Ljava/lang/String;)J
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .line 678
    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sTesting:Z

    if-eqz v0, :cond_1

    .line 679
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sTestingPropertyMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 680
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 681
    .local v1, "n":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 682
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    .line 684
    .end local v1    # "n":Ljava/lang/Long;
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 686
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist invalidateCache(Ljava/lang/String;)V
    .locals 7
    .param p0, "name"    # Ljava/lang/String;

    .line 1009
    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    if-nez v0, :cond_0

    .line 1014
    return-void

    .line 1022
    :cond_0
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1023
    :try_start_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sCorks:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1024
    .local v1, "numberCorks":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_1

    .line 1028
    sget-object v2, Landroid/app/PropertyInvalidatedCache;->sCorkedInvalidates:Ljava/util/HashMap;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1029
    .local v3, "count":J
    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    monitor-exit v0

    return-void

    .line 1032
    .end local v3    # "count":J
    :cond_1
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->invalidateCacheLocked(Ljava/lang/String;)V

    .line 1033
    .end local v1    # "numberCorks":Ljava/lang/Integer;
    monitor-exit v0

    .line 1034
    return-void

    .line 1033
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist invalidateCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "api"    # Ljava/lang/String;

    .line 995
    invoke-static {p0, p1}, Landroid/app/PropertyInvalidatedCache;->createPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 996
    return-void
.end method

.method private static blacklist invalidateCacheLocked(Ljava/lang/String;)V
    .locals 9
    .param p0, "name"    # Ljava/lang/String;

    .line 1040
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->getNonce(Ljava/lang/String;)J

    move-result-wide v0

    .line 1041
    .local v0, "nonce":J
    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1045
    return-void

    .line 1050
    :cond_0
    :goto_0
    invoke-static {}, Landroid/app/PropertyInvalidatedCache$NoPreloadHolder;->next()J

    move-result-wide v4

    .line 1051
    .local v4, "newValue":J
    invoke-static {v4, v5}, Landroid/app/PropertyInvalidatedCache;->isReservedNonce(J)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1063
    :try_start_0
    invoke-static {p0, v4, v5}, Landroid/app/PropertyInvalidatedCache;->setNonce(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    goto :goto_1

    .line 1066
    :catch_0
    move-exception v6

    .line 1067
    .local v6, "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "set property fail, name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PropertyInvalidatedCache"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :goto_1
    sget-object v6, Landroid/app/PropertyInvalidatedCache;->sInvalidates:Ljava/util/HashMap;

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, p0, v7}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1071
    .local v7, "invalidateCount":J
    add-long/2addr v2, v7

    move-wide v7, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    return-void

    .line 1051
    .end local v7    # "invalidateCount":J
    :cond_1
    goto :goto_0
.end method

.method private static blacklist isReservedNonce(J)Z
    .locals 2
    .param p0, "n"    # J

    .line 366
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x3

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist maybeCheckConsistency(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;TResult;)TResult;"
        }
    .end annotation

    .line 1305
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p1, "query":Ljava/lang/Object;, "TQuery;"
    .local p2, "proposedResult":Ljava/lang/Object;, "TResult;"
    return-object p2
.end method

.method public static blacklist onTrimMemory()V
    .locals 2

    .line 1568
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->getActiveCaches()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PropertyInvalidatedCache;

    .line 1569
    .local v1, "pic":Landroid/app/PropertyInvalidatedCache;
    invoke-virtual {v1}, Landroid/app/PropertyInvalidatedCache;->clear()V

    .line 1570
    .end local v1    # "pic":Landroid/app/PropertyInvalidatedCache;
    goto :goto_0

    .line 1571
    :cond_0
    return-void
.end method

.method private blacklist registerCache()V
    .locals 3

    .line 586
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 587
    :try_start_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sCaches:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->disableInstance()V

    .line 591
    :cond_0
    monitor-exit v0

    .line 592
    return-void

    .line 591
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist setNonce(Ljava/lang/String;J)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "val"    # J

    .line 664
    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sTesting:Z

    if-eqz v0, :cond_1

    .line 665
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sTestingPropertyMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 666
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 667
    .local v1, "n":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 668
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    monitor-exit v0

    return-void

    .line 671
    .end local v1    # "n":Ljava/lang/Long;
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 673
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    return-void
.end method

.method public static blacklist setTestMode(Z)V
    .locals 2
    .param p0, "mode"    # Z

    .line 613
    sput-boolean p0, Landroid/app/PropertyInvalidatedCache;->sTesting:Z

    .line 614
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sTestingPropertyMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 615
    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 616
    monitor-exit v0

    .line 617
    return-void

    .line 616
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist showDetailed([Ljava/lang/String;)Z
    .locals 7
    .param p1, "args"    # [Ljava/lang/String;

    .line 1423
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 1424
    .local v3, "a":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->cacheName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-name-has="

    const/4 v6, 0x1

    invoke-static {v3, v5, v4, v6}, Landroid/app/PropertyInvalidatedCache;->chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1425
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->cacheName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-name-like="

    invoke-static {v3, v5, v4, v1}, Landroid/app/PropertyInvalidatedCache;->chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    .line 1426
    const-string v5, "-property-has="

    invoke-static {v3, v5, v4, v6}, Landroid/app/PropertyInvalidatedCache;->chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    .line 1427
    const-string v5, "-property-like="

    invoke-static {v3, v5, v4, v1}, Landroid/app/PropertyInvalidatedCache;->chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 1423
    .end local v3    # "a":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1428
    .restart local v3    # "a":Ljava/lang/String;
    :cond_1
    :goto_1
    return v6

    .line 1431
    .end local v3    # "a":Ljava/lang/String;
    :cond_2
    return v1
.end method

.method private static blacklist testPropertyName(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 624
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sTestingPropertyMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 625
    const-wide/16 v1, 0x0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    monitor-exit v0

    .line 627
    return-void

    .line 626
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist uncorkInvalidations(Ljava/lang/String;)V
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 1146
    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    if-nez v0, :cond_0

    .line 1151
    return-void

    .line 1154
    :cond_0
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1155
    :try_start_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sCorks:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1161
    .local v2, "numberCorks":I
    const/4 v3, 0x1

    if-lt v2, v3, :cond_2

    .line 1164
    if-ne v2, v3, :cond_1

    .line 1165
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->invalidateCacheLocked(Ljava/lang/String;)V

    goto :goto_0

    .line 1171
    :cond_1
    add-int/lit8 v3, v2, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    .end local v2    # "numberCorks":I
    :goto_0
    monitor-exit v0

    .line 1174
    return-void

    .line 1162
    .restart local v2    # "numberCorks":I
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cork underflow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p0    # "name":Ljava/lang/String;
    throw v1

    .line 1173
    .end local v2    # "numberCorks":I
    .restart local p0    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist bypass(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)Z"
        }
    .end annotation

    .line 725
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p1, "query":Ljava/lang/Object;, "TQuery;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache$QueryHandler;->shouldBypassCache(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final blacklist cacheName()Ljava/lang/String;
    .locals 1

    .line 1314
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    return-object v0
.end method

.method public final blacklist clear()V
    .locals 5

    .line 696
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 700
    :try_start_0
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 701
    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache;->mClears:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/app/PropertyInvalidatedCache;->mClears:J

    .line 702
    monitor-exit v0

    .line 703
    return-void

    .line 702
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist disableForCurrentProcess()V
    .locals 1

    .line 820
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal(Ljava/lang/String;)V

    .line 821
    return-void
.end method

.method public final blacklist disableInstance()V
    .locals 2

    .line 765
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 766
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    .line 767
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->clear()V

    .line 768
    monitor-exit v0

    .line 769
    return-void

    .line 768
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist disableLocal()V
    .locals 0

    .line 809
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->disableForCurrentProcess()V

    .line 810
    return-void
.end method

.method public final blacklist disableSystemWide()V
    .locals 1

    .line 963
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->disableSystemWide(Ljava/lang/String;)V

    .line 964
    return-void
.end method

.method public final blacklist forgetDisableLocal()V
    .locals 3

    .line 796
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 797
    :try_start_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 798
    monitor-exit v0

    .line 799
    return-void

    .line 798
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getDisabledState()Z
    .locals 1

    .line 1357
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->isDisabled()Z

    move-result v0

    return v0
.end method

.method public blacklist invalidateCache()V
    .locals 1

    .line 986
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 987
    return-void
.end method

.method public final blacklist isDisabled()Z
    .locals 1

    .line 835
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final blacklist propertyName()Ljava/lang/String;
    .locals 1

    .line 1322
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist query(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)TResult;"
        }
    .end annotation

    .line 845
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p1, "query":Ljava/lang/Object;, "TQuery;"
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->isDisabled()Z

    move-result v0

    const-wide/16 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->getCurrentNonce()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 846
    .local v3, "currentNonce":J
    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/PropertyInvalidatedCache;->bypass(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 847
    const-wide/16 v3, 0x3

    .line 850
    :cond_1
    :goto_1
    invoke-static {v3, v4}, Landroid/app/PropertyInvalidatedCache;->isReservedNonce(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 851
    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    if-nez v0, :cond_2

    .line 854
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 855
    :try_start_0
    iget-object v5, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    long-to-int v6, v3

    aget-wide v7, v5, v6

    add-long/2addr v7, v1

    aput-wide v7, v5, v6

    .line 856
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 866
    :cond_2
    :goto_2
    invoke-virtual {p0, p1}, Landroid/app/PropertyInvalidatedCache;->recompute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 869
    :cond_3
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 870
    :try_start_1
    iget-wide v5, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_4

    .line 871
    iget-object v5, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 873
    .local v5, "cachedResult":Ljava/lang/Object;, "TResult;"
    if-eqz v5, :cond_5

    iget-wide v6, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    add-long/2addr v6, v1

    iput-wide v6, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    goto :goto_3

    .line 881
    .end local v5    # "cachedResult":Ljava/lang/Object;, "TResult;"
    :cond_4
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->clear()V

    .line 882
    iput-wide v3, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    .line 883
    const/4 v5, 0x0

    .line 885
    .restart local v5    # "cachedResult":Ljava/lang/Object;, "TResult;"
    :cond_5
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 892
    if-eqz v5, :cond_a

    .line 893
    invoke-virtual {p0, v5, p1}, Landroid/app/PropertyInvalidatedCache;->refresh(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 894
    .local v0, "refreshedResult":Ljava/lang/Object;, "TResult;"
    if-eq v0, v5, :cond_9

    .line 898
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->getCurrentNonce()J

    move-result-wide v6

    .line 899
    .local v6, "afterRefreshNonce":J
    cmp-long v8, v3, v6

    if-eqz v8, :cond_6

    .line 900
    move-wide v3, v6

    .line 907
    goto :goto_1

    .line 909
    :cond_6
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 910
    :try_start_2
    iget-wide v8, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    cmp-long v2, v3, v8

    if-eqz v2, :cond_7

    goto :goto_4

    .line 914
    :cond_7
    if-nez v0, :cond_8

    .line 915
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 917
    :cond_8
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    :goto_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 920
    invoke-direct {p0, p1, v0}, Landroid/app/PropertyInvalidatedCache;->maybeCheckConsistency(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 919
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 925
    .end local v6    # "afterRefreshNonce":J
    :cond_9
    invoke-direct {p0, p1, v5}, Landroid/app/PropertyInvalidatedCache;->maybeCheckConsistency(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 931
    .end local v0    # "refreshedResult":Ljava/lang/Object;, "TResult;"
    :cond_a
    invoke-virtual {p0, p1}, Landroid/app/PropertyInvalidatedCache;->recompute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 932
    .local v6, "result":Ljava/lang/Object;, "TResult;"
    iget-object v7, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 935
    :try_start_4
    iget-wide v8, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    cmp-long v0, v8, v3

    if-nez v0, :cond_b

    if-eqz v6, :cond_b

    .line 936
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    :cond_b
    iget-wide v8, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    add-long/2addr v8, v1

    iput-wide v8, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    .line 939
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 940
    invoke-direct {p0, p1, v6}, Landroid/app/PropertyInvalidatedCache;->maybeCheckConsistency(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 939
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 885
    .end local v5    # "cachedResult":Ljava/lang/Object;, "TResult;"
    .end local v6    # "result":Ljava/lang/Object;, "TResult;"
    :catchall_3
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1
.end method

.method protected blacklist queryToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1333
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p1, "query":Ljava/lang/Object;, "TQuery;"
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)TResult;"
        }
    .end annotation

    .line 714
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p1, "query":Ljava/lang/Object;, "TQuery;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache$QueryHandler;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist refresh(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;TQuery;)TResult;"
        }
    .end annotation

    .line 755
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p1, "oldResult":Ljava/lang/Object;, "TResult;"
    .local p2, "query":Ljava/lang/Object;, "TQuery;"
    return-object p1
.end method

.method public blacklist resultEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;TResult;)Z"
        }
    .end annotation

    .line 735
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p1, "cachedResult":Ljava/lang/Object;, "TResult;"
    .local p2, "fetchedResult":Ljava/lang/Object;, "TResult;"
    if-eqz p2, :cond_0

    .line 736
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 738
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist testPropertyName()V
    .locals 1

    .line 636
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->testPropertyName(Ljava/lang/String;)V

    .line 637
    return-void
.end method
