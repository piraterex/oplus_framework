.class public Landroid/mtp/MtpDatabase;
.super Ljava/lang/Object;
.source "MtpDatabase.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final greylist-max-o AUDIO_PROPERTIES:[I

.field private static final blacklist DEBUG:Z

.field private static final greylist-max-o DEVICE_PROPERTIES:[I

.field private static final greylist-max-o FILE_PROPERTIES:[I

.field private static final greylist-max-o IMAGE_PROPERTIES:[I

.field private static final blacklist MAX_THUMB_SIZE:I = 0x32000

.field private static final greylist-max-o NO_MEDIA:Ljava/lang/String; = ".nomedia"

.field private static final greylist-max-o PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final greylist-max-o PLAYBACK_FORMATS:[I

.field private static final greylist-max-o TAG:Ljava/lang/String;

.field private static final greylist-max-o VIDEO_PROPERTIES:[I


# instance fields
.field private greylist-max-o mBatteryLevel:I

.field private greylist-max-o mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private greylist-max-o mBatteryScale:I

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDeviceProperties:Landroid/content/SharedPreferences;

.field private greylist-max-o mDeviceType:I

.field private volatile blacklist mHostIsWindows:Z

.field private blacklist mHostType:Ljava/lang/String;

.field private greylist-max-o mManager:Landroid/mtp/MtpStorageManager;

.field private final greylist-max-o mMediaProvider:Landroid/content/ContentProviderClient;

.field public blacklist mMtpExt:Landroid/mtp/IMtpDatabaseExt;

.field private greylist-max-o mNativeContext:J

.field private final blacklist mPropertyGroupsByFormat:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPropertyGroupsByProperty:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mServer:Landroid/mtp/MtpServer;

.field private blacklist mSkipThumbForHost:Z

.field private final greylist-max-o mStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBatteryLevel(Landroid/mtp/MtpDatabase;)I
    .locals 0

    iget p0, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServer(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;
    .locals 0

    iget-object p0, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBatteryLevel(Landroid/mtp/MtpDatabase;I)V
    .locals 0

    iput p1, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBatteryScale(Landroid/mtp/MtpDatabase;I)V
    .locals 0

    iput p1, p0, Landroid/mtp/MtpDatabase;->mBatteryScale:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 82
    const-class v0, Landroid/mtp/MtpDatabase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    .line 118
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/mtp/MtpDatabase;->DEBUG:Z

    .line 123
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 126
    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/mtp/MtpDatabase;->PLAYBACK_FORMATS:[I

    .line 159
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    .line 173
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    .line 189
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    .line 196
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v2, 0xdc48

    aput v2, v0, v1

    sput-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    .line 200
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/mtp/MtpDatabase;->DEVICE_PROPERTIES:[I

    return-void

    :array_0
    .array-data 4
        0x3000
        0x3001
        0x3004
        0x3005
        0x3008
        0x3009
        0x300b
        0x3801
        0x3802
        0x3804
        0x3807
        0x3808
        0x380b
        0x380d
        0xb901
        0xb902
        0xb903
        0xb982
        0xb983
        0xb984
        0xba05
        0xba10
        0xba11
        0xba14
        0xba82
        0xb906
        0x3811
        0x3812
    .end array-data

    :array_1
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc41
        0xdc0b
        0xdc44
        0xdce0
        0xdc4e
    .end array-data

    :array_2
    .array-data 4
        0xdc46
        0xdc9a
        0xdc9b
        0xdc8b
        0xdc99
        0xdc89
        0xdc8c
        0xdc96
        0xde99
        0xde92
        0xde9a
        0xde94
        0xde93
    .end array-data

    :array_3
    .array-data 4
        0xdc46
        0xdc9a
        0xdc89
        0xdc48
    .end array-data

    :array_4
    .array-data 4
        0xd401
        0xd402
        0x5003
        0x5001
        0xd407
        0xd406
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subDirectories"    # [Ljava/lang/String;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 91
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    .line 94
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Landroid/util/SparseArray;

    .line 97
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Landroid/util/SparseArray;

    .line 107
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/mtp/MtpDatabase;->mSkipThumbForHost:Z

    .line 108
    iput-boolean v1, p0, Landroid/mtp/MtpDatabase;->mHostIsWindows:Z

    .line 277
    new-instance v2, Landroid/mtp/MtpDatabase$1;

    invoke-direct {v2, p0}, Landroid/mtp/MtpDatabase$1;-><init>(Landroid/mtp/MtpDatabase;)V

    iput-object v2, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 299
    sget-object v2, Landroid/mtp/MtpDatabaseExtPlugin;->getInstance:Lcom/oplus/reflect/RefStaticMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v2, v3}, Lcom/oplus/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/IMtpDatabaseExt;

    iput-object v2, p0, Landroid/mtp/MtpDatabase;->mMtpExt:Landroid/mtp/IMtpDatabaseExt;

    .line 301
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_setup()V

    .line 302
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    .line 303
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 304
    const-string v3, "media"

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v2

    iput-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 305
    new-instance v2, Landroid/mtp/MtpStorageManager;

    new-instance v3, Landroid/mtp/MtpDatabase$2;

    invoke-direct {v3, p0}, Landroid/mtp/MtpDatabase$2;-><init>(Landroid/mtp/MtpDatabase;)V

    .line 323
    if-nez p2, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v4

    :goto_0
    invoke-direct {v2, v3, v4}, Landroid/mtp/MtpStorageManager;-><init>(Landroid/mtp/MtpStorageManager$MtpNotifier;Ljava/util/Set;)V

    iput-object v2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    .line 325
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->initDeviceProperties(Landroid/content/Context;)V

    .line 326
    const-string v2, "sys.usb.mtp.device_type"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/mtp/MtpDatabase;->mDeviceType:I

    .line 327
    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method private greylist-max-o beginCopyObject(III)I
    .locals 3
    .param p1, "handle"    # I
    .param p2, "newParent"    # I
    .param p3, "newStorage"    # I

    .line 668
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 669
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez p2, :cond_0

    .line 670
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p3}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p2}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 671
    .local v1, "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    :goto_0
    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    .line 673
    :cond_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v2, v0, v1}, Landroid/mtp/MtpStorageManager;->beginCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)I

    move-result v2

    return v2

    .line 672
    :cond_2
    :goto_1
    const/16 v2, 0x2009

    return v2
.end method

.method private greylist-max-o beginDeleteObject(I)I
    .locals 2
    .param p1, "handle"    # I

    .line 988
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 989
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v0, :cond_0

    .line 990
    const/16 v1, 0x2009

    return v1

    .line 992
    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0}, Landroid/mtp/MtpStorageManager;->beginRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 993
    const/16 v1, 0x2002

    return v1

    .line 995
    :cond_1
    const/16 v1, 0x2001

    return v1
.end method

.method private greylist-max-o beginMoveObject(III)I
    .locals 4
    .param p1, "handle"    # I
    .param p2, "newParent"    # I
    .param p3, "newStorage"    # I

    .line 625
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 626
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez p2, :cond_0

    .line 627
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p3}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p2}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 628
    .local v1, "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    :goto_0
    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_2

    .line 631
    :cond_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v2, v0, v1}, Landroid/mtp/MtpStorageManager;->beginMoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v2

    .line 632
    .local v2, "allowed":Z
    if-eqz v2, :cond_2

    const/16 v3, 0x2001

    goto :goto_1

    :cond_2
    const/16 v3, 0x2002

    :goto_1
    return v3

    .line 629
    .end local v2    # "allowed":Z
    :cond_3
    :goto_2
    const/16 v2, 0x2009

    return v2
