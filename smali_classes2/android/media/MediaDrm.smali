.class public final Landroid/media/MediaDrm;
.super Ljava/lang/Object;
.source "MediaDrm.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaDrm$LogMessage;,
        Landroid/media/MediaDrm$PlaybackComponent;,
        Landroid/media/MediaDrm$MetricsConstants;,
        Landroid/media/MediaDrm$Certificate;,
        Landroid/media/MediaDrm$CertificateRequest;,
        Landroid/media/MediaDrm$CryptoSession;,
        Landroid/media/MediaDrm$ArrayProperty;,
        Landroid/media/MediaDrm$StringProperty;,
        Landroid/media/MediaDrm$SecurityLevel;,
        Landroid/media/MediaDrm$HdcpLevel;,
        Landroid/media/MediaDrm$OfflineLicenseState;,
        Landroid/media/MediaDrm$ProvisionRequest;,
        Landroid/media/MediaDrm$KeyRequest;,
        Landroid/media/MediaDrm$KeyType;,
        Landroid/media/MediaDrm$ListenerWithExecutor;,
        Landroid/media/MediaDrm$ListenerArgs;,
        Landroid/media/MediaDrm$DrmEvent;,
        Landroid/media/MediaDrm$OnEventListener;,
        Landroid/media/MediaDrm$KeyStatus;,
        Landroid/media/MediaDrm$OnSessionLostStateListener;,
        Landroid/media/MediaDrm$OnKeyStatusChangeListener;,
        Landroid/media/MediaDrm$OnExpirationUpdateListener;,
        Landroid/media/MediaDrm$SessionException;,
        Landroid/media/MediaDrm$MediaDrmStateException;,
        Landroid/media/MediaDrm$MediaDrmErrorCode;,
        Landroid/media/MediaDrm$ErrorCodes;,
        Landroid/media/MediaDrm$CertificateType;
    }
.end annotation


# static fields
.field public static final greylist-max-o CERTIFICATE_TYPE_NONE:I = 0x0

.field public static final greylist-max-o CERTIFICATE_TYPE_X509:I = 0x1

.field private static final greylist-max-o DRM_EVENT:I = 0xc8

.field public static final whitelist EVENT_KEY_EXPIRED:I = 0x3

.field public static final whitelist EVENT_KEY_REQUIRED:I = 0x2

.field public static final whitelist EVENT_PROVISION_REQUIRED:I = 0x1

.field public static final whitelist EVENT_SESSION_RECLAIMED:I = 0x5

.field public static final whitelist EVENT_VENDOR_DEFINED:I = 0x4

.field private static final greylist-max-o EXPIRATION_UPDATE:I = 0xc9

.field public static final whitelist HDCP_LEVEL_UNKNOWN:I = 0x0

.field public static final whitelist HDCP_NONE:I = 0x1

.field public static final whitelist HDCP_NO_DIGITAL_OUTPUT:I = 0x7fffffff

.field public static final whitelist HDCP_V1:I = 0x2

.field public static final whitelist HDCP_V2:I = 0x3

.field public static final whitelist HDCP_V2_1:I = 0x4

.field public static final whitelist HDCP_V2_2:I = 0x5

.field public static final whitelist HDCP_V2_3:I = 0x6

.field private static final greylist-max-o KEY_STATUS_CHANGE:I = 0xca

.field public static final whitelist KEY_TYPE_OFFLINE:I = 0x2

.field public static final whitelist KEY_TYPE_RELEASE:I = 0x3

.field public static final whitelist KEY_TYPE_STREAMING:I = 0x1

.field public static final whitelist OFFLINE_LICENSE_STATE_RELEASED:I = 0x2

.field public static final whitelist OFFLINE_LICENSE_STATE_UNKNOWN:I = 0x0

.field public static final whitelist OFFLINE_LICENSE_STATE_USABLE:I = 0x1

.field private static final greylist-max-o PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_DRM_CERTIFICATES"

.field public static final whitelist PROPERTY_ALGORITHMS:Ljava/lang/String; = "algorithms"

.field public static final whitelist PROPERTY_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final whitelist PROPERTY_DEVICE_UNIQUE_ID:Ljava/lang/String; = "deviceUniqueId"

.field public static final whitelist PROPERTY_VENDOR:Ljava/lang/String; = "vendor"

.field public static final whitelist PROPERTY_VERSION:Ljava/lang/String; = "version"

.field public static final whitelist SECURITY_LEVEL_HW_SECURE_ALL:I = 0x5

.field public static final whitelist SECURITY_LEVEL_HW_SECURE_CRYPTO:I = 0x3

.field public static final whitelist SECURITY_LEVEL_HW_SECURE_DECODE:I = 0x4

.field public static final greylist-max-o SECURITY_LEVEL_MAX:I = 0x6

.field public static final whitelist SECURITY_LEVEL_SW_SECURE_CRYPTO:I = 0x1

.field public static final whitelist SECURITY_LEVEL_SW_SECURE_DECODE:I = 0x2

.field public static final whitelist SECURITY_LEVEL_UNKNOWN:I = 0x0

.field private static final blacklist SESSION_LOST_STATE:I = 0xcb

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaDrm"


# instance fields
.field private final blacklist mAppPackageName:Ljava/lang/String;

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/media/MediaDrm$ListenerWithExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mNativeContext:J

