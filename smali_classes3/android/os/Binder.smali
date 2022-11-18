.class public Landroid/os/Binder;
.super Ljava/lang/Object;
.source "Binder.java"

# interfaces
.implements Landroid/os/IBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Binder$PropagateWorkSourceTransactListener;,
        Landroid/os/Binder$ProxyTransactListener;,
        Landroid/os/Binder$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field public static final greylist-max-o CHECK_PARCEL_SIZE:Z = false

.field private static final greylist-max-o FIND_POTENTIAL_LEAKS:Z = false

.field public static greylist-max-o LOG_RUNTIME_EXCEPTION:Z = false

.field private static final greylist-max-o NATIVE_ALLOCATION_SIZE:I = 0xbb8

.field public static final blacklist ONETRACE_EXT:Landroid/os/IOneTraceExt;

.field private static final blacklist SEPARATOR:C = ','

.field static final greylist-max-o TAG:Ljava/lang/String; = "Binder"

.field private static final blacklist TRANSACTION_TRACE_NAME_ID_LIMIT:I = 0x400

.field private static final blacklist TYPE_BLOCK:C = '0'

.field private static final blacklist TYPE_ONEWAY:C = '1'

.field public static final blacklist UNSET_WORKSOURCE:I = -0x1

.field private static volatile greylist-max-o sDumpDisabled:Ljava/lang/String;

.field private static volatile blacklist sHeavyHitterWatcher:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

.field private static blacklist sObserver:Lcom/android/internal/os/BinderInternal$Observer;

.field private static volatile blacklist sStackTrackingEnabled:Z

.field private static volatile blacklist sTracingUidsImmutable:Landroid/util/IntArray;

.field private static final blacklist sTracingUidsWriteLock:Ljava/lang/Object;

.field private static volatile greylist-max-o sTransactionTracker:Landroid/os/TransactionTracker;

.field static volatile greylist-max-o sWarnOnBlocking:Z

.field static blacklist sWarnOnBlockingOnCurrentThread:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist sWorkSourceProvider:Lcom/android/internal/os/BinderInternal$WorkSourceProvider;


# instance fields
.field private blacklist mCachedDescriptor:Ljava/lang/String;

.field private greylist-max-o mDescriptor:Ljava/lang/String;

.field private final greylist mObject:J

.field private greylist-max-o mOwner:Landroid/os/IInterface;

.field private volatile blacklist mSimpleDescriptor:Ljava/lang/String;