.end method

.method private blacklist deleteFromMedia(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/nio/file/Path;Z)V
    .locals 9
    .param p1, "obj"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "path"    # Ljava/nio/file/Path;
    .param p3, "isDir"    # Z

    .line 1011
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getVolumeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1014
    .local v0, "objectsUri":Landroid/net/Uri;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 1016
    :try_start_0
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string v4, "_data LIKE ?1 AND lower(substr(_data,1,?2))=lower(?3)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 1020
    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1021
    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1016
    invoke-virtual {v3, v0, v4, v5}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1024
    :cond_0
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1025
    .local v1, "whereArgs":[Ljava/lang/String;
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string v4, "_data=?"

    invoke-virtual {v3, v0, v4, v1}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 1026
    sget-object v3, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaProvider didn\'t delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_1
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mMtpExt:Landroid/mtp/IMtpDatabaseExt;

    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2, v2}, Landroid/mtp/IMtpDatabaseExt;->rescanFile(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    .end local v1    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 1034
    :catch_0
    move-exception v1

    .line 1035
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from MediaProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private greylist-max-o endCopyObject(IZ)V
    .locals 4
    .param p1, "handle"    # I
    .param p2, "success"    # Z

    .line 678
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 679
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0, p2}, Landroid/mtp/MtpStorageManager;->endCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 683
    :cond_0
    if-nez p2, :cond_1

    .line 684
    return-void

    .line 691
    :cond_1
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mMtpExt:Landroid/mtp/IMtpDatabaseExt;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v3}, Landroid/mtp/IMtpDatabaseExt;->rescanFile(Ljava/lang/String;II)V

    .line 693
    return-void

    .line 680
    :cond_2
    :goto_0
    sget-object v1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v2, "Failed to end copy object"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    return-void
.end method

.method private greylist-max-o endDeleteObject(IZ)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "success"    # Z

    .line 1000
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 1001
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v0, :cond_0

    .line 1002
    return-void

    .line 1004
    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0, p2}, Landroid/mtp/MtpStorageManager;->endRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1005
    sget-object v1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v2, "Failed to end remove object"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_1
    if-eqz p2, :cond_2

    .line 1007
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/mtp/MtpDatabase;->deleteFromMedia(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/nio/file/Path;Z)V

    .line 1008
    :cond_2
    return-void
.end method

.method private greylist-max-o endMoveObject(IIIIIZ)V
    .locals 9
    .param p1, "oldParent"    # I
    .param p2, "newParent"    # I
    .param p3, "oldStorage"    # I
    .param p4, "newStorage"    # I
    .param p5, "objId"    # I
    .param p6, "success"    # Z

    .line 638
    if-nez p1, :cond_0

    .line 639
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p3}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 640
    .local v0, "oldParentObj":Landroid/mtp/MtpStorageManager$MtpObject;
    :goto_0
    if-nez p2, :cond_1

    .line 641
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p4}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p2}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 642
    .local v1, "newParentObj":Landroid/mtp/MtpStorageManager$MtpObject;
    :goto_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v2, p5}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    .line 643
    .local v2, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v3

    .line 644
    .local v3, "name":Ljava/lang/String;
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    .line 645
    invoke-virtual {v4, v0, v1, v3, p6}, Landroid/mtp/MtpStorageManager;->endMoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_3

    .line 649
    :cond_2
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v4, p5}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    .line 650
    if-eqz p6, :cond_4

    if-nez v2, :cond_3

    goto :goto_2

    .line 653
    :cond_3
    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    .line 654
    .local v4, "path":Ljava/nio/file/Path;
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    .line 658
    .local v5, "oldPath":Ljava/nio/file/Path;
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mMtpExt:Landroid/mtp/IMtpDatabaseExt;

    invoke-interface {v5}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8, v8}, Landroid/mtp/IMtpDatabaseExt;->rescanFile(Ljava/lang/String;II)V

    .line 659
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mMtpExt:Landroid/mtp/IMtpDatabaseExt;

    invoke-interface {v4}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v8, v8}, Landroid/mtp/IMtpDatabaseExt;->rescanFile(Ljava/lang/String;II)V

    .line 664
    return-void

    .line 651
    .end local v4    # "path":Ljava/nio/file/Path;
    .end local v5    # "oldPath":Ljava/nio/file/Path;
    :cond_4
    :goto_2
    return-void

    .line 646
    :cond_5
    :goto_3
    sget-object v4, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v5, "Failed to end move object"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    return-void