.field private final blacklist mPlaybackComponentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "Landroid/media/MediaDrm$PlaybackComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$00nPjqOz4FIHL-VE_cY_TsCAi8A(Landroid/media/MediaDrm;Landroid/media/MediaDrm$OnExpirationUpdateListener;)Ljava/util/function/Consumer;
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaDrm;->createOnExpirationUpdateListener(Landroid/media/MediaDrm$OnExpirationUpdateListener;)Ljava/util/function/Consumer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$6kH9US9tXifhPviAfmxnnSizUU0(Landroid/media/MediaDrm;Landroid/media/MediaDrm$OnEventListener;)Ljava/util/function/Consumer;
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaDrm;->createOnEventListener(Landroid/media/MediaDrm$OnEventListener;)Ljava/util/function/Consumer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Z8hGj0MsdJSWOfSl0TbwyJxQPWo(Landroid/media/MediaDrm;Landroid/media/MediaDrm$OnSessionLostStateListener;)Ljava/util/function/Consumer;
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaDrm;->createOnSessionLostStateListener(Landroid/media/MediaDrm$OnSessionLostStateListener;)Ljava/util/function/Consumer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$rrOlvyyumJZCeHWfSndCofD16OQ(Landroid/media/MediaDrm;Landroid/media/MediaDrm$OnKeyStatusChangeListener;)Ljava/util/function/Consumer;
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaDrm;->createOnKeyStatusChangeListener(Landroid/media/MediaDrm$OnKeyStatusChangeListener;)Ljava/util/function/Consumer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetPlaybackId(Landroid/media/MediaDrm;[BLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/MediaDrm;->setPlaybackId([BLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smdecryptNative(Landroid/media/MediaDrm;[B[B[B[B)[B
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/media/MediaDrm;->decryptNative(Landroid/media/MediaDrm;[B[B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smencryptNative(Landroid/media/MediaDrm;[B[B[B[B)[B
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/media/MediaDrm;->encryptNative(Landroid/media/MediaDrm;[B[B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsetCipherAlgorithmNative(Landroid/media/MediaDrm;[BLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/media/MediaDrm;->setCipherAlgorithmNative(Landroid/media/MediaDrm;[BLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smsetMacAlgorithmNative(Landroid/media/MediaDrm;[BLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/media/MediaDrm;->setMacAlgorithmNative(Landroid/media/MediaDrm;[BLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smsignNative(Landroid/media/MediaDrm;[B[B[B)[B
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/media/MediaDrm;->signNative(Landroid/media/MediaDrm;[B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smverifyNative(Landroid/media/MediaDrm;[B[B[B[B)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/media/MediaDrm;->verifyNative(Landroid/media/MediaDrm;[B[B[B[B)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 2603
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 2604
    invoke-static {}, Landroid/media/MediaDrm;->native_init()V

    .line 2605
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/UUID;)V
    .locals 4
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/media/MediaDrm;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 149
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaDrm;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 1165
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Landroid/media/MediaDrm;->mListenerMap:Ljava/util/Map;

    .line 1402
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Landroid/media/MediaDrm;->mPlaybackComponentMap:Ljava/util/Map;

    .line 292
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaDrm;->mAppPackageName:Ljava/lang/String;

    .line 293
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 294
    invoke-static {p1}, Landroid/media/MediaDrm;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    move-result-object v3

    .line 293
    invoke-direct {p0, v2, v3, v1}, Landroid/media/MediaDrm;->native_setup(Ljava/lang/Object;[BLjava/lang/String;)V

    .line 296
    const-string v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method private blacklist clearGenericListener(I)V
    .locals 2
    .param p1, "what"    # I

    .line 1195
    iget-object v0, p0, Landroid/media/MediaDrm;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    return-void
.end method

.method private native blacklist closeSessionNative([B)V
.end method

.method private blacklist createHandler()Landroid/os/Handler;
    .locals 2

    .line 270
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    .local v1, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 271
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .local v0, "handler":Landroid/os/Handler;
    goto :goto_0

    .line 272
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_1

    .line 273
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .restart local v0    # "handler":Landroid/os/Handler;
    goto :goto_0

    .line 275
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1
    const/4 v0, 0x0

    .line 277
    .restart local v0    # "handler":Landroid/os/Handler;
    :goto_0
    return-object v0
.end method

.method private blacklist createOnEventListener(Landroid/media/MediaDrm$OnEventListener;)Ljava/util/function/Consumer;
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaDrm$OnEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaDrm$OnEventListener;",
            ")",
            "Ljava/util/function/Consumer<",
            "Landroid/media/MediaDrm$ListenerArgs;",
            ">;"
        }
    .end annotation

    .line 1199
    new-instance v0, Landroid/media/MediaDrm$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Landroid/media/MediaDrm$$ExternalSyntheticLambda7;-><init>(Landroid/media/MediaDrm;Landroid/media/MediaDrm$OnEventListener;)V

    return-object v0
.end method

.method private blacklist createOnExpirationUpdateListener(Landroid/media/MediaDrm$OnExpirationUpdateListener;)Ljava/util/function/Consumer;
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaDrm$OnExpirationUpdateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaDrm$OnExpirationUpdateListener;",
            ")",
            "Ljava/util/function/Consumer<",
            "Landroid/media/MediaDrm$ListenerArgs;",
            ">;"
        }
    .end annotation

    .line 1230
    new-instance v0, Landroid/media/MediaDrm$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Landroid/media/MediaDrm$$ExternalSyntheticLambda8;-><init>(Landroid/media/MediaDrm;Landroid/media/MediaDrm$OnExpirationUpdateListener;)V

    return-object v0
.end method

.method private blacklist createOnKeyStatusChangeListener(Landroid/media/MediaDrm$OnKeyStatusChangeListener;)Ljava/util/function/Consumer;
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaDrm$OnKeyStatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaDrm$OnKeyStatusChangeListener;",
            ")",
            "Ljava/util/function/Consumer<",
            "Landroid/media/MediaDrm$ListenerArgs;",
            ">;"
        }
    .end annotation

    .line 1216
    new-instance v0, Landroid/media/MediaDrm$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/media/MediaDrm$$ExternalSyntheticLambda2;-><init>(Landroid/media/MediaDrm;Landroid/media/MediaDrm$OnKeyStatusChangeListener;)V

    return-object v0
.end method

.method private blacklist createOnSessionLostStateListener(Landroid/media/MediaDrm$OnSessionLostStateListener;)Ljava/util/function/Consumer;
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaDrm$OnSessionLostStateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaDrm$OnSessionLostStateListener;",
            ")",
            "Ljava/util/function/Consumer<",
            "Landroid/media/MediaDrm$ListenerArgs;",
            ">;"
        }
    .end annotation

    .line 1243
    new-instance v0, Landroid/media/MediaDrm$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Landroid/media/MediaDrm$$ExternalSyntheticLambda6;-><init>(Landroid/media/MediaDrm;Landroid/media/MediaDrm$OnSessionLostStateListener;)V

    return-object v0
.end method

.method private static final native greylist-max-o decryptNative(Landroid/media/MediaDrm;[B[B[B[B)[B
.end method

.method private static final native greylist-max-o encryptNative(Landroid/media/MediaDrm;[B[B[B[B)[B
.end method

.method private static final greylist-max-o getByteArrayFromUUID(Ljava/util/UUID;)[B
    .locals 10
    .param p0, "uuid"    # Ljava/util/UUID;

    .line 230
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    .line 231
    .local v0, "msb":J
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 233
    .local v2, "lsb":J
    const/16 v4, 0x10

    new-array v4, v4, [B

    .line 234
    .local v4, "uuidBytes":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v6, 0x8

    if-ge v5, v6, :cond_0

    .line 235
    rsub-int/lit8 v7, v5, 0x7

    mul-int/2addr v7, v6

    ushr-long v7, v0, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    .line 236
    add-int/lit8 v7, v5, 0x8

    rsub-int/lit8 v8, v5, 0x7

    mul-int/2addr v8, v6

    ushr-long v8, v2, v8

    long-to-int v6, v8

    int-to-byte v6, v6

    aput-byte v6, v4, v7

    .line 234
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 239
    .end local v5    # "i":I
    :cond_0
    return-object v4
.end method

.method private static blacklist getDigestBytes([BLjava/lang/String;)[B
    .locals 2
    .param p0, "rawBytes"    # [B
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 1617
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1618
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1619
    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 1620
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "MediaDrm"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1622
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private native blacklist getKeyRequestNative([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaDrm$KeyRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation
.end method

.method public static final whitelist getMaxSecurityLevel()I
    .locals 1

    .line 2127
    const/4 v0, 0x6

    return v0
.end method

.method private native greylist-max-o getMetricsNative()Landroid/os/PersistableBundle;
.end method

.method private blacklist getNewestAvailablePackageCertificateRawBytes()[B
    .locals 8

    .line 1585
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 1586
    .local v0, "application":Landroid/app/Application;
    const/4 v1, 0x0

    const-string v2, "MediaDrm"

    if-nez v0, :cond_0

    .line 1587
    const-string v3, "pkg cert: Application is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    return-object v1

    .line 1590
    :cond_0
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1591
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-nez v3, :cond_1

    .line 1592
    const-string v4, "pkg cert: PackageManager is null"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    return-object v1

    .line 1595
    :cond_1
    const/4 v4, 0x0

    .line 1597
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v5, p0, Landroid/media/MediaDrm;->mAppPackageName:Ljava/lang/String;

    const/high16 v6, 0x8000000

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 1601
    goto :goto_0

    .line 1599
    :catch_0
    move-exception v5

    .line 1600
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v6, p0, Landroid/media/MediaDrm;->mAppPackageName:Ljava/lang/String;

    invoke-static {v2, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1602
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-eqz v4, :cond_4

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-nez v5, :cond_2

    goto :goto_1

    .line 1606
    :cond_2
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v5}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v5

    .line 1607
    .local v5, "signers":[Landroid/content/pm/Signature;
    if-eqz v5, :cond_3

    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 1608
    const/4 v1, 0x0

    aget-object v1, v5, v1

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 1610
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pkg cert: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " signers"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    return-object v1

    .line 1603
    .end local v5    # "signers":[Landroid/content/pm/Signature;
    :cond_4
    :goto_1
    const-string v5, "pkg cert: PackageInfo or SigningInfo is null"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    return-object v1
.end method

.method private native greylist-max-o getProvisionRequestNative(ILjava/lang/String;)Landroid/media/MediaDrm$ProvisionRequest;
.end method

.method public static final whitelist getSupportedCryptoSchemes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .line 225
    invoke-static {}, Landroid/media/MediaDrm;->getSupportedCryptoSchemesNative()[B

    move-result-object v0

    .line 226
    .local v0, "uuidBytes":[B
    invoke-static {v0}, Landroid/media/MediaDrm;->getUUIDsFromByteArray([B)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static final native blacklist getSupportedCryptoSchemesNative()[B
.end method

.method private static final blacklist getUUIDFromByteArray([BI)Ljava/util/UUID;
    .locals 12
    .param p0, "uuidBytes"    # [B
    .param p1, "off"    # I

    .line 243
    const-wide/16 v0, 0x0

    .line 244
    .local v0, "msb":J
    const-wide/16 v2, 0x0

    .line 246
    .local v2, "lsb":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x8

    if-ge v4, v5, :cond_0

    .line 247
    shl-long v6, v0, v5

    add-int v8, p1, v4

    aget-byte v8, p0, v8

    int-to-long v8, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    or-long v0, v6, v8

    .line 248
    shl-long v6, v2, v5

    add-int v8, p1, v4

    add-int/2addr v8, v5

    aget-byte v5, p0, v8

    int-to-long v8, v5

    and-long/2addr v8, v10

    or-long v2, v6, v8

    .line 246
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 251
    .end local v4    # "i":I
    :cond_0
    new-instance v4, Ljava/util/UUID;

    invoke-direct {v4, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    return-object v4
.end method

.method private static final blacklist getUUIDsFromByteArray([B)Ljava/util/List;
    .locals 3
    .param p0, "uuidBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 256
    .local v0, "uuids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    const/4 v1, 0x0

    .local v1, "off":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 257
    invoke-static {p0, v1}, Landroid/media/MediaDrm;->getUUIDFromByteArray([BI)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v1, v1, 0x10

    goto :goto_0

    .line 259
    .end local v1    # "off":I
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static final whitelist isCryptoSchemeSupported(Ljava/util/UUID;)Z
    .locals 3
    .param p0, "uuid"    # Ljava/util/UUID;

    .line 184
    invoke-static {p0}, Landroid/media/MediaDrm;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/media/MediaDrm;->isCryptoSchemeSupportedNative([BLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static final whitelist isCryptoSchemeSupported(Ljava/util/UUID;Ljava/lang/String;)Z
    .locals 2
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 198
    invoke-static {p0}, Landroid/media/MediaDrm;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/media/MediaDrm;->isCryptoSchemeSupportedNative([BLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static final whitelist isCryptoSchemeSupported(Ljava/util/UUID;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "securityLevel"    # I

    .line 215
    invoke-static {p0}, Landroid/media/MediaDrm;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/media/MediaDrm;->isCryptoSchemeSupportedNative([BLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static final native blacklist isCryptoSchemeSupportedNative([BLjava/lang/String;I)Z
.end method

.method private greylist-max-o keyStatusListFromParcel(Landroid/os/Parcel;)Ljava/util/List;
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaDrm$KeyStatus;",
            ">;"
        }
    .end annotation

    .line 1293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1294
    .local v0, "nelems":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1295
    .local v1, "keyStatusList":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaDrm$KeyStatus;>;"
    :goto_0
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "nelems":I
    .local v2, "nelems":I
    if-lez v0, :cond_0

    .line 1296
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1297
    .local v0, "keyId":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1298
    .local v3, "keyStatusCode":I
    new-instance v4, Landroid/media/MediaDrm$KeyStatus;

    invoke-direct {v4, v0, v3}, Landroid/media/MediaDrm$KeyStatus;-><init>([BI)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1299
    .end local v0    # "keyId":[B
    .end local v3    # "keyStatusCode":I
    move v0, v2

    goto :goto_0

    .line 1300
    :cond_0
    return-object v1
.end method

.method static synthetic blacklist lambda$postEventFromNative$4(Landroid/media/MediaDrm;II[B[BJLjava/util/List;ZLandroid/media/MediaDrm$ListenerWithExecutor;)V
    .locals 12
    .param p0, "md"    # Landroid/media/MediaDrm;
    .param p1, "eventType"    # I
    .param p2, "extra"    # I
    .param p3, "sessionId"    # [B
    .param p4, "data"    # [B
    .param p5, "expirationTime"    # J
    .param p7, "keyStatusList"    # Ljava/util/List;
    .param p8, "hasNewUsableKey"    # Z
    .param p9, "listener"    # Landroid/media/MediaDrm$ListenerWithExecutor;

    .line 1327
    move-object v0, p0

    iget-wide v1, v0, Landroid/media/MediaDrm;->mNativeContext:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1328
    const-string v1, "MediaDrm"

    const-string v2, "MediaDrm went away with unhandled events"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    return-void

    .line 1331
    :cond_0
    new-instance v1, Landroid/media/MediaDrm$ListenerArgs;

    move-object v3, v1

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v3 .. v11}, Landroid/media/MediaDrm$ListenerArgs;-><init>(II[B[BJLjava/util/List;Z)V

    .line 1334
    .local v1, "args":Landroid/media/MediaDrm$ListenerArgs;
    invoke-static/range {p9 .. p9}, Landroid/media/MediaDrm$ListenerWithExecutor;->-$$Nest$fgetmConsumer(Landroid/media/MediaDrm$ListenerWithExecutor;)Ljava/util/function/Consumer;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1335
    return-void
.end method

.method private static final native greylist-max-o native_init()V
.end method

.method private final native greylist-max-o native_setup(Ljava/lang/Object;[BLjava/lang/String;)V
.end method

.method private native blacklist openSessionNative(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/ResourceBusyException;
        }
    .end annotation
.end method

.method private static blacklist postEventFromNative(Ljava/lang/Object;III[B[BJLjava/util/List;Z)V
    .locals 15
    .param p0, "mediadrm_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "eventType"    # I
    .param p3, "extra"    # I
    .param p4, "sessionId"    # [B
    .param p5, "data"    # [B
    .param p6, "expirationTime"    # J
    .param p9, "hasNewUsableKey"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "III[B[BJ",
            "Ljava/util/List<",
            "Landroid/media/MediaDrm$KeyStatus;",
            ">;Z)V"
        }
    .end annotation

    .line 1315
    .local p8, "keyStatusList":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaDrm$KeyStatus;>;"
    move/from16 v0, p1

    move-object v1, p0

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaDrm;

    .line 1316
    .local v1, "md":Landroid/media/MediaDrm;
    if-nez v1, :cond_0

    .line 1317
    return-void

    .line 1319
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 1340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaDrm"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1324
    :pswitch_0
    iget-object v2, v1, Landroid/media/MediaDrm;->mListenerMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/media/MediaDrm$ListenerWithExecutor;

    .line 1325
    .local v13, "listener":Landroid/media/MediaDrm$ListenerWithExecutor;
    if-eqz v13, :cond_1

    .line 1326
    new-instance v14, Landroid/media/MediaDrm$$ExternalSyntheticLambda5;

    move-object v2, v14

    move-object v3, v1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move/from16 v11, p9

    move-object v12, v13

    invoke-direct/range {v2 .. v12}, Landroid/media/MediaDrm$$ExternalSyntheticLambda5;-><init>(Landroid/media/MediaDrm;II[B[BJLjava/util/List;ZLandroid/media/MediaDrm$ListenerWithExecutor;)V

    .line 1336
    .local v2, "command":Ljava/lang/Runnable;
    invoke-static {v13}, Landroid/media/MediaDrm$ListenerWithExecutor;->-$$Nest$fgetmExecutor(Landroid/media/MediaDrm$ListenerWithExecutor;)Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1343
    .end local v2    # "command":Ljava/lang/Runnable;
    .end local v13    # "listener":Landroid/media/MediaDrm$ListenerWithExecutor;
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private native greylist-max-o provideProvisionResponseNative([B)Landroid/media/MediaDrm$Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation
.end method

.method private static final native greylist-max-o setCipherAlgorithmNative(Landroid/media/MediaDrm;[BLjava/lang/String;)V
.end method

.method private blacklist setGenericListener(ILjava/util/concurrent/Executor;Ljava/lang/Object;Ljava/util/function/Function;)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/concurrent/Executor;",
            "TT;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/util/function/Consumer<",
            "Landroid/media/MediaDrm$ListenerArgs;",
            ">;>;)V"
        }
    .end annotation

    .line 1191
    .local p3, "listener":Ljava/lang/Object;, "TT;"
    .local p4, "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;Ljava/util/function/Consumer<Landroid/media/MediaDrm$ListenerArgs;>;>;"
    iget-object v0, p0, Landroid/media/MediaDrm;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/media/MediaDrm$ListenerWithExecutor;

    invoke-interface {p4, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/function/Consumer;

    invoke-direct {v2, p2, v3}, Landroid/media/MediaDrm$ListenerWithExecutor;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    return-void
.end method

.method private blacklist setListenerWithExecutor(ILjava/util/concurrent/Executor;Ljava/lang/Object;Ljava/util/function/Function;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/concurrent/Executor;",
            "TT;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/util/function/Consumer<",
            "Landroid/media/MediaDrm$ListenerArgs;",
            ">;>;)V"
        }
    .end annotation

    .line 1182
    .local p3, "listener":Ljava/lang/Object;, "TT;"
    .local p4, "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;Ljava/util/function/Consumer<Landroid/media/MediaDrm$ListenerArgs;>;>;"
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1186
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/MediaDrm;->setGenericListener(ILjava/util/concurrent/Executor;Ljava/lang/Object;Ljava/util/function/Function;)V

    .line 1187
    return-void

    .line 1183
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const-string v1, "executor %s listener %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1184
    .local v0, "errMsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist setListenerWithHandler(ILandroid/os/Handler;Ljava/lang/Object;Ljava/util/function/Function;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Handler;",
            "TT;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/util/function/Consumer<",
            "Landroid/media/MediaDrm$ListenerArgs;",
            ">;>;)V"
        }
    .end annotation

    .line 1170
    .local p3, "listener":Ljava/lang/Object;, "TT;"
    .local p4, "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;Ljava/util/function/Consumer<Landroid/media/MediaDrm$ListenerArgs;>;>;"
    if-nez p3, :cond_0

    .line 1171
    invoke-direct {p0, p1}, Landroid/media/MediaDrm;->clearGenericListener(I)V

    goto :goto_1

    .line 1173
    :cond_0
    if-nez p2, :cond_1

    invoke-direct {p0}, Landroid/media/MediaDrm;->createHandler()Landroid/os/Handler;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    move-object p2, v0

    .line 1174
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-direct {v0, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 1175
    .local v0, "executor":Landroid/os/HandlerExecutor;
    invoke-direct {p0, p1, v0, p3, p4}, Landroid/media/MediaDrm;->setGenericListener(ILjava/util/concurrent/Executor;Ljava/lang/Object;Ljava/util/function/Function;)V

    .line 1177
    .end local v0    # "executor":Landroid/os/HandlerExecutor;
    :goto_1
    return-void
.end method

.method private static final native greylist-max-o setMacAlgorithmNative(Landroid/media/MediaDrm;[BLjava/lang/String;)V
.end method

.method private native blacklist setPlaybackId([BLjava/lang/String;)V
.end method

.method private static final native greylist-max-o signNative(Landroid/media/MediaDrm;[B[B[B)[B
.end method

.method private static final native greylist-max-o signRSANative(Landroid/media/MediaDrm;[BLjava/lang/String;[B[B)[B
.end method

.method private static final native greylist-max-o verifyNative(Landroid/media/MediaDrm;[B[B[B[B)Z
.end method


# virtual methods
.method public whitelist clearOnEventListener()V
    .locals 1

    .line 1085
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Landroid/media/MediaDrm;->clearGenericListener(I)V

    .line 1086
    return-void
.end method

.method public whitelist clearOnExpirationUpdateListener()V
    .locals 1

    .line 819
    const/16 v0, 0xc9

    invoke-direct {p0, v0}, Landroid/media/MediaDrm;->clearGenericListener(I)V

    .line 820
    return-void
.end method

.method public whitelist clearOnKeyStatusChangeListener()V
    .locals 1

    .line 877
    const/16 v0, 0xca

    invoke-direct {p0, v0}, Landroid/media/MediaDrm;->clearGenericListener(I)V

    .line 878
    return-void
.end method

.method public whitelist clearOnSessionLostStateListener()V
    .locals 1

    .line 942
    const/16 v0, 0xcb

    invoke-direct {p0, v0}, Landroid/media/MediaDrm;->clearGenericListener(I)V

    .line 943
    return-void
.end method

.method public whitelist test-api close()V
    .locals 0

    .line 2579
    invoke-virtual {p0}, Landroid/media/MediaDrm;->release()V

    .line 2580
    return-void
.end method

.method public whitelist closeSession([B)V
    .locals 2
    .param p1, "sessionId"    # [B

    .line 1396
    invoke-direct {p0, p1}, Landroid/media/MediaDrm;->closeSessionNative([B)V

    .line 1397
    iget-object v0, p0, Landroid/media/MediaDrm;->mPlaybackComponentMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2557
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaDrm;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 2558
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 2560
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaDrm;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2562
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2563
    nop

    .line 2564
    return-void

    .line 2562
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2563
    throw v0
.end method

.method public greylist getCertificateRequest(ILjava/lang/String;)Landroid/media/MediaDrm$CertificateRequest;
    .locals 4
    .param p1, "certType"    # I
    .param p2, "certAuthority"    # Ljava/lang/String;

    .line 2424
    invoke-direct {p0, p1, p2}, Landroid/media/MediaDrm;->getProvisionRequestNative(ILjava/lang/String;)Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    .line 2425
    .local v0, "provisionRequest":Landroid/media/MediaDrm$ProvisionRequest;
    new-instance v1, Landroid/media/MediaDrm$CertificateRequest;

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v2

    .line 2426
    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/media/MediaDrm$CertificateRequest;-><init>([BLjava/lang/String;)V

    .line 2425
    return-object v1
.end method

.method public native whitelist getConnectedHdcpLevel()I
.end method

.method public whitelist getCryptoSession([BLjava/lang/String;Ljava/lang/String;)Landroid/media/MediaDrm$CryptoSession;
    .locals 1
    .param p1, "sessionId"    # [B
    .param p2, "cipherAlgorithm"    # Ljava/lang/String;
    .param p3, "macAlgorithm"    # Ljava/lang/String;

    .line 2372
    new-instance v0, Landroid/media/MediaDrm$CryptoSession;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/MediaDrm$CryptoSession;-><init>(Landroid/media/MediaDrm;[BLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;
    .locals 9
    .param p1, "scope"    # [B
    .param p2, "init"    # [B
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "keyType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaDrm$KeyRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    .line 1565
    .local p5, "optionalParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p5, :cond_0

    .line 1566
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .local v0, "internalParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 1568
    .end local v0    # "internalParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1570
    .restart local v0    # "internalParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-direct {p0}, Landroid/media/MediaDrm;->getNewestAvailablePackageCertificateRawBytes()[B

    move-result-object v7

    .line 1571
    .local v7, "rawBytes":[B
    const/4 v1, 0x0

    .line 1572
    .local v1, "hashBytes":[B
    if-eqz v7, :cond_1

    .line 1573
    const-string v2, "SHA-256"

    invoke-static {v7, v2}, Landroid/media/MediaDrm;->getDigestBytes([BLjava/lang/String;)[B

    move-result-object v1

    move-object v8, v1

    goto :goto_1

    .line 1572
    :cond_1
    move-object v8, v1

    .line 1575
    .end local v1    # "hashBytes":[B
    .local v8, "hashBytes":[B
    :goto_1
    if-eqz v8, :cond_2

    .line 1576
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v1

    .line 1577
    .local v1, "encoderB64":Ljava/util/Base64$Encoder;
    invoke-virtual {v1, v8}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v2

    .line 1578
    .local v2, "hashBytesB64":Ljava/lang/String;
    const-string v3, "package_certificate_hash_bytes"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    .end local v1    # "encoderB64":Ljava/util/Base64$Encoder;
    .end local v2    # "hashBytesB64":Ljava/lang/String;
    :cond_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/MediaDrm;->getKeyRequestNative([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v1

    return-object v1
.end method

.method public native whitelist getLogMessages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaDrm$LogMessage;",
            ">;"
        }
    .end annotation
.end method

.method public native whitelist getMaxHdcpLevel()I
.end method

.method public native whitelist getMaxSessionCount()I
.end method

.method public whitelist getMetrics()Landroid/os/PersistableBundle;
    .locals 1

    .line 2255
    invoke-direct {p0}, Landroid/media/MediaDrm;->getMetricsNative()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 2256
    .local v0, "bundle":Landroid/os/PersistableBundle;
    return-object v0
.end method

.method public native whitelist getOfflineLicenseKeySetIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end method

.method public native whitelist getOfflineLicenseState([B)I
.end method

.method public native whitelist getOpenSessionCount()I
.end method

.method public whitelist getPlaybackComponent([B)Landroid/media/MediaDrm$PlaybackComponent;
    .locals 2
    .param p1, "sessionId"    # [B

    .line 2978
    if-eqz p1, :cond_0

    .line 2981
    iget-object v0, p0, Landroid/media/MediaDrm;->mPlaybackComponentMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaDrm$PlaybackComponent;

    return-object v0

    .line 2979
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sessionId is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native whitelist getPropertyByteArray(Ljava/lang/String;)[B
.end method

.method public native whitelist getPropertyString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public whitelist getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;
    .locals 2

    .line 1742
    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Landroid/media/MediaDrm;->getProvisionRequestNative(ILjava/lang/String;)Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    return-object v0
.end method

.method public native whitelist getSecureStop([B)[B
.end method

.method public native whitelist getSecureStopIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end method

.method public native whitelist getSecureStops()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end method

.method public native whitelist getSecurityLevel([B)I
.end method

.method synthetic blacklist lambda$createOnEventListener$0$android-media-MediaDrm(Landroid/media/MediaDrm$OnEventListener;Landroid/media/MediaDrm$ListenerArgs;)V
    .locals 8
    .param p1, "listener"    # Landroid/media/MediaDrm$OnEventListener;
    .param p2, "args"    # Landroid/media/MediaDrm$ListenerArgs;

    .line 1200
    invoke-static {p2}, Landroid/media/MediaDrm$ListenerArgs;->-$$Nest$fgetsessionId(Landroid/media/MediaDrm$ListenerArgs;)[B

    move-result-object v0

    .line 1201
    .local v0, "sessionId":[B
    array-length v1, v0

    if-nez v1, :cond_0

    .line 1202
    const/4 v0, 0x0

    .line 1204
    :cond_0
    invoke-static {p2}, Landroid/media/MediaDrm$ListenerArgs;->-$$Nest$fgetdata(Landroid/media/MediaDrm$ListenerArgs;)[B

    move-result-object v1

    .line 1205
    .local v1, "data":[B
    if-eqz v1, :cond_1

    array-length v2, v1

    if-nez v2, :cond_1

    .line 1206
    const/4 v1, 0x0

    move-object v7, v1

    goto :goto_0

    .line 1209
    :cond_1
    move-object v7, v1

    .end local v1    # "data":[B
    .local v7, "data":[B
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drm event ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/media/MediaDrm$ListenerArgs;->-$$Nest$fgetarg1(Landroid/media/MediaDrm$ListenerArgs;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/media/MediaDrm$ListenerArgs;->-$$Nest$fgetarg2(Landroid/media/MediaDrm$ListenerArgs;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaDrm"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    invoke-static {p2}, Landroid/media/MediaDrm$ListenerArgs;->-$$Nest$fgetarg1(Landroid/media/MediaDrm$ListenerArgs;)I

    move-result v4

    invoke-static {p2}, Landroid/media/MediaDrm$ListenerArgs;->-$$Nest$fgetarg2(Landroid/media/MediaDrm$ListenerArgs;)I

    move-result v5

    move-object v1, p1

    move-object v2, p0

    move-object v3, v0

    move-object v6, v7

    invoke-interface/range {v1 .. v6}, Landroid/media/MediaDrm$OnEventListener;->onEvent(Landroid/media/MediaDrm;[BII[B)V

    .line 1211
    return-void
.end method

.method synthetic blacklist lambda$createOnExpirationUpdateListener$2$android-media-MediaDrm(Landroid/media/MediaDrm$OnExpirationUpdateListener;Landroid/media/MediaDrm$ListenerArgs;)V
    .locals 5
    .param p1, "listener"    # Landroid/media/MediaDrm$OnExpirationUpdateListener;
    .param p2, "args"    # Landroid/media/MediaDrm$ListenerArgs;

    .line 1231
    invoke-static {p2}, Landroid/media/MediaDrm$ListenerArgs;->-$$Nest$fgetsessionId(Landroid/media/MediaDrm$ListenerArgs;)[B

    move-result-object v0

    .line 1232
    .local v0, "sessionId":[B
    array-length v1, v0

    if-lez v1, :cond_0

    .line 1233
    invoke-static {p2}, Landroid/media/MediaDrm$ListenerArgs;->-$$Nest$fgetexpirationTime(Landroid/media/MediaDrm$ListenerArgs;)J

    move-result-wide v1

    .line 1235
    .local v1, "expirationTime":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Drm key expiration update: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaDrm"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    invoke-interface {p1, p0, v0, v1, v2}, Landroid/media/MediaDrm$OnExpirationUpdateListener;->onExpirationUpdate(Landroid/media/MediaDrm;[BJ)V

    .line 1238
    .end local v1    # "expirationTime":J
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$createOnKeyStatusChangeListener$1$android-media-MediaDrm(Landroid/media/MediaDrm$OnKeyStatusChangeListener;Landroid/media/MediaDrm$ListenerArgs;)V
    .locals 5
    .param p1, "listener"    # Landroid/media/MediaDrm$OnKeyStatusChangeListener;
    .param p2, "args"    # Landroid/media/MediaDrm$ListenerArgs;

    .line 1217
    invoke-static {p2}, Landroid/media/MediaDrm$ListenerArgs;->-$$Nest$fgetsessionId(Landroid/media/MediaDrm$ListenerArgs;)[B

    move-result-object v0

    .line 1218
    .local v0, "sessionId":[B
    array-length v1, v0

    if-lez v1, :cond_0

    .line 1219
    invoke-static {p2}, Landroid/media/MediaDrm$ListenerArgs;->-$$Nest$fgetkeyStatusList(Landroid/media/MediaDrm$ListenerArgs;)Ljava/util/List;

    move-result-object v1

    .line 1220
    .local v1, "keyStatusList":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaDrm$KeyStatus;>;"
    invoke-static {p2}, Landroid/media/MediaDrm$ListenerArgs;->-$$Nest$fgethasNewUsableKey(Landroid/media/MediaDrm$ListenerArgs;)Z

    move-result v2

    .line 1222
    .local v2, "hasNewUsableKey":Z
    const-string v3, "MediaDrm"

    const-string v4, "Drm key status changed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    invoke-interface {p1, p0, v0, v1, v2}, Landroid/media/MediaDrm$OnKeyStatusChangeListener;->onKeyStatusChange(Landroid/media/MediaDrm;[BLjava/util/List;Z)V

    .line 1225
    .end local v1    # "keyStatusList":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaDrm$KeyStatus;>;"
    .end local v2    # "hasNewUsableKey":Z
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$createOnSessionLostStateListener$3$android-media-MediaDrm(Landroid/media/MediaDrm$OnSessionLostStateListener;Landroid/media/MediaDrm$ListenerArgs;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/MediaDrm$OnSessionLostStateListener;
    .param p2, "args"    # Landroid/media/MediaDrm$ListenerArgs;

    .line 1244
    invoke-static {p2}, Landroid/media/MediaDrm$ListenerArgs;->-$$Nest$fgetsessionId(Landroid/media/MediaDrm$ListenerArgs;)[B

    move-result-object v0

    .line 1245
    .local v0, "sessionId":[B
    const-string v1, "MediaDrm"

    const-string v2, "Drm session lost state event: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-interface {p1, p0, v0}, Landroid/media/MediaDrm$OnSessionLostStateListener;->onSessionLostState(Landroid/media/MediaDrm;[B)V

    .line 1247
    return-void
.end method

.method public final native greylist-max-o native_release()V
.end method

.method public whitelist openSession()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/ResourceBusyException;
        }
    .end annotation

    .line 1355
    invoke-static {}, Landroid/media/MediaDrm;->getMaxSecurityLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/MediaDrm;->openSession(I)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist openSession(I)[B
    .locals 4
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/ResourceBusyException;
        }
    .end annotation

    .line 1382
    invoke-direct {p0, p1}, Landroid/media/MediaDrm;->openSessionNative(I)[B

    move-result-object v0

    .line 1383
    .local v0, "sessionId":[B
    iget-object v1, p0, Landroid/media/MediaDrm;->mPlaybackComponentMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    new-instance v3, Landroid/media/MediaDrm$PlaybackComponent;

    invoke-direct {v3, p0, v0}, Landroid/media/MediaDrm$PlaybackComponent;-><init>(Landroid/media/MediaDrm;[B)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    return-object v0
.end method

.method public greylist provideCertificateResponse([B)Landroid/media/MediaDrm$Certificate;
    .locals 1
    .param p1, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 2494
    invoke-direct {p0, p1}, Landroid/media/MediaDrm;->provideProvisionResponseNative([B)Landroid/media/MediaDrm$Certificate;

    move-result-object v0

    return-object v0
.end method

.method public native whitelist provideKeyResponse([B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation
.end method

.method public whitelist provideProvisionResponse([B)V
    .locals 0
    .param p1, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 1761
    invoke-direct {p0, p1}, Landroid/media/MediaDrm;->provideProvisionResponseNative([B)Landroid/media/MediaDrm$Certificate;

    .line 1762
    return-void
.end method

.method public native whitelist queryKeyStatus([B)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist release()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2587
    iget-object v0, p0, Landroid/media/MediaDrm;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 2588
    iget-object v0, p0, Landroid/media/MediaDrm;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2589
    invoke-virtual {p0}, Landroid/media/MediaDrm;->native_release()V

    .line 2590
    iget-object v0, p0, Landroid/media/MediaDrm;->mPlaybackComponentMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2592
    :cond_0
    return-void
.end method

.method public whitelist releaseAllSecureStops()V
    .locals 0

    .line 1954
    invoke-virtual {p0}, Landroid/media/MediaDrm;->removeAllSecureStops()V

    .line 1955
    return-void
.end method

.method public native whitelist releaseSecureStops([B)V
.end method

.method public native whitelist removeAllSecureStops()V
.end method

.method public native whitelist removeKeys([B)V
.end method

.method public native whitelist removeOfflineLicense([B)V
.end method

.method public native whitelist removeSecureStop([B)V
.end method

.method public whitelist requiresSecureDecoder(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mime"    # Ljava/lang/String;

    .line 2533
    invoke-static {}, Landroid/media/MediaDrm;->getMaxSecurityLevel()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaDrm;->requiresSecureDecoder(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public native whitelist requiresSecureDecoder(Ljava/lang/String;I)Z
.end method

.method public native whitelist restoreKeys([B[B)V
.end method

.method public whitelist setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaDrm$OnEventListener;

    .line 1051
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;Landroid/os/Handler;)V

    .line 1052
    return-void
.end method

.method public whitelist setOnEventListener(Landroid/media/MediaDrm$OnEventListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/MediaDrm$OnEventListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1065
    new-instance v0, Landroid/media/MediaDrm$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/media/MediaDrm$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaDrm;)V

    const/16 v1, 0xc8

    invoke-direct {p0, v1, p2, p1, v0}, Landroid/media/MediaDrm;->setListenerWithHandler(ILandroid/os/Handler;Ljava/lang/Object;Ljava/util/function/Function;)V

    .line 1066
    return-void
.end method

.method public whitelist setOnEventListener(Ljava/util/concurrent/Executor;Landroid/media/MediaDrm$OnEventListener;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/MediaDrm$OnEventListener;

    .line 1078
    new-instance v0, Landroid/media/MediaDrm$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/media/MediaDrm$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaDrm;)V

    const/16 v1, 0xc8

    invoke-direct {p0, v1, p1, p2, v0}, Landroid/media/MediaDrm;->setListenerWithExecutor(ILjava/util/concurrent/Executor;Ljava/lang/Object;Ljava/util/function/Function;)V

    .line 1079
    return-void
.end method

.method public whitelist setOnExpirationUpdateListener(Landroid/media/MediaDrm$OnExpirationUpdateListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/MediaDrm$OnExpirationUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 796
    new-instance v0, Landroid/media/MediaDrm$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/media/MediaDrm$$ExternalSyntheticLambda1;-><init>(Landroid/media/MediaDrm;)V

    const/16 v1, 0xc9

    invoke-direct {p0, v1, p2, p1, v0}, Landroid/media/MediaDrm;->setListenerWithHandler(ILandroid/os/Handler;Ljava/lang/Object;Ljava/util/function/Function;)V

    .line 798
    return-void
.end method

.method public whitelist setOnExpirationUpdateListener(Ljava/util/concurrent/Executor;Landroid/media/MediaDrm$OnExpirationUpdateListener;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/MediaDrm$OnExpirationUpdateListener;

    .line 811
    new-instance v0, Landroid/media/MediaDrm$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/media/MediaDrm$$ExternalSyntheticLambda1;-><init>(Landroid/media/MediaDrm;)V

    const/16 v1, 0xc9

    invoke-direct {p0, v1, p1, p2, v0}, Landroid/media/MediaDrm;->setListenerWithExecutor(ILjava/util/concurrent/Executor;Ljava/lang/Object;Ljava/util/function/Function;)V

    .line 813
    return-void
.end method

.method public whitelist setOnKeyStatusChangeListener(Landroid/media/MediaDrm$OnKeyStatusChangeListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/MediaDrm$OnKeyStatusChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 853
    new-instance v0, Landroid/media/MediaDrm$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/media/MediaDrm$$ExternalSyntheticLambda3;-><init>(Landroid/media/MediaDrm;)V

    const/16 v1, 0xca

    invoke-direct {p0, v1, p2, p1, v0}, Landroid/media/MediaDrm;->setListenerWithHandler(ILandroid/os/Handler;Ljava/lang/Object;Ljava/util/function/Function;)V

    .line 855
    return-void
.end method

.method public whitelist setOnKeyStatusChangeListener(Ljava/util/concurrent/Executor;Landroid/media/MediaDrm$OnKeyStatusChangeListener;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/MediaDrm$OnKeyStatusChangeListener;

    .line 869
    new-instance v0, Landroid/media/MediaDrm$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/media/MediaDrm$$ExternalSyntheticLambda3;-><init>(Landroid/media/MediaDrm;)V

    const/16 v1, 0xca

    invoke-direct {p0, v1, p1, p2, v0}, Landroid/media/MediaDrm;->setListenerWithExecutor(ILjava/util/concurrent/Executor;Ljava/lang/Object;Ljava/util/function/Function;)V

    .line 871
    return-void
.end method

.method public whitelist setOnSessionLostStateListener(Landroid/media/MediaDrm$OnSessionLostStateListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/MediaDrm$OnSessionLostStateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 918
    new-instance v0, Landroid/media/MediaDrm$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroid/media/MediaDrm$$ExternalSyntheticLambda4;-><init>(Landroid/media/MediaDrm;)V

    const/16 v1, 0xcb

    invoke-direct {p0, v1, p2, p1, v0}, Landroid/media/MediaDrm;->setListenerWithHandler(ILandroid/os/Handler;Ljava/lang/Object;Ljava/util/function/Function;)V

    .line 920
    return-void
.end method

.method public whitelist setOnSessionLostStateListener(Ljava/util/concurrent/Executor;Landroid/media/MediaDrm$OnSessionLostStateListener;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/MediaDrm$OnSessionLostStateListener;

    .line 934
    new-instance v0, Landroid/media/MediaDrm$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroid/media/MediaDrm$$ExternalSyntheticLambda4;-><init>(Landroid/media/MediaDrm;)V

    const/16 v1, 0xcb

    invoke-direct {p0, v1, p1, p2, v0}, Landroid/media/MediaDrm;->setListenerWithExecutor(ILjava/util/concurrent/Executor;Ljava/lang/Object;Ljava/util/function/Function;)V

    .line 936
    return-void
.end method

.method public native whitelist setPropertyByteArray(Ljava/lang/String;[B)V
.end method

.method public native whitelist setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public greylist signRSA([BLjava/lang/String;[B[B)[B
    .locals 1
    .param p1, "sessionId"    # [B
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "wrappedKey"    # [B
    .param p4, "message"    # [B

    .line 2518
    invoke-static {p0, p1, p2, p3, p4}, Landroid/media/MediaDrm;->signRSANative(Landroid/media/MediaDrm;[BLjava/lang/String;[B[B)[B

    move-result-object v0

    return-object v0
.end method