.field private volatile blacklist mTransactionTraceNames:[Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetNativeFinalizer()J
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 96
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/Binder;->LOG_RUNTIME_EXCEPTION:Z

    .line 110
    const-class v1, Landroid/os/IOneTraceExt;

    invoke-static {v1}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IOneTraceExt;

    sput-object v1, Landroid/os/Binder;->ONETRACE_EXT:Landroid/os/IOneTraceExt;

    .line 120
    const/4 v1, 0x0

    sput-object v1, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    .line 125
    sput-object v1, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;

    .line 130
    sput-object v1, Landroid/os/Binder;->sObserver:Lcom/android/internal/os/BinderInternal$Observer;

    .line 162
    sput-object v1, Landroid/os/Binder;->sHeavyHitterWatcher:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    .line 169
    sput-boolean v0, Landroid/os/Binder;->sStackTrackingEnabled:Z

    .line 171
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/os/Binder;->sTracingUidsWriteLock:Ljava/lang/Object;

    .line 172
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    sput-object v1, Landroid/os/Binder;->sTracingUidsImmutable:Landroid/util/IntArray;

    .line 241
    sput-boolean v0, Landroid/os/Binder;->sWarnOnBlocking:Z

    .line 306
    new-instance v0, Landroid/os/Binder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/os/Binder$$ExternalSyntheticLambda0;-><init>()V

    .line 307
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Landroid/os/Binder;->sWarnOnBlockingOnCurrentThread:Ljava/lang/ThreadLocal;

    .line 1236
    new-instance v0, Landroid/os/Binder$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/os/Binder$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroid/os/Binder;->sWorkSourceProvider:Lcom/android/internal/os/BinderInternal$WorkSourceProvider;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 665
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 666
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Binder;->mTransactionTraceNames:[Ljava/lang/String;

    .line 341
    iput-object v0, p0, Landroid/os/Binder;->mSimpleDescriptor:Ljava/lang/String;

    .line 681
    invoke-static {}, Landroid/os/Binder;->getNativeBBinderHolder()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/Binder;->mObject:J

    .line 682
    sget-object v2, Landroid/os/Binder$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 692
    iput-object p1, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    .line 693
    return-void
.end method

.method public static greylist-max-o allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 3
    .param p0, "binder"    # Landroid/os/IBinder;

    .line 270
    :try_start_0
    instance-of v0, p0, Landroid/os/BinderProxy;

    if-eqz v0, :cond_0

    .line 271
    move-object v0, p0

    check-cast v0, Landroid/os/BinderProxy;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    goto :goto_0

    .line 272
    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 273
    invoke-interface {p0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 274
    const-string v0, "Binder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to allow blocking on interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :cond_1
    :goto_0
    goto :goto_1

    .line 276
    :catch_0
    move-exception v0

    .line 278
    :goto_1
    return-object p0
.end method

.method public static blacklist allowBlockingForCurrentThread()V
    .locals 2

    .line 317
    sget-object v0, Landroid/os/Binder;->sWarnOnBlockingOnCurrentThread:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 318
    return-void
.end method

.method public static final native greylist-max-o blockUntilThreadAvailable()V
.end method

.method static greylist-max-o checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V
    .locals 0
    .param p0, "obj"    # Landroid/os/IBinder;
    .param p1, "code"    # I
    .param p2, "parcel"    # Landroid/os/Parcel;
    .param p3, "msg"    # Ljava/lang/String;

    .line 1229
    return-void
.end method

.method public static final native whitelist clearCallingIdentity()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final native whitelist clearCallingWorkSource()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static greylist-max-o copyAllowBlocking(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2
    .param p0, "fromBinder"    # Landroid/os/IBinder;
    .param p1, "toBinder"    # Landroid/os/IBinder;

    .line 301
    instance-of v0, p0, Landroid/os/BinderProxy;

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/os/BinderProxy;

    if-eqz v0, :cond_0

    .line 302
    move-object v0, p1

    check-cast v0, Landroid/os/BinderProxy;

    move-object v1, p0

    check-cast v1, Landroid/os/BinderProxy;

    iget-boolean v1, v1, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    iput-boolean v1, v0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    .line 304
    :cond_0
    return-void
.end method

.method public static greylist-max-o defaultBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 2
    .param p0, "binder"    # Landroid/os/IBinder;

    .line 288
    instance-of v0, p0, Landroid/os/BinderProxy;

    if-eqz v0, :cond_0

    .line 289
    move-object v0, p0

    check-cast v0, Landroid/os/BinderProxy;

    sget-boolean v1, Landroid/os/Binder;->sWarnOnBlocking:Z

    iput-boolean v1, v0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    .line 291
    :cond_0
    return-object p0
.end method

.method public static blacklist defaultBlockingForCurrentThread()V
    .locals 2

    .line 328
    sget-object v0, Landroid/os/Binder;->sWarnOnBlockingOnCurrentThread:Ljava/lang/ThreadLocal;

    sget-boolean v1, Landroid/os/Binder;->sWarnOnBlocking:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 329
    return-void
.end method

.method public static blacklist disableStackTracking()V
    .locals 1

    .line 190
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/Binder;->sStackTrackingEnabled:Z

    .line 191
    return-void
.end method

.method public static blacklist enableStackTracking()V
    .locals 1

    .line 181
    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/Binder;->sStackTrackingEnabled:Z

    .line 182
    return-void
.end method

.method public static blacklist enableTracingForUid(I)V
    .locals 2
    .param p0, "uid"    # I

    .line 197
    sget-object v0, Landroid/os/Binder;->sTracingUidsWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    sget-object v1, Landroid/os/Binder;->sTracingUidsImmutable:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->clone()Landroid/util/IntArray;

    move-result-object v1

    .line 199
    .local v1, "copy":Landroid/util/IntArray;
    invoke-virtual {v1, p0}, Landroid/util/IntArray;->add(I)V

    .line 200
    sput-object v1, Landroid/os/Binder;->sTracingUidsImmutable:Landroid/util/IntArray;

    .line 201
    .end local v1    # "copy":Landroid/util/IntArray;
    monitor-exit v0

    .line 202
    return-void

    .line 201
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist execTransact(IJJI)Z
    .locals 12
    .param p1, "code"    # I
    .param p2, "dataObj"    # J
    .param p4, "replyObj"    # J
    .param p6, "flags"    # I

    .line 1265
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 1266
    .local v9, "callingUid":I
    invoke-static {v9}, Landroid/os/ThreadLocalWorkSource;->setUid(I)J

    move-result-wide v10

    .line 1268
    .local v10, "origWorkSource":J
    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move v8, v9

    :try_start_0
    invoke-direct/range {v1 .. v8}, Landroid/os/Binder;->execTransactInternal(IJJII)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1270
    invoke-static {v10, v11}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 1268
    return v0

    .line 1270
    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-static {v10, v11}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 1271
    throw v1
.end method

.method private blacklist execTransactInternal(IJJII)Z
    .locals 20
    .param p1, "code"    # I
    .param p2, "dataObj"    # J
    .param p4, "replyObj"    # J
    .param p6, "flags"    # I
    .param p7, "callingUid"    # I

    .line 1277
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p6

    const-string v4, "Unreasonably large binder reply buffer"

    sget-object v5, Landroid/os/Binder;->sObserver:Lcom/android/internal/os/BinderInternal$Observer;

    .line 1279
    .local v5, "observer":Lcom/android/internal/os/BinderInternal$Observer;
    if-eqz v5, :cond_0

    const/4 v0, -0x1

    invoke-interface {v5, v1, v2, v0}, Lcom/android/internal/os/BinderInternal$Observer;->callStarted(Landroid/os/Binder;II)Lcom/android/internal/os/BinderInternal$CallSession;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 1280
    .local v6, "callSession":Lcom/android/internal/os/BinderInternal$CallSession;
    invoke-static/range {p2 .. p3}, Landroid/os/Parcel;->obtain(J)Landroid/os/Parcel;

    move-result-object v7

    .line 1281
    .local v7, "data":Landroid/os/Parcel;
    invoke-static/range {p4 .. p5}, Landroid/os/Parcel;->obtain(J)Landroid/os/Parcel;

    move-result-object v8

    .line 1289
    .local v8, "reply":Landroid/os/Parcel;
    const-wide/32 v9, 0x1000000

    invoke-static {v9, v10}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    const/4 v12, 0x1

    if-eqz v0, :cond_2

    .line 1290
    invoke-static {}, Landroid/os/Binder;->isStackTrackingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static/range {p7 .. p7}, Landroid/os/Binder;->isTracingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v12

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move v13, v0

    .line 1293
    .local v13, "tracingEnabled":Z
    sget-object v0, Landroid/os/Binder;->ONETRACE_EXT:Landroid/os/IOneTraceExt;

    const-wide v14, 0x200000000L

    invoke-interface {v0, v14, v15}, Landroid/os/IOneTraceExt;->isEnable(J)Z

    move-result v16

    .line 1296
    .local v16, "onetraceEnabled":Z
    :try_start_0
    sget-object v17, Landroid/os/Binder;->sHeavyHitterWatcher:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    move-object/from16 v18, v17

    .line 1297
    .local v18, "heavyHitterWatcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    move-object/from16 v11, v18

    .end local v18    # "heavyHitterWatcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    .local v11, "heavyHitterWatcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    if-eqz v11, :cond_3

    .line 1299
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v15, p7

    :try_start_1
    invoke-virtual {v11, v15, v14, v2}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->onTransaction(ILjava/lang/Class;I)V

    goto :goto_2

    .line 1297
    :cond_3
    move/from16 v15, p7

    .line 1301
    :goto_2
    if-eqz v13, :cond_4

    .line 1302
    invoke-virtual/range {p0 .. p1}, Landroid/os/Binder;->getTransactionTraceName(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v10, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_3

    .line 1333
    .end local v11    # "heavyHitterWatcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    :catch_0
    move-exception v0

    goto/16 :goto_9

    .line 1307
    .restart local v11    # "heavyHitterWatcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    :cond_4
    :goto_3
    if-eqz v16, :cond_9

    .line 1308
    and-int/lit8 v14, v3, 0x1

    if-ne v14, v12, :cond_5

    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    .line 1309
    .local v12, "isOneWayTransaction":Z
    :goto_4
    iget-object v14, v1, Landroid/os/Binder;->mCachedDescriptor:Ljava/lang/String;

    if-nez v14, :cond_6

    .line 1310
    invoke-virtual/range {p0 .. p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v14}, Landroid/os/IOneTraceExt;->matchDescriptor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Binder;->mCachedDescriptor:Ljava/lang/String;

    .line 1312
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v14, "N<-"

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v1, Landroid/os/Binder;->mCachedDescriptor:Ljava/lang/String;

    .line 1313
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1314
    const/16 v14, 0x2c

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v12, :cond_7

    const/16 v19, 0x31

    goto :goto_5

    :cond_7
    const/16 v19, 0x30

    :goto_5
    move/from16 v9, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1315
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1316
    .local v0, "contentBuilder":Ljava/lang/StringBuilder;
    if-nez v12, :cond_8

    .line 1317
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1319
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v14, v11

    const-wide v10, 0x200000000L

    .end local v11    # "heavyHitterWatcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    .local v14, "heavyHitterWatcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    invoke-static {v10, v11, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_6

    .line 1307
    .end local v0    # "contentBuilder":Ljava/lang/StringBuilder;
    .end local v12    # "isOneWayTransaction":Z
    .end local v14    # "heavyHitterWatcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    .restart local v11    # "heavyHitterWatcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    :cond_9
    move-object v14, v11

    .line 1323
    .end local v11    # "heavyHitterWatcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    .restart local v14    # "heavyHitterWatcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    :goto_6
    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_a

    .line 1324
    invoke-static/range {p7 .. p7}, Landroid/app/AppOpsManager;->startNotedAppOpsCollection(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1326
    :try_start_2
    invoke-virtual {v1, v2, v7, v8, v3}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1328
    .local v0, "res":Z
    :try_start_3
    invoke-static {}, Landroid/app/AppOpsManager;->finishNotedAppOpsCollection()V

    .line 1329
    goto :goto_7

    .line 1328
    .end local v0    # "res":Z
    :catchall_0
    move-exception v0

    move-object v9, v0

    invoke-static {}, Landroid/app/AppOpsManager;->finishNotedAppOpsCollection()V

    .line 1329
    nop

    .end local v5    # "observer":Lcom/android/internal/os/BinderInternal$Observer;
    .end local v6    # "callSession":Lcom/android/internal/os/BinderInternal$CallSession;
    .end local v7    # "data":Landroid/os/Parcel;
    .end local v8    # "reply":Landroid/os/Parcel;
    .end local v13    # "tracingEnabled":Z
    .end local v16    # "onetraceEnabled":Z
    .end local p0    # "this":Landroid/os/Binder;
    .end local p1    # "code":I
    .end local p2    # "dataObj":J
    .end local p4    # "replyObj":J
    .end local p6    # "flags":I
    .end local p7    # "callingUid":I
    throw v9

    .line 1331
    .restart local v5    # "observer":Lcom/android/internal/os/BinderInternal$Observer;
    .restart local v6    # "callSession":Lcom/android/internal/os/BinderInternal$CallSession;
    .restart local v7    # "data":Landroid/os/Parcel;
    .restart local v8    # "reply":Landroid/os/Parcel;
    .restart local v13    # "tracingEnabled":Z
    .restart local v16    # "onetraceEnabled":Z
    .restart local p0    # "this":Landroid/os/Binder;
    .restart local p1    # "code":I
    .restart local p2    # "dataObj":J
    .restart local p4    # "replyObj":J
    .restart local p6    # "flags":I
    .restart local p7    # "callingUid":I
    :cond_a
    invoke-virtual {v1, v2, v7, v8, v3}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1354
    .end local v14    # "heavyHitterWatcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    .restart local v0    # "res":Z
    :goto_7
    if-eqz v13, :cond_b

    .line 1355
    const-wide/32 v9, 0x1000000

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1359
    :cond_b
    if-eqz v16, :cond_c

    .line 1360
    const-wide v9, 0x200000000L

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1363
    :cond_c
    if-eqz v5, :cond_d

    .line 1366
    :goto_8
    sget-object v9, Landroid/os/Binder;->sWorkSourceProvider:Lcom/android/internal/os/BinderInternal$WorkSourceProvider;

    .line 1367
    invoke-virtual {v7}, Landroid/os/Parcel;->readCallingWorkSourceUid()I

    move-result v10

    .line 1366
    invoke-interface {v9, v10}, Lcom/android/internal/os/BinderInternal$WorkSourceProvider;->resolveWorkSourceUid(I)I

    move-result v9

    .line 1368
    .local v9, "workSourceUid":I
    invoke-virtual {v7}, Landroid/os/Parcel;->dataSize()I

    move-result v10

    invoke-virtual {v8}, Landroid/os/Parcel;->dataSize()I

    move-result v11

    invoke-interface {v5, v6, v10, v11, v9}, Lcom/android/internal/os/BinderInternal$Observer;->callEnded(Lcom/android/internal/os/BinderInternal$CallSession;III)V

    .line 1371
    .end local v9    # "workSourceUid":I
    :cond_d
    invoke-static {v1, v2, v8, v4}, Landroid/os/Binder;->checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V

    .line 1372
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 1373
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 1374
    goto :goto_b

    .line 1354
    .end local v0    # "res":Z
    :catchall_1
    move-exception v0

    move/from16 v15, p7

    goto :goto_c

    .line 1333
    :catch_1
    move-exception v0

    move/from16 v15, p7

    .line 1334
    .local v0, "e":Ljava/lang/Exception;
    :goto_9
    if-eqz v5, :cond_e

    .line 1335
    :try_start_4
    invoke-interface {v5, v6, v0}, Lcom/android/internal/os/BinderInternal$Observer;->callThrewException(Lcom/android/internal/os/BinderInternal$CallSession;Ljava/lang/Exception;)V

    .line 1337
    :cond_e
    sget-boolean v9, Landroid/os/Binder;->LOG_RUNTIME_EXCEPTION:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string v10, "Caught a RuntimeException from the binder stub implementation."

    const-string v11, "Binder"

    if-eqz v9, :cond_f

    .line 1338
    :try_start_5
    invoke-static {v11, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1340
    :cond_f
    and-int/lit8 v9, v3, 0x1

    if-eqz v9, :cond_11

    .line 1341
    instance-of v9, v0, Landroid/os/RemoteException;

    if-eqz v9, :cond_10

    .line 1342
    const-string v9, "Binder call failed."

    invoke-static {v11, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 1344
    :cond_10
    invoke-static {v11, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 1348
    :cond_11
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->setDataSize(I)V

    .line 1349
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1350
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1352
    :goto_a
    const/4 v0, 0x1

    .line 1354
    .local v0, "res":Z
    if-eqz v13, :cond_12

    .line 1355
    const-wide/32 v9, 0x1000000

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1359
    :cond_12
    if-eqz v16, :cond_13

    .line 1360
    const-wide v9, 0x200000000L

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1363
    :cond_13
    if-eqz v5, :cond_d

    .line 1366
    goto :goto_8

    .line 1381
    :goto_b
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    .line 1382
    return v0

    .line 1354
    .end local v0    # "res":Z
    :catchall_2
    move-exception v0

    :goto_c
    if-eqz v13, :cond_14

    .line 1355
    const-wide/32 v9, 0x1000000

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1359
    :cond_14
    if-eqz v16, :cond_15

    .line 1360
    const-wide v9, 0x200000000L

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1363
    :cond_15
    if-eqz v5, :cond_16

    .line 1366
    sget-object v9, Landroid/os/Binder;->sWorkSourceProvider:Lcom/android/internal/os/BinderInternal$WorkSourceProvider;

    .line 1367
    invoke-virtual {v7}, Landroid/os/Parcel;->readCallingWorkSourceUid()I

    move-result v10

    .line 1366
    invoke-interface {v9, v10}, Lcom/android/internal/os/BinderInternal$WorkSourceProvider;->resolveWorkSourceUid(I)I

    move-result v9

    .line 1368
    .restart local v9    # "workSourceUid":I
    invoke-virtual {v7}, Landroid/os/Parcel;->dataSize()I

    move-result v10

    invoke-virtual {v8}, Landroid/os/Parcel;->dataSize()I

    move-result v11

    invoke-interface {v5, v6, v10, v11, v9}, Lcom/android/internal/os/BinderInternal$Observer;->callEnded(Lcom/android/internal/os/BinderInternal$CallSession;III)V

    .line 1371
    .end local v9    # "workSourceUid":I
    :cond_16
    invoke-static {v1, v2, v8, v4}, Landroid/os/Binder;->checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V

    .line 1372
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 1373
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 1374
    throw v0
.end method

.method public static final native whitelist flushPendingCommands()V
.end method

.method public static final native whitelist getCallingPid()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final native whitelist getCallingUid()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final whitelist getCallingUidOrThrow()I
    .locals 2

    .line 383
    invoke-static {}, Landroid/os/Binder;->isDirectlyHandlingTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0

    .line 384
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Thread is not in a binder transcation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final whitelist getCallingUserHandle()Landroid/os/UserHandle;
    .locals 1

    .line 401
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public static final native whitelist getCallingWorkSourceUid()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o getNativeBBinderHolder()J
.end method

.method private static native greylist-max-o getNativeFinalizer()J
.end method

.method private blacklist getSimpleDescriptor()Ljava/lang/String;
    .locals 3

    .line 969
    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    .line 970
    .local v0, "descriptor":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 972
    const-string v1, "Binder"

    return-object v1

    .line 975
    :cond_0
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 976
    .local v1, "dot":I
    if-lez v1, :cond_1

    .line 978
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 980
    :cond_1
    return-object v0
.end method

.method public static final native greylist-max-o getThreadStrictModePolicy()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static declared-synchronized greylist-max-o getTransactionTracker()Landroid/os/TransactionTracker;
    .locals 2

    const-class v0, Landroid/os/Binder;

    monitor-enter v0

    .line 226
    :try_start_0
    sget-object v1, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;

    if-nez v1, :cond_0

    .line 227
    new-instance v1, Landroid/os/TransactionTracker;

    invoke-direct {v1}, Landroid/os/TransactionTracker;-><init>()V

    sput-object v1, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;

    .line 228
    :cond_0
    sget-object v1, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 225
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final native blacklist isDirectlyHandlingTransaction()Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final greylist-max-o isProxy(Landroid/os/IInterface;)Z
    .locals 1
    .param p0, "iface"    # Landroid/os/IInterface;

    .line 647
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isStackTrackingEnabled()Z
    .locals 1

    .line 210
    sget-boolean v0, Landroid/os/Binder;->sStackTrackingEnabled:Z

    return v0
.end method

.method public static blacklist isTracingEnabled(I)Z
    .locals 2
    .param p0, "callingUid"    # I

    .line 217
    sget-object v0, Landroid/os/Binder;->sTracingUidsImmutable:Landroid/util/IntArray;

    invoke-virtual {v0, p0}, Landroid/util/IntArray;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final whitelist joinThreadPool()V
    .locals 0

    .line 638
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->joinThreadPool()V

    .line 639
    return-void
.end method

.method static synthetic blacklist lambda$static$0()Ljava/lang/Boolean;
    .locals 1

    .line 307
    sget-boolean v0, Landroid/os/Binder;->sWarnOnBlocking:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$static$1(I)I
    .locals 1
    .param p0, "x"    # I

    .line 1237
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public static final native whitelist restoreCallingIdentity(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final native whitelist restoreCallingWorkSource(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final native whitelist setCallingWorkSourceUid(I)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static greylist-max-o setDumpDisabled(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .line 755
    sput-object p0, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    .line 756
    return-void
.end method

.method public static declared-synchronized blacklist setHeavyHitterWatcherConfig(ZIFLcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;)V
    .locals 5
    .param p0, "enabled"    # Z
    .param p1, "batchSize"    # I
    .param p2, "threshold"    # F
    .param p3, "listener"    # Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;

    const-class v0, Landroid/os/Binder;

    monitor-enter v0

    .line 1393
    :try_start_0
    const-string v1, "Binder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting heavy hitter watcher config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    sget-object v1, Landroid/os/Binder;->sHeavyHitterWatcher:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    .line 1396
    .local v1, "watcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    if-eqz p0, :cond_3

    .line 1397
    if-eqz p3, :cond_2

    .line 1400
    const/4 v2, 0x0

    .line 1401
    .local v2, "newWatcher":Z
    if-nez v1, :cond_0

    .line 1402
    invoke-static {}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->getInstance()Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    move-result-object v3

    move-object v1, v3

    .line 1403
    const/4 v2, 0x1

    .line 1405
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3, p1, p2, p3}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->setConfig(ZIFLcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;)V

    .line 1406
    if-eqz v2, :cond_1

    .line 1407
    sput-object v1, Landroid/os/Binder;->sHeavyHitterWatcher:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    .line 1409
    .end local v2    # "newWatcher":Z
    :cond_1
    goto :goto_0

    .line 1398
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1409
    :cond_3
    if-eqz v1, :cond_1

    .line 1410
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->setConfig(ZIFLcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1412
    :goto_0
    monitor-exit v0

    return-void

    .line 1392
    .end local v1    # "watcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    .end local p0    # "enabled":Z
    .end local p1    # "batchSize":I
    .end local p2    # "threshold":F
    .end local p3    # "listener":Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static blacklist setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V
    .locals 0
    .param p0, "observer"    # Lcom/android/internal/os/BinderInternal$Observer;

    .line 237
    sput-object p0, Landroid/os/Binder;->sObserver:Lcom/android/internal/os/BinderInternal$Observer;

    .line 238
    return-void
.end method

.method public static whitelist setProxyTransactListener(Landroid/os/Binder$ProxyTransactListener;)V
    .locals 0
    .param p0, "listener"    # Landroid/os/Binder$ProxyTransactListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 845
    invoke-static {p0}, Landroid/os/BinderProxy;->setTransactListener(Landroid/os/Binder$ProxyTransactListener;)V

    .line 846
    return-void
.end method

.method public static final native greylist-max-o setThreadStrictModePolicy(I)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static greylist-max-o setWarnOnBlocking(Z)V
    .locals 0
    .param p0, "warnOnBlocking"    # Z

    .line 253
    sput-boolean p0, Landroid/os/Binder;->sWarnOnBlocking:Z

    .line 254
    return-void
.end method

.method public static blacklist setWorkSourceProvider(Lcom/android/internal/os/BinderInternal$WorkSourceProvider;)V
    .locals 2
    .param p0, "workSourceProvider"    # Lcom/android/internal/os/BinderInternal$WorkSourceProvider;

    .line 1253
    if-eqz p0, :cond_0

    .line 1256
    sput-object p0, Landroid/os/Binder;->sWorkSourceProvider:Lcom/android/internal/os/BinderInternal$WorkSourceProvider;

    .line 1257
    return-void

    .line 1254
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "workSourceProvider cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final greylist-max-o withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 470
    .local p0, "action":Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;, "Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier<TT;>;"
    const/4 v0, 0x0

    .line 471
    .local v0, "throwableToPropagate":Ljava/lang/Throwable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 473
    .local v1, "callingIdentity":J
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;->getOrThrow()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 479
    if-nez v0, :cond_0

    .line 473
    return-object v3

    .line 480
    :cond_0
    invoke-static {v0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 474
    :catchall_0
    move-exception v3

    .line 475
    .local v3, "throwable":Ljava/lang/Throwable;
    move-object v0, v3

    .line 476
    nop

    .line 478
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 479
    nop

    .line 480
    invoke-static {v0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public static final greylist-max-o withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    .locals 4
    .param p0, "action"    # Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;

    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, "throwableToPropagate":Ljava/lang/Throwable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 449
    .local v1, "callingIdentity":J
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;->runOrThrow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 454
    if-nez v0, :cond_0

    .line 458
    return-void

    .line 455
    :cond_0
    invoke-static {v0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 450
    :catchall_0
    move-exception v3

    .line 451
    .local v3, "throwable":Ljava/lang/Throwable;
    move-object v0, v3

    .line 453
    .end local v3    # "throwable":Ljava/lang/Throwable;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 454
    nop

    .line 455
    invoke-static {v0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method


# virtual methods
.method public whitelist attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Landroid/os/IInterface;
    .param p2, "descriptor"    # Ljava/lang/String;

    .line 702
    iput-object p1, p0, Landroid/os/Binder;->mOwner:Landroid/os/IInterface;

    .line 703
    iput-object p2, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    .line 704
    return-void
.end method

.method greylist-max-o doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1006
    sget-object v0, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    .line 1007
    .local v0, "disabled":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1009
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1021
    :goto_0
    goto :goto_1

    .line 1013
    :catchall_0
    move-exception v1

    .line 1018
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1019
    const-string v2, "Exception occurred while dumping:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .end local v1    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 1010
    :catch_0
    move-exception v1

    .line 1011
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1012
    throw v1

    .line 1023
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    sget-object v1, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1025
    :goto_1
    return-void
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1056
    return-void
.end method

.method public whitelist dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 996
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 997
    .local v0, "fout":Ljava/io/FileOutputStream;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 999
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    invoke-virtual {p0, p1, v1, p2}, Landroid/os/Binder;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1001
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1002
    nop

    .line 1003
    return-void

    .line 1001
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1002
    throw v2
.end method

.method public whitelist dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1032
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1033
    .local v0, "fout":Ljava/io/FileOutputStream;
    new-instance v5, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v5, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1034
    .local v5, "pw":Ljava/io/PrintWriter;
    new-instance v7, Landroid/os/Binder$1;

    const-string v3, "Binder.dumpAsync"

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/os/Binder$1;-><init>(Landroid/os/Binder;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1043
    .local v1, "thr":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1044
    return-void
.end method

.method public final native blacklist forceDowngradeToSystemStability()V
.end method

.method public final native blacklist getExtension()Landroid/os/IBinder;
.end method

.method public whitelist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 710
    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 988
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 935
    const/4 v0, 0x0

    return-object v0
.end method

.method public final blacklist getTransactionTraceName(I)Ljava/lang/String;
    .locals 8
    .param p1, "transactionCode"    # I

    .line 943
    iget-object v0, p0, Landroid/os/Binder;->mTransactionTraceNames:[Ljava/lang/String;

    if-nez v0, :cond_2

    .line 944
    invoke-direct {p0}, Landroid/os/Binder;->getSimpleDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 945
    .local v0, "descriptor":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Binder;->getMaxTransactionId()I

    move-result v1

    const/16 v2, 0x400

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 946
    .local v1, "highestId":I
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 947
    .local v2, "transactionNames":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 948
    .local v3, "buf":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-gt v4, v1, :cond_1

    .line 949
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v5}, Landroid/os/Binder;->getTransactionName(I)Ljava/lang/String;

    move-result-object v5

    .line 950
    .local v5, "transactionName":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 951
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 953
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v7, 0x23

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 955
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    .line 956
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 948
    .end local v5    # "transactionName":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 958
    .end local v4    # "i":I
    :cond_1
    iput-object v0, p0, Landroid/os/Binder;->mSimpleDescriptor:Ljava/lang/String;

    .line 959
    iput-object v2, p0, Landroid/os/Binder;->mTransactionTraceNames:[Ljava/lang/String;

    .line 961
    .end local v0    # "descriptor":Ljava/lang/String;
    .end local v1    # "highestId":I
    .end local v2    # "transactionNames":[Ljava/lang/String;
    .end local v3    # "buf":Ljava/lang/StringBuffer;
    :cond_2
    add-int/lit8 v0, p1, -0x1

    .line 962
    .local v0, "index":I
    if-ltz v0, :cond_4

    iget-object v1, p0, Landroid/os/Binder;->mTransactionTraceNames:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_3

    goto :goto_2

    .line 965
    :cond_3
    iget-object v1, p0, Landroid/os/Binder;->mTransactionTraceNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    .line 963
    :cond_4
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/os/Binder;->mSimpleDescriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 3
    .param p1, "in"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "out"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "err"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1158
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1159
    .local v0, "ferr":Ljava/io/FileOutputStream;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1160
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, "No shell command implementation."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1161
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1162
    const/4 v2, 0x0

    return v2
.end method

.method public whitelist isBinderAlive()Z
    .locals 1

    .line 728
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 0
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I

    .line 1199
    return-void
.end method

.method public final native blacklist markVintfStability()V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public greylist-max-o onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1093
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1094
    .local v0, "callingUid":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/16 v3, 0x7d0

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 1095
    :cond_0
    invoke-virtual {p6, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1096
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Shell commands are only callable by ADB"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1101
    :cond_1
    :goto_0
    const-string v3, "/dev/null"

    if-nez p1, :cond_2

    .line 1102
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object p1, v4

    goto :goto_1

    .line 1110
    :catch_0
    move-exception v3

    goto :goto_2

    .line 1104
    :cond_2
    :goto_1
    if-nez p2, :cond_4

    .line 1105
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v1

    goto :goto_4

    .line 1111
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    if-eqz p3, :cond_3

    move-object v6, p3

    goto :goto_3

    :cond_3
    move-object v6, p2

    :goto_3
    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v4, v5}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1112
    .local v4, "pw":Ljava/io/PrintWriter;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to open /dev/null: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1113
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 1114
    invoke-virtual {p6, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1115
    return-void

    .line 1107
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "pw":Ljava/io/PrintWriter;
    :cond_4
    :goto_4
    if-nez p3, :cond_5

    .line 1108
    move-object p3, p2

    .line 1116
    :cond_5
    nop

    .line 1118
    if-nez p4, :cond_6

    .line 1119
    const/4 v1, 0x0

    new-array p4, v1, [Ljava/lang/String;

    .line 1122
    :cond_6
    const/4 v1, -0x1

    .line 1123
    .local v1, "result":I
    :try_start_1
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 1124
    .local v3, "inPfd":Landroid/os/ParcelFileDescriptor;
    :try_start_2
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1125
    .local v4, "outPfd":Landroid/os/ParcelFileDescriptor;
    :try_start_3
    invoke-static {p3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1126
    .local v5, "errPfd":Landroid/os/ParcelFileDescriptor;
    :try_start_4
    invoke-virtual {p0, v3, v4, v5, p4}, Landroid/os/Binder;->handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v1, v6

    .line 1127
    if-eqz v5, :cond_7

    :try_start_5
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v5    # "errPfd":Landroid/os/ParcelFileDescriptor;
    :cond_7
    if-eqz v4, :cond_8

    :try_start_6
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .end local v4    # "outPfd":Landroid/os/ParcelFileDescriptor;
    :cond_8
    if-eqz v3, :cond_9

    :try_start_7
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 1132
    .end local v3    # "inPfd":Landroid/os/ParcelFileDescriptor;
    :cond_9
    :goto_5
    invoke-virtual {p6, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1133
    goto :goto_9

    .line 1123
    .restart local v3    # "inPfd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "outPfd":Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "errPfd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_a

    :try_start_8
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v7

    :try_start_9
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "callingUid":I
    .end local v1    # "result":I
    .end local v3    # "inPfd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "outPfd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Landroid/os/Binder;
    .end local p1    # "in":Ljava/io/FileDescriptor;
    .end local p2    # "out":Ljava/io/FileDescriptor;
    .end local p3    # "err":Ljava/io/FileDescriptor;
    .end local p4    # "args":[Ljava/lang/String;
    .end local p5    # "callback":Landroid/os/ShellCallback;
    .end local p6    # "resultReceiver":Landroid/os/ResultReceiver;
    :cond_a
    :goto_6
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .end local v5    # "errPfd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "callingUid":I
    .restart local v1    # "result":I
    .restart local v3    # "inPfd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "outPfd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/os/Binder;
    .restart local p1    # "in":Ljava/io/FileDescriptor;
    .restart local p2    # "out":Ljava/io/FileDescriptor;
    .restart local p3    # "err":Ljava/io/FileDescriptor;
    .restart local p4    # "args":[Ljava/lang/String;
    .restart local p5    # "callback":Landroid/os/ShellCallback;
    .restart local p6    # "resultReceiver":Landroid/os/ResultReceiver;
    :catchall_2
    move-exception v5

    if-eqz v4, :cond_b

    :try_start_a
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v6

    :try_start_b
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "callingUid":I
    .end local v1    # "result":I
    .end local v3    # "inPfd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Landroid/os/Binder;
    .end local p1    # "in":Ljava/io/FileDescriptor;
    .end local p2    # "out":Ljava/io/FileDescriptor;
    .end local p3    # "err":Ljava/io/FileDescriptor;
    .end local p4    # "args":[Ljava/lang/String;
    .end local p5    # "callback":Landroid/os/ShellCallback;
    .end local p6    # "resultReceiver":Landroid/os/ResultReceiver;
    :cond_b
    :goto_7
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .end local v4    # "outPfd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "callingUid":I
    .restart local v1    # "result":I
    .restart local v3    # "inPfd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/os/Binder;
    .restart local p1    # "in":Ljava/io/FileDescriptor;
    .restart local p2    # "out":Ljava/io/FileDescriptor;
    .restart local p3    # "err":Ljava/io/FileDescriptor;
    .restart local p4    # "args":[Ljava/lang/String;
    .restart local p5    # "callback":Landroid/os/ShellCallback;
    .restart local p6    # "resultReceiver":Landroid/os/ResultReceiver;
    :catchall_4
    move-exception v4

    if-eqz v3, :cond_c

    :try_start_c
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception v5

    :try_start_d
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "callingUid":I
    .end local v1    # "result":I
    .end local p0    # "this":Landroid/os/Binder;
    .end local p1    # "in":Ljava/io/FileDescriptor;
    .end local p2    # "out":Ljava/io/FileDescriptor;
    .end local p3    # "err":Ljava/io/FileDescriptor;
    .end local p4    # "args":[Ljava/lang/String;
    .end local p5    # "callback":Landroid/os/ShellCallback;
    .end local p6    # "resultReceiver":Landroid/os/ResultReceiver;
    :cond_c
    :goto_8
    throw v4
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 1132
    .end local v3    # "inPfd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "callingUid":I
    .restart local v1    # "result":I
    .restart local p0    # "this":Landroid/os/Binder;
    .restart local p1    # "in":Ljava/io/FileDescriptor;
    .restart local p2    # "out":Ljava/io/FileDescriptor;
    .restart local p3    # "err":Ljava/io/FileDescriptor;
    .restart local p4    # "args":[Ljava/lang/String;
    .restart local p5    # "callback":Landroid/os/ShellCallback;
    .restart local p6    # "resultReceiver":Landroid/os/ResultReceiver;
    :catchall_6
    move-exception v3

    goto :goto_a

    .line 1127
    :catch_1
    move-exception v3

    .line 1128
    .local v3, "e":Ljava/io/IOException;
    :try_start_e
    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v4, v5}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1129
    .local v4, "pw":Ljava/io/PrintWriter;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dup() failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "pw":Ljava/io/PrintWriter;
    goto :goto_5

    .line 1134
    :goto_9
    return-void

    .line 1132
    :goto_a
    invoke-virtual {p6, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1133
    throw v3
.end method

.method protected whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 872
    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v0, 0x1

    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_0

    .line 873
    invoke-virtual/range {p0 .. p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 874
    return v0

    .line 875
    :cond_0
    const v4, 0x5f444d50

    if-ne v1, v4, :cond_3

    .line 876
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 877
    .local v4, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 878
    .local v5, "args":[Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 880
    :try_start_0
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v14, p0

    :try_start_1
    invoke-virtual {v14, v6, v5}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 882
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 883
    goto :goto_1

    .line 882
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v14, p0

    :goto_0
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 883
    throw v0

    .line 878
    :cond_1
    move-object/from16 v14, p0

    .line 886
    :goto_1
    if-eqz v3, :cond_2

    .line 887
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 889
    :cond_2
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    .line 891
    :goto_2
    return v0

    .line 892
    .end local v4    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "args":[Ljava/lang/String;
    :cond_3
    move-object/from16 v14, p0

    const v4, 0x5f434d44

    if-ne v1, v4, :cond_9

    .line 893
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 894
    .local v4, "in":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 895
    .local v5, "out":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 896
    .local v6, "err":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v15

    .line 897
    .local v15, "args":[Ljava/lang/String;
    sget-object v7, Landroid/os/ShellCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, Landroid/os/ShellCallback;

    .line 898
    .local v16, "shellCallback":Landroid/os/ShellCallback;
    sget-object v7, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v17, v7

    check-cast v17, Landroid/os/ResultReceiver;

    .line 900
    .local v17, "resultReceiver":Landroid/os/ResultReceiver;
    if-eqz v5, :cond_7

    .line 901
    if-eqz v4, :cond_4

    :try_start_2
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    goto :goto_3

    .line 907
    :catchall_2
    move-exception v0

    goto :goto_5

    .line 901
    :cond_4
    const/4 v7, 0x0

    :goto_3
    move-object v8, v7

    .line 902
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    .line 903
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    goto :goto_4

    :cond_5
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    :goto_4
    move-object v10, v7

    .line 901
    move-object/from16 v7, p0

    move-object v11, v15

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    invoke-virtual/range {v7 .. v13}, Landroid/os/Binder;->shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_7

    .line 907
    :goto_5
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 908
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 909
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 911
    if-eqz v3, :cond_6

    .line 912
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_6

    .line 914
    :cond_6
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    .line 916
    :goto_6
    throw v0

    .line 907
    :cond_7
    :goto_7
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 908
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 909
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 911
    if-eqz v3, :cond_8

    .line 912
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 914
    :cond_8
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    .line 916
    nop

    .line 917
    :goto_8
    return v0

    .line 919
    .end local v4    # "in":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "out":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "err":Landroid/os/ParcelFileDescriptor;
    .end local v15    # "args":[Ljava/lang/String;
    .end local v16    # "shellCallback":Landroid/os/ShellCallback;
    .end local v17    # "resultReceiver":Landroid/os/ResultReceiver;
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist pingBinder()Z
    .locals 1

    .line 718
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 737
    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Landroid/os/Binder;->mOwner:Landroid/os/IInterface;

    return-object v0

    .line 740
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final native blacklist setExtension(Landroid/os/IBinder;)V
.end method

.method public greylist-max-o shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1073
    invoke-virtual/range {p0 .. p6}, Landroid/os/Binder;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    .line 1074
    return-void
.end method

.method public final whitelist transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1185
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1186
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1188
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1189
    .local v1, "r":Z
    if-eqz p3, :cond_1

    .line 1190
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1192
    :cond_1
    return v1
.end method

.method public whitelist unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I

    .line 1205
    const/4 v0, 0x1

    return v0
.end method