.end method

.method private greylist-max-o endSendObject(IZ)V
    .locals 4
    .param p1, "handle"    # I
    .param p2, "succeeded"    # Z

    .line 451
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 452
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0, p2}, Landroid/mtp/MtpStorageManager;->endSendObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 457
    :cond_0
    if-eqz p2, :cond_1

    .line 462
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mMtpExt:Landroid/mtp/IMtpDatabaseExt;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v3}, Landroid/mtp/IMtpDatabaseExt;->rescanFile(Ljava/lang/String;II)V

    .line 465
    :cond_1
    return-void

    .line 453
    :cond_2
    :goto_0
    sget-object v1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v2, "Failed to successfully end send object"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-void
.end method

.method private greylist-max-o getDeviceProperty(I[J[C)I
    .locals 7
    .param p1, "property"    # I
    .param p2, "outIntValue"    # [J
    .param p3, "outStringValue"    # [C

    .line 723
    const/16 v0, 0xff

    const/16 v1, 0x2001

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 771
    const/16 v0, 0x200a

    return v0

    .line 764
    :sswitch_0
    iget v0, p0, Landroid/mtp/MtpDatabase;->mDeviceType:I

    int-to-long v3, v0

    aput-wide v3, p2, v2

    .line 765
    return v1

    .line 744
    :sswitch_1
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mHostType:Ljava/lang/String;

    .line 745
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 746
    .local v4, "length":I
    if-le v4, v0, :cond_0

    .line 747
    const/16 v4, 0xff

    .line 749
    :cond_0
    invoke-virtual {v3, v2, v4, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 750
    aput-char v2, p3, v4

    .line 751
    return v1

    .line 727
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "length":I
    :sswitch_2
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 728
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 729
    .restart local v4    # "length":I
    if-le v4, v0, :cond_1

    .line 730
    const/16 v4, 0xff

    .line 732
    :cond_1
    invoke-virtual {v3, v2, v4, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 733
    aput-char v2, p3, v4

    .line 737
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMtpExt:Landroid/mtp/IMtpDatabaseExt;

    invoke-interface {v0, v4, p1, p3}, Landroid/mtp/IMtpDatabaseExt;->getMtpDeviceProperty(II[C)Z

    .line 738
    return v1

    .line 755
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "length":I
    :sswitch_3
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 756
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 757
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v3

    .line 758
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v4

    .line 759
    .local v4, "height":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 760
    .local v5, "imageSize":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v2, v6, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 761
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    aput-char v2, p3, v6

    .line 762
    return v1

    .line 767
    .end local v0    # "display":Landroid/view/Display;
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "imageSize":Ljava/lang/String;
    :sswitch_4
    iget v0, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    int-to-long v3, v0

    aput-wide v3, p2, v2

    .line 768
    const/4 v0, 0x1

    iget v2, p0, Landroid/mtp/MtpDatabase;->mBatteryScale:I

    int-to-long v2, v2

    aput-wide v2, p2, v0

    .line 769
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x5001 -> :sswitch_4
        0x5003 -> :sswitch_3
        0xd401 -> :sswitch_2
        0xd402 -> :sswitch_2
        0xd406 -> :sswitch_1
        0xd407 -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o getObjectFilePath(I[C[J)I
    .locals 6
    .param p1, "handle"    # I
    .param p2, "outFilePath"    # [C
    .param p3, "outFileLengthFormat"    # [J

    .line 822
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 823
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v0, :cond_0

    .line 824
    const/16 v1, 0x2009

    return v1

    .line 827
    :cond_0
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    .line 828
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1000

    invoke-static {v2, v3}, Ljava/lang/Integer;->min(II)I

    move-result v2

    .line 829
    .local v2, "pathLen":I
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, p2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 830
    aput-char v3, p2, v2

    .line 832
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v4

    aput-wide v4, p3, v3

    .line 833
    const/4 v3, 0x1

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v4

    int-to-long v4, v4

    aput-wide v4, p3, v3

    .line 834
    const/16 v3, 0x2001

    return v3
.end method

.method private greylist-max-o getObjectFormat(I)I
    .locals 2
    .param p1, "handle"    # I

    .line 866
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 867
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v0, :cond_0

    .line 868
    const/4 v1, -0x1

    return v1

    .line 870
    :cond_0
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v1

    return v1
.end method

.method private greylist-max-o getObjectInfo(I[I[C[J)Z
    .locals 6
    .param p1, "handle"    # I
    .param p2, "outStorageFormatParent"    # [I
    .param p3, "outName"    # [C
    .param p4, "outCreatedModified"    # [J

    .line 803
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 804
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 805
    return v1

    .line 807
    :cond_0
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v2

    aput v2, p2, v1

    .line 808
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v2

    const/4 v3, 0x1

    aput v2, p2, v3

    .line 809
    const/4 v2, 0x2

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v4

    :goto_0
    aput v4, p2, v2

    .line 811
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xff

    invoke-static {v2, v4}, Ljava/lang/Integer;->min(II)I

    move-result v2

    .line 812
    .local v2, "nameLen":I
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v2, p3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 813
    aput-char v1, p3, v2

    .line 815
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v4

    aput-wide v4, p4, v1

    .line 816
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v4

    aput-wide v4, p4, v3

    .line 817
    return v3
.end method

.method private greylist-max-o getObjectList(III)[I
    .locals 4
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I

    .line 474
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p3, p2, p1}, Landroid/mtp/MtpStorageManager;->getObjects(III)Ljava/util/List;

    move-result-object v0

    .line 476
    .local v0, "objs":Ljava/util/List;, "Ljava/util/List<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    if-nez v0, :cond_0

    .line 477
    const/4 v1, 0x0

    return-object v1

    .line 479
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 480
    .local v1, "ret":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 481
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v3

    aput v3, v1, v2

    .line 480
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 483
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public static blacklist getObjectPropertiesUri(ILjava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "format"    # I
    .param p1, "volumeName"    # Ljava/lang/String;

    .line 238
    sparse-switch p0, :sswitch_data_0

    .line 257
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 255
    :sswitch_0
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 248
    :sswitch_1
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 244
    :sswitch_2
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3008 -> :sswitch_2
        0x3009 -> :sswitch_2
        0x300b -> :sswitch_1
        0x3801 -> :sswitch_0
        0x3804 -> :sswitch_0
        0x3807 -> :sswitch_0
        0x380b -> :sswitch_0
        0x3811 -> :sswitch_0
        0x3812 -> :sswitch_0
        0xb901 -> :sswitch_2
        0xb902 -> :sswitch_2
        0xb903 -> :sswitch_2
        0xb981 -> :sswitch_1
        0xb984 -> :sswitch_1
    .end sparse-switch
.end method

.method private greylist-max-o getObjectPropertyList(IIIII)Landroid/mtp/MtpPropertyList;
    .locals 16
    .param p1, "handle"    # I
    .param p2, "format"    # I
    .param p3, "property"    # I
    .param p4, "groupCode"    # I
    .param p5, "depth"    # I

    .line 501
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    if-nez v3, :cond_1

    .line 502
    if-nez p4, :cond_0

    .line 503
    new-instance v4, Landroid/mtp/MtpPropertyList;

    const/16 v5, 0x2006

    invoke-direct {v4, v5}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v4

    .line 505
    :cond_0
    new-instance v4, Landroid/mtp/MtpPropertyList;

    const v5, 0xa807

    invoke-direct {v4, v5}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v4

    .line 507
    :cond_1
    const/4 v4, -0x1

    move/from16 v5, p5

    if-ne v5, v4, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v4, :cond_3

    .line 509
    :cond_2
    const/4 v1, -0x1

    .line 510
    .end local p1    # "handle":I
    .local v1, "handle":I
    const/4 v5, 0x0

    .line 512
    .end local p5    # "depth":I
    .local v5, "depth":I
    :cond_3
    const/4 v6, 0x1

    if-eqz v5, :cond_4

    if-eq v5, v6, :cond_4

    .line 515
    new-instance v4, Landroid/mtp/MtpPropertyList;

    const v6, 0xa808

    invoke-direct {v4, v6}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v4

    .line 517
    :cond_4
    const/4 v7, 0x0

    .line 518
    .local v7, "objs":Ljava/util/List;, "Ljava/util/List<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    const/4 v8, 0x0

    .line 519
    .local v8, "thisObj":Landroid/mtp/MtpStorageManager$MtpObject;
    const/4 v9, 0x0

    const/16 v10, 0x2009

    if-ne v1, v4, :cond_5

    .line 521
    iget-object v11, v0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v11, v9, v2, v4}, Landroid/mtp/MtpStorageManager;->getObjects(III)Ljava/util/List;

    move-result-object v7

    .line 522
    if-nez v7, :cond_8

    .line 523
    new-instance v4, Landroid/mtp/MtpPropertyList;

    invoke-direct {v4, v10}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v4

    .line 525
    :cond_5
    if-eqz v1, :cond_8

    .line 527
    iget-object v11, v0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v11, v1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v11

    .line 528
    .local v11, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v11, :cond_6

    .line 529
    new-instance v4, Landroid/mtp/MtpPropertyList;

    invoke-direct {v4, v10}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v4

    .line 531
    :cond_6
    invoke-virtual {v11}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v12

    if-eq v12, v2, :cond_7

    if-nez v2, :cond_8

    .line 532
    :cond_7
    move-object v8, v11

    .line 535
    .end local v11    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    :cond_8
    if-eqz v1, :cond_9

    if-ne v5, v6, :cond_b

    .line 536
    :cond_9
    if-nez v1, :cond_a

    .line 537
    const/4 v1, -0x1

    .line 540
    :cond_a
    iget-object v11, v0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v11, v1, v2, v4}, Landroid/mtp/MtpStorageManager;->getObjects(III)Ljava/util/List;

    move-result-object v7

    .line 542
    if-nez v7, :cond_b

    .line 543
    new-instance v4, Landroid/mtp/MtpPropertyList;

    invoke-direct {v4, v10}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v4

    .line 546
    :cond_b
    if-nez v7, :cond_c

    .line 547
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v10

    .line 549
    :cond_c
    if-eqz v8, :cond_d

    .line 550
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    :cond_d
    new-instance v10, Landroid/mtp/MtpPropertyList;

    const/16 v11, 0x2001

    invoke-direct {v10, v11}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    .line 555
    .local v10, "ret":Landroid/mtp/MtpPropertyList;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local p2    # "format":I
    .local v2, "format":I
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 556
    .local v13, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-ne v3, v4, :cond_f

    .line 557
    if-nez v2, :cond_e

    if-eqz v1, :cond_e

    if-eq v1, v4, :cond_e

    .line 559
    invoke-virtual {v13}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v2

    .line 563
    :cond_e
    iget-object v14, v0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Landroid/util/SparseArray;

    invoke-virtual {v14, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/mtp/MtpPropertyGroup;

    .line 564
    .local v14, "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    if-nez v14, :cond_10

    .line 565
    invoke-direct {v0, v2}, Landroid/mtp/MtpDatabase;->getSupportedObjectProperties(I)[I

    move-result-object v15

    .line 566
    .local v15, "propertyList":[I
    new-instance v4, Landroid/mtp/MtpPropertyGroup;

    invoke-direct {v4, v15}, Landroid/mtp/MtpPropertyGroup;-><init>([I)V

    move-object v14, v4

    .line 567
    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 568
    .end local v15    # "propertyList":[I
    goto :goto_1

    .line 571
    .end local v14    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    :cond_f
    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Landroid/mtp/MtpPropertyGroup;

    .line 572
    .restart local v14    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    if-nez v14, :cond_10

    .line 573
    new-array v4, v6, [I

    aput v3, v4, v9

    .line 574
    .local v4, "propertyList":[I
    new-instance v15, Landroid/mtp/MtpPropertyGroup;

    invoke-direct {v15, v4}, Landroid/mtp/MtpPropertyGroup;-><init>([I)V

    move-object v14, v15

    .line 575
    iget-object v15, v0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Landroid/util/SparseArray;

    invoke-virtual {v15, v3, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 578
    .end local v4    # "propertyList":[I
    :cond_10
    :goto_1
    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v13}, Landroid/mtp/MtpStorageManager$MtpObject;->getVolumeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v4, v15, v13, v10}, Landroid/mtp/MtpPropertyGroup;->getPropertyList(Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpPropertyList;)I

    move-result v4

    .line 579
    .local v4, "err":I
    if-eq v4, v11, :cond_11

    .line 580
    new-instance v6, Landroid/mtp/MtpPropertyList;

    invoke-direct {v6, v4}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v6

    .line 582
    .end local v4    # "err":I
    .end local v13    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    :cond_11
    const/4 v4, -0x1

    goto :goto_0

    .line 583
    .end local v14    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    :cond_12
    return-object v10
.end method

.method private greylist-max-o getObjectReferences(I)[I
    .locals 1
    .param p1, "handle"    # I

    .line 1041
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o getSupportedCaptureFormats()[I
    .locals 1

    .line 274
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o getSupportedDeviceProperties()[I
    .locals 1

    .line 263
    sget-object v0, Landroid/mtp/MtpDatabase;->DEVICE_PROPERTIES:[I

    return-object v0
.end method

.method private greylist-max-o getSupportedObjectProperties(I)[I
    .locals 2
    .param p1, "format"    # I

    .line 211
    sparse-switch p1, :sswitch_data_0

    .line 233
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    return-object v0

    .line 230
    :sswitch_0
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    sget-object v1, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    .line 231
    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 230
    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->concat(Ljava/util/stream/IntStream;Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 231
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 230
    return-object v0

    .line 222
    :sswitch_1
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    sget-object v1, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    .line 223
    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 222
    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->concat(Ljava/util/stream/IntStream;Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 223
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 222
    return-object v0

    .line 217
    :sswitch_2
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    sget-object v1, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    .line 218
    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 217
    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->concat(Ljava/util/stream/IntStream;Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 218
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 217
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3008 -> :sswitch_2
        0x3009 -> :sswitch_2
        0x300b -> :sswitch_1
        0x3801 -> :sswitch_0
        0x3804 -> :sswitch_0
        0x3807 -> :sswitch_0
        0x380b -> :sswitch_0
        0x3811 -> :sswitch_0
        0x3812 -> :sswitch_0
        0xb901 -> :sswitch_2
        0xb902 -> :sswitch_2
        0xb903 -> :sswitch_2
        0xb981 -> :sswitch_1
        0xb984 -> :sswitch_1
    .end sparse-switch
.end method

.method private greylist-max-o getSupportedPlaybackFormats()[I
    .locals 1

    .line 268
    sget-object v0, Landroid/mtp/MtpDatabase;->PLAYBACK_FORMATS:[I

    return-object v0
.end method

.method private blacklist getThumbnailProcess(Ljava/lang/String;Landroid/graphics/Bitmap;)[B
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 875
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 876
    :try_start_0
    sget-object v1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v2, "getThumbnailProcess: Fail to generate thumbnail. Probably unsupported or corrupted image"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    return-object v0

    .line 880
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 881
    .local v1, "byteStream":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p2, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 883
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    const v3, 0x32000

    if-le v2, v3, :cond_1

    .line 884
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getThumbnailProcess: size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    return-object v0

    .line 888
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    .local v0, "byteArray":[B
    return-object v0

    .line 891
    .end local v0    # "byteArray":[B
    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v1

    .line 892
    .local v1, "oomEx":Ljava/lang/OutOfMemoryError;
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OutOfMemoryError:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    .end local v1    # "oomEx":Ljava/lang/OutOfMemoryError;
    return-object v0
.end method

.method private greylist-max-o initDeviceProperties(Landroid/content/Context;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .line 398
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "device-properties"

    .line 399
    .local v3, "devicePropertiesName":Ljava/lang/String;
    const-string v4, "device-properties"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v1, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    .line 401
    invoke-virtual {v2, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 403
    .local v6, "databaseFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 406
    const/4 v7, 0x0

    .line 407
    .local v7, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 409
    .local v8, "c":Landroid/database/Cursor;
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v2, v4, v5, v0}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v7, v0

    .line 410
    if-eqz v7, :cond_1

    .line 411
    const-string v10, "properties"

    const-string v0, "_id"

    const-string v9, "code"

    const-string/jumbo v11, "value"

    filled-new-array {v0, v9, v11}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v7

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 413
    if-eqz v8, :cond_1

    .line 414
    iget-object v0, v1, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 415
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 416
    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 417
    .local v9, "name":Ljava/lang/String;
    const/4 v10, 0x2

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 418
    .local v10, "value":Ljava/lang/String;
    invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 419
    nop

    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    goto :goto_0

    .line 420
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    .end local v0    # "e":Landroid/content/SharedPreferences$Editor;
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 427
    :cond_2
    if-eqz v7, :cond_4

    :goto_1
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .line 426
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v9, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v10, "failed to migrate device properties"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 427
    :cond_3
    if-eqz v7, :cond_4

    goto :goto_1

    .line 429
    :cond_4
    :goto_2
    invoke-virtual {v2, v4}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    goto :goto_4

    .line 426
    :goto_3
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 427
    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 428
    :cond_6
    throw v0

    .line 431
    .end local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_7
    :goto_4
    const-string v0, ""

    iput-object v0, v1, Landroid/mtp/MtpDatabase;->mHostType:Ljava/lang/String;

    .line 432
    iput-boolean v5, v1, Landroid/mtp/MtpDatabase;->mSkipThumbForHost:Z

    .line 433
    iput-boolean v5, v1, Landroid/mtp/MtpDatabase;->mHostIsWindows:Z

    .line 434
    return-void
.end method

.method private final native greylist-max-o native_finalize()V
.end method

.method private final native greylist-max-o native_setup()V
.end method

.method private blacklist openFilePath(Ljava/lang/String;Z)I
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "transcode"    # Z

    .line 839
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 840
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 841
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to obtain URI for openFile with transcode support: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    return v1

    .line 846
    :cond_0
    :try_start_0
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openFile with transcode support: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "video/hevc"

    const-string v4, "android.provider.extra.MEDIA_CAPABILITIES"

    if-eqz p2, :cond_1

    .line 849
    :try_start_1
    new-instance v5, Landroid/media/ApplicationMediaCapabilities$Builder;

    invoke-direct {v5}, Landroid/media/ApplicationMediaCapabilities$Builder;-><init>()V

    .line 850
    invoke-virtual {v5, v3}, Landroid/media/ApplicationMediaCapabilities$Builder;->addUnsupportedVideoMimeType(Ljava/lang/String;)Landroid/media/ApplicationMediaCapabilities$Builder;

    move-result-object v3

    .line 851
    invoke-virtual {v3}, Landroid/media/ApplicationMediaCapabilities$Builder;->build()Landroid/media/ApplicationMediaCapabilities;

    move-result-object v3

    .line 849
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 853
    :cond_1
    new-instance v5, Landroid/media/ApplicationMediaCapabilities$Builder;

    invoke-direct {v5}, Landroid/media/ApplicationMediaCapabilities$Builder;-><init>()V

    .line 854
    invoke-virtual {v5, v3}, Landroid/media/ApplicationMediaCapabilities$Builder;->addSupportedVideoMimeType(Ljava/lang/String;)Landroid/media/ApplicationMediaCapabilities$Builder;

    move-result-object v3

    .line 855
    invoke-virtual {v3}, Landroid/media/ApplicationMediaCapabilities$Builder;->build()Landroid/media/ApplicationMediaCapabilities;

    move-result-object v3

    .line 853
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 857
    :goto_0
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string v4, "*/*"

    invoke-virtual {v3, v0, v4, v2}, Landroid/content/ContentProviderClient;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    .line 858
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 857
    return v1

    .line 859
    .end local v2    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 860
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to openFile with transcode support: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 861
    return v1
.end method

.method private greylist-max-o renameFile(ILjava/lang/String;)I
    .locals 7
    .param p1, "handle"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .line 587
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 588
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v0, :cond_0

    .line 589
    const/16 v1, 0x2009

    return v1

    .line 591
    :cond_0
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    .line 594
    .local v1, "oldPath":Ljava/nio/file/Path;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v2, v0, p2}, Landroid/mtp/MtpStorageManager;->beginRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x2002

    if-nez v2, :cond_1

    .line 595
    return v3

    .line 596
    :cond_1
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    .line 597
    .local v2, "newPath":Ljava/nio/file/Path;
    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v4

    invoke-interface {v2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    .line 599
    .local v4, "success":Z
    :try_start_0
    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v5, v6}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    .line 600
    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v5, v6}, Landroid/system/Os;->access(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    goto :goto_0

    .line 601
    :catch_0
    move-exception v5

    .line 605
    :goto_0
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-interface {v1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v6}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6, v4}, Landroid/mtp/MtpStorageManager;->endRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    .line 606
    sget-object v5, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v6, "Failed to end rename object"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_2
    if-nez v4, :cond_3

    .line 609
    return v3

    .line 614
    :cond_3
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mMtpExt:Landroid/mtp/IMtpDatabaseExt;

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6, v6}, Landroid/mtp/IMtpDatabaseExt;->rescanFile(Ljava/lang/String;II)V

    .line 615
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mMtpExt:Landroid/mtp/IMtpDatabaseExt;

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v6, v6}, Landroid/mtp/IMtpDatabaseExt;->rescanFile(Ljava/lang/String;II)V

    .line 620
    const/16 v3, 0x2001

    return v3
.end method

.method private greylist-max-o rescanFile(Ljava/lang/String;II)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "handle"    # I
    .param p3, "format"    # I

    .line 469
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    .line 470
    return-void
.end method

.method private greylist-max-o setDeviceProperty(IJLjava/lang/String;)I
    .locals 4
    .param p1, "property"    # I
    .param p2, "intValue"    # J
    .param p4, "stringValue"    # Ljava/lang/String;

    .line 777
    const/16 v0, 0x2001

    sparse-switch p1, :sswitch_data_0

    .line 797
    const/16 v0, 0x200a

    return v0

    .line 786
    :sswitch_0
    iput-object p4, p0, Landroid/mtp/MtpDatabase;->mHostType:Ljava/lang/String;

    .line 787
    sget-object v1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeviceProperty."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const-string v1, "Android/"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 790
    iput-boolean v2, p0, Landroid/mtp/MtpDatabase;->mSkipThumbForHost:Z

    goto :goto_0

    .line 791
    :cond_0
    const-string v1, "Windows/"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 792
    iput-boolean v2, p0, Landroid/mtp/MtpDatabase;->mHostIsWindows:Z

    .line 794
    :cond_1
    :goto_0
    return v0

    .line 781
    :sswitch_1
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 782
    .local v1, "e":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 783
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 784
    :cond_2
    const/16 v0, 0x2002

    .line 783
    :goto_1
    return v0

    :sswitch_data_0
    .sparse-switch
        0xd401 -> :sswitch_1
        0xd402 -> :sswitch_1
        0xd406 -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o setObjectProperty(IIJLjava/lang/String;)I
    .locals 1
    .param p1, "handle"    # I
    .param p2, "property"    # I
    .param p3, "intValue"    # J
    .param p5, "stringValue"    # Ljava/lang/String;

    .line 709
    packed-switch p2, :pswitch_data_0

    .line 714
    const v0, 0xa80a

    return v0

    .line 711
    :pswitch_0
    invoke-direct {p0, p1, p5}, Landroid/mtp/MtpDatabase;->renameFile(ILjava/lang/String;)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0xdc07
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o setObjectReferences(I[I)I
    .locals 1
    .param p1, "handle"    # I
    .param p2, "references"    # [I

    .line 1046
    const/16 v0, 0x2005

    return v0
.end method

.method private static blacklist updateMediaStore(Landroid/content/Context;Ljava/io/File;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .line 696
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 699
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    goto :goto_0

    .line 702
    :cond_0
    invoke-static {v0, p1}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    .line 704
    :goto_0
    return-void
.end method


# virtual methods
.method public greylist-max-o addStorage(Landroid/os/storage/StorageVolume;)V
    .locals 3
    .param p1, "storage"    # Landroid/os/storage/StorageVolume;

    .line 378
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    new-instance v1, Landroid/mtp/MtpDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/mtp/MtpDatabase$$ExternalSyntheticLambda0;-><init>(Landroid/mtp/MtpDatabase;)V

    invoke-virtual {v0, p1, v1}, Landroid/mtp/MtpStorageManager;->addMtpStorage(Landroid/os/storage/StorageVolume;Ljava/util/function/Supplier;)Landroid/mtp/MtpStorage;

    move-result-object v0

    .line 379
    .local v0, "mtpStorage":Landroid/mtp/MtpStorage;
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    if-eqz v1, :cond_0

    .line 381
    invoke-virtual {v1, v0}, Landroid/mtp/MtpServer;->addStorage(Landroid/mtp/MtpStorage;)V

    .line 383
    :cond_0
    return-void
.end method

.method public greylist-max-o beginSendObject(Ljava/lang/String;III)I
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "format"    # I
    .param p3, "parent"    # I
    .param p4, "storageId"    # I

    .line 440
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    if-nez p3, :cond_0

    invoke-virtual {v0, p4}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p3}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 441
    .local v0, "parentObj":Landroid/mtp/MtpStorageManager$MtpObject;
    :goto_0
    if-nez v0, :cond_1

    .line 442
    const/4 v1, -0x1

    return v1

    .line 445
    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 446
    .local v1, "objPath":Ljava/nio/file/Path;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-interface {v1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3, p2}, Landroid/mtp/MtpStorageManager;->beginSendObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public whitelist test-api close()V
    .locals 3

    .line 351
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager;->close()V

    .line 352
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 353
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 357
    :cond_0
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_finalize()V

    .line 359
    :cond_1
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 364
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 367
    :cond_0
    invoke-virtual {p0}, Landroid/mtp/MtpDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 370
    nop

    .line 373
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMtpExt:Landroid/mtp/IMtpDatabaseExt;

    invoke-interface {v0}, Landroid/mtp/IMtpDatabaseExt;->quitSafely()V

    .line 375
    return-void

    .line 369
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 370
    throw v0
.end method

.method public blacklist getContext()Landroid/content/Context;
    .locals 1

    .line 346
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public greylist-max-o getNumObjects(III)I
    .locals 2
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I

    .line 489
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p3, p2, p1}, Landroid/mtp/MtpStorageManager;->getObjects(III)Ljava/util/List;

    move-result-object v0

    .line 491
    .local v0, "objs":Ljava/util/List;, "Ljava/util/List<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    if-nez v0, :cond_0

    .line 492
    const/4 v1, -0x1

    return v1

    .line 494
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    return v1
.end method

.method public blacklist getThumbnailData(I)[B
    .locals 5
    .param p1, "handle"    # I

    .line 949
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 950
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 951
    return-object v1

    .line 954
    :cond_0
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    .line 955
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 983
    return-object v1

    .line 960
    :sswitch_0
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 962
    .local v1, "exif":Landroid/media/ExifInterface;
    iget-boolean v3, p0, Landroid/mtp/MtpDatabase;->mSkipThumbForHost:Z

    if-eqz v3, :cond_1

    .line 963
    sget-object v3, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v4, "getThumbnailData: Skip runtime thumbnail."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    invoke-virtual {v1}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v3

    return-object v3

    .line 966
    :cond_1
    invoke-virtual {v1}, Landroid/media/ExifInterface;->getThumbnailRange()[J

    move-result-object v3

    if-eqz v3, :cond_2

    .line 967
    invoke-virtual {v1}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 970
    .end local v1    # "exif":Landroid/media/ExifInterface;
    :cond_2
    goto :goto_0

    .line 968
    :catch_0
    move-exception v1

    .line 977
    :goto_0
    :sswitch_1
    const/4 v1, 0x1

    invoke-static {v2, v1}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 978
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v2, v1}, Landroid/mtp/MtpDatabase;->getThumbnailProcess(Ljava/lang/String;Landroid/graphics/Bitmap;)[B

    move-result-object v3

    .line 980
    .local v3, "byteArray":[B
    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x3801 -> :sswitch_0
        0x3804 -> :sswitch_1
        0x3807 -> :sswitch_1
        0x3808 -> :sswitch_0
        0x380b -> :sswitch_1
        0x3812 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist getThumbnailInfo(I[J)Z
    .locals 12
    .param p1, "handle"    # I
    .param p2, "outLongs"    # [J

    .line 900
    const-string v0, ","

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 901
    .local v1, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 902
    return v2

    .line 905
    :cond_0
    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    .line 906
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v4, :sswitch_data_0

    .line 943
    return v2

    .line 911
    :sswitch_0
    :try_start_0
    new-instance v4, Landroid/media/ExifInterface;

    invoke-direct {v4, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 912
    .local v4, "exif":Landroid/media/ExifInterface;
    invoke-virtual {v4}, Landroid/media/ExifInterface;->getThumbnailRange()[J

    move-result-object v7

    .line 913
    .local v7, "thumbOffsetAndSize":[J
    const-wide/16 v8, 0x0

    if-eqz v7, :cond_1

    aget-wide v10, v7, v6

    goto :goto_0

    :cond_1
    move-wide v10, v8

    :goto_0
    aput-wide v10, p2, v2

    .line 914
    const-string v10, "PixelXDimension"

    invoke-virtual {v4, v10, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v10

    int-to-long v10, v10

    aput-wide v10, p2, v6

    .line 915
    const-string v10, "PixelYDimension"

    invoke-virtual {v4, v10, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v10

    int-to-long v10, v10

    aput-wide v10, p2, v5

    .line 916
    iget-boolean v10, p0, Landroid/mtp/MtpDatabase;->mSkipThumbForHost:Z

    if-eqz v10, :cond_2

    .line 917
    sget-object v0, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v8, "getThumbnailInfo: Skip runtime thumbnail."

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    return v6

    .line 920
    :cond_2
    invoke-virtual {v4}, Landroid/media/ExifInterface;->getThumbnailRange()[J

    move-result-object v10

    if-eqz v10, :cond_5

    .line 921
    aget-wide v10, p2, v2

    cmp-long v10, v10, v8

    if-eqz v10, :cond_3

    aget-wide v10, p2, v6

    cmp-long v10, v10, v8

    if-eqz v10, :cond_3

    aget-wide v10, p2, v5

    cmp-long v8, v10, v8

    if-nez v8, :cond_4

    .line 922
    :cond_3
    sget-object v8, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getThumbnailInfo: check thumb info:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-wide v10, v7, v2

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-wide v10, v7, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-wide v10, p2, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v9, p2, v5

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 927
    :cond_4
    return v6

    .line 931
    .end local v4    # "exif":Landroid/media/ExifInterface;
    .end local v7    # "thumbOffsetAndSize":[J
    :cond_5
    goto :goto_1

    .line 929
    :catch_0
    move-exception v0

    .line 937
    :goto_1
    :sswitch_1
    const-wide/32 v7, 0x32000

    aput-wide v7, p2, v2

    .line 939
    const-wide/16 v7, 0x140

    aput-wide v7, p2, v6

    .line 940
    const-wide/16 v7, 0xf0

    aput-wide v7, p2, v5

    .line 941
    return v6

    :sswitch_data_0
    .sparse-switch
        0x3801 -> :sswitch_0
        0x3804 -> :sswitch_1
        0x3807 -> :sswitch_1
        0x3808 -> :sswitch_0
        0x380b -> :sswitch_1
        0x3812 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic blacklist lambda$addStorage$0$android-mtp-MtpDatabase()Ljava/lang/Boolean;
    .locals 1

    .line 378
    iget-boolean v0, p0, Landroid/mtp/MtpDatabase;->mHostIsWindows:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o removeStorage(Landroid/os/storage/StorageVolume;)V
    .locals 3
    .param p1, "storage"    # Landroid/os/storage/StorageVolume;

    .line 386
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorage;

    .line 387
    .local v0, "mtpStorage":Landroid/mtp/MtpStorage;
    if-nez v0, :cond_0

    .line 388
    return-void

    .line 390
    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    if-eqz v1, :cond_1

    .line 391
    invoke-virtual {v1, v0}, Landroid/mtp/MtpServer;->removeStorage(Landroid/mtp/MtpStorage;)V

    .line 393
    :cond_1
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0}, Landroid/mtp/MtpStorageManager;->removeMtpStorage(Landroid/mtp/MtpStorage;)V

    .line 394
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    return-void
.end method

.method public greylist-max-o setServer(Landroid/mtp/MtpServer;)V
    .locals 4
    .param p1, "server"    # Landroid/mtp/MtpServer;

    .line 331
    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    .line 334
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 339
    :goto_0
    if-eqz p1, :cond_0

    .line 340
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 343
    :cond_0
    return-void
.end method
