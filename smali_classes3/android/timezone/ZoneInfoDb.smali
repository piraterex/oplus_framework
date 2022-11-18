.class public final Landroid/timezone/ZoneInfoDb;
.super Ljava/lang/Object;
.source "ZoneInfoDb.java"


# static fields
.field private static blacklist sInstance:Landroid/timezone/ZoneInfoDb;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mDelegate:Lcom/android/i18n/timezone/ZoneInfoDb;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/timezone/ZoneInfoDb;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/i18n/timezone/ZoneInfoDb;)V
    .locals 1
    .param p1, "delegate"    # Lcom/android/i18n/timezone/ZoneInfoDb;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/timezone/ZoneInfoDb;

    iput-object v0, p0, Landroid/timezone/ZoneInfoDb;->mDelegate:Lcom/android/i18n/timezone/ZoneInfoDb;

    .line 55
    return-void
.end method

.method public static blacklist getInstance()Landroid/timezone/ZoneInfoDb;
    .locals 3

    .line 42
    sget-object v0, Landroid/timezone/ZoneInfoDb;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Landroid/timezone/ZoneInfoDb;->sInstance:Landroid/timezone/ZoneInfoDb;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Landroid/timezone/ZoneInfoDb;

    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/timezone/ZoneInfoDb;-><init>(Lcom/android/i18n/timezone/ZoneInfoDb;)V

    sput-object v1, Landroid/timezone/ZoneInfoDb;->sInstance:Landroid/timezone/ZoneInfoDb;

    .line 46
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    sget-object v0, Landroid/timezone/ZoneInfoDb;->sInstance:Landroid/timezone/ZoneInfoDb;

    return-object v0

    .line 46
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist getVersion()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Landroid/timezone/ZoneInfoDb;->mDelegate:Lcom/android/i18n/timezone/ZoneInfoDb;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/ZoneInfoDb;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
