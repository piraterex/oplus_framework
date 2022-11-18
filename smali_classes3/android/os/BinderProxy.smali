.class public final Landroid/os/BinderProxy;
.super Ljava/lang/Object;
.source "BinderProxy.java"

# interfaces
.implements Landroid/os/IBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BinderProxy$NoImagePreloadHolder;,
        Landroid/os/BinderProxy$InterfaceCount;,
        Landroid/os/BinderProxy$ProxyMap;,
        Landroid/os/BinderProxy$BinderProxyMapSizeException;
    }
.end annotation


# static fields
.field private static final blacklist NATIVE_ALLOCATION_SIZE:I = 0xbb8

.field private static final blacklist ONETRACE_EXT:Landroid/os/IOneTraceExt;

.field private static final blacklist SEPARATOR:C = ','

.field private static final blacklist TYPE_BLOCK:C = '0'

.field private static final blacklist TYPE_ONEWAY:C = '1'

.field private static final blacklist sProxyMap:Landroid/os/BinderProxy$ProxyMap;

.field private static volatile blacklist sTransactListener:Landroid/os/Binder$ProxyTransactListener;


# instance fields
.field private blacklist mCachedDescriptor:Ljava/lang/String;

.field public final blacklist mExt:Landroid/os/IBinderProxyExt;

.field private final blacklist mNativeData:J

.field volatile blacklist mWarnOnBlocking:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsProxyMap()Landroid/os/BinderProxy$ProxyMap;
    .locals 1

    sget-object v0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetNativeFinalizer()J
    .locals 2

    invoke-static {}, Landroid/os/BinderProxy;->getNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 60
    const-class v0, Landroid/os/IOneTraceExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IOneTraceExt;

    sput-object v0, Landroid/os/BinderProxy;->ONETRACE_EXT:Landroid/os/IOneTraceExt;

    .line 74
    const/4 v0, 0x0

    sput-object v0, Landroid/os/BinderProxy;->sTransactListener:Landroid/os/Binder$ProxyTransactListener;

    .line 421
    new-instance v1, Landroid/os/BinderProxy$ProxyMap;

    invoke-direct {v1, v0}, Landroid/os/BinderProxy$ProxyMap;-><init>(Landroid/os/BinderProxy$ProxyMap-IA;)V

    sput-object v1, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    return-void
.end method

.method private constructor blacklist <init>(J)V
    .locals 1
    .param p1, "nativeData"    # J

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-class v0, Landroid/os/IBinderProxyExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinderProxyExt;

    iput-object v0, p0, Landroid/os/BinderProxy;->mExt:Landroid/os/IBinderProxyExt;

    .line 72
    sget-boolean v0, Landroid/os/Binder;->sWarnOnBlocking:Z

    iput-boolean v0, p0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    .line 509
    iput-wide p1, p0, Landroid/os/BinderProxy;->mNativeData:J

    .line 510
    return-void
.end method

.method public static blacklist dumpProxyDebugInfo()V
    .locals 1

    .line 469
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 470
    sget-object v0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    invoke-static {v0}, Landroid/os/BinderProxy$ProxyMap;->-$$Nest$mdumpProxyInterfaceCounts(Landroid/os/BinderProxy$ProxyMap;)V

    .line 471
    invoke-static {v0}, Landroid/os/BinderProxy$ProxyMap;->-$$Nest$mdumpPerUidProxyCounts(Landroid/os/BinderProxy$ProxyMap;)V

    .line 473
    :cond_0
    return-void
.end method

.method private static blacklist getInstance(JJ)Landroid/os/BinderProxy;
    .locals 4
    .param p0, "nativeData"    # J
    .param p2, "iBinder"    # J

    .line 488
    sget-object v0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    monitor-enter v0

    .line 490
    :try_start_0
    invoke-virtual {v0, p2, p3}, Landroid/os/BinderProxy$ProxyMap;->get(J)Landroid/os/BinderProxy;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    .local v1, "result":Landroid/os/BinderProxy;
    if-eqz v1, :cond_0

    .line 492
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    .line 494
    :cond_0
    :try_start_2
    new-instance v2, Landroid/os/BinderProxy;

    invoke-direct {v2, p0, p1}, Landroid/os/BinderProxy;-><init>(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v2

    .line 500
    nop

    .line 501
    :try_start_3
    sget-object v2, Landroid/os/BinderProxy$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, v1, p0, p1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 503
    invoke-virtual {v0, p2, p3, v1}, Landroid/os/BinderProxy$ProxyMap;->set(JLandroid/os/BinderProxy;)V

    .line 504
    monitor-exit v0

    .line 505
    return-object v1

    .line 495
    .end local v1    # "result":Landroid/os/BinderProxy;
    :catchall_0
    move-exception v1

    .line 497
    .local v1, "e":Ljava/lang/Throwable;
    sget-wide v2, Landroid/os/BinderProxy$NoImagePreloadHolder;->sNativeFinalizer:J

    invoke-static {v2, v3, p0, p1}, Llibcore/util/NativeAllocationRegistry;->applyFreeFunction(JJ)V

    .line 499
    nop

    .end local p0    # "nativeData":J
    .end local p2    # "iBinder":J
    throw v1

    .line 504
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local p0    # "nativeData":J
    .restart local p2    # "iBinder":J
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private static native blacklist getNativeFinalizer()J
.end method

.method public static blacklist getProxyCount()I
    .locals 2

    .line 458
    sget-object v0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    monitor-enter v0

    .line 459
    :try_start_0
    invoke-static {v0}, Landroid/os/BinderProxy$ProxyMap;->-$$Nest$msize(Landroid/os/BinderProxy$ProxyMap;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 460
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist getSortedInterfaceCounts(I)[Landroid/os/BinderProxy$InterfaceCount;
    .locals 1
    .param p0, "num"    # I

    .line 450
    sget-object v0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    invoke-static {v0, p0}, Landroid/os/BinderProxy$ProxyMap;->-$$Nest$mgetSortedInterfaceCounts(Landroid/os/BinderProxy$ProxyMap;I)[Landroid/os/BinderProxy$InterfaceCount;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist sendDeathNotice(Landroid/os/IBinder$DeathRecipient;Landroid/os/IBinder;)V
    .locals 3
    .param p0, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p1, "binderProxy"    # Landroid/os/IBinder;

    .line 799
    :try_start_0
    invoke-interface {p0, p1}, Landroid/os/IBinder$DeathRecipient;->binderDied(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    goto :goto_0

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, "exc":Ljava/lang/RuntimeException;
    const-string v1, "BinderNative"

    const-string v2, "Uncaught exception from death notification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 804
    .end local v0    # "exc":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public static blacklist setTransactListener(Landroid/os/Binder$ProxyTransactListener;)V
    .locals 0
    .param p0, "listener"    # Landroid/os/Binder$ProxyTransactListener;

    .line 86
    sput-object p0, Landroid/os/BinderProxy;->sTransactListener:Landroid/os/Binder$ProxyTransactListener;

    .line 87
    return-void
.end method


# virtual methods
.method public whitelist dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 729
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 730
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 731
    .local v1, "reply":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 732
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 734
    const v2, 0x5f444d50

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v0, v1, v3}, Landroid/os/BinderProxy;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 735
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 738
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 739
    nop

    .line 740
    return-void

    .line 737
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 738
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 739
    throw v2
.end method

.method public whitelist dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 750
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 751
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 752
    .local v1, "reply":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 753
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 755
    const v2, 0x5f444d50

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v2, v0, v1, v3}, Landroid/os/BinderProxy;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 757
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 758
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 759
    nop

    .line 760
    return-void

    .line 757
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 758
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 759
    throw v2
.end method

.method public native blacklist getExtension()Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public native whitelist getInterfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public native whitelist isBinderAlive()Z
.end method

.method public native whitelist linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public native whitelist pingBinder()Z
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 549
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 4
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

    .line 777
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 778
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 779
    .local v1, "reply":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 780
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 781
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 782
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 783
    invoke-static {p5, v0}, Landroid/os/ShellCallback;->writeToParcel(Landroid/os/ShellCallback;Landroid/os/Parcel;)V

    .line 784
    const/4 v2, 0x0

    invoke-virtual {p6, v0, v2}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 786
    const v3, 0x5f434d44

    :try_start_0
    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/os/BinderProxy;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 787
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 790
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 791
    nop

    .line 792
    return-void

    .line 789
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 790
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 791
    throw v2
.end method

.method public whitelist transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 580
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v0, p4

    const-string v1, "Unreasonably large binder buffer"

    invoke-static {v7, v8, v9, v1}, Landroid/os/Binder;->checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V

    .line 584
    iget-object v1, v7, Landroid/os/BinderProxy;->mExt:Landroid/os/IBinderProxyExt;

    const/4 v11, 0x1

    if-eqz v1, :cond_0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-interface/range {v1 .. v6}, Landroid/os/IBinderProxyExt;->transact(Landroid/os/IBinder;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    return v11

    .line 589
    :cond_0
    iget-boolean v1, v7, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    .line 591
    .local v1, "warnOnBlocking":Z
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_2

    sget-object v3, Landroid/os/Binder;->sWarnOnBlockingOnCurrentThread:Ljava/lang/ThreadLocal;

    .line 592
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 596
    iput-boolean v2, v7, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    .line 597
    const/4 v1, 0x0

    .line 599
    sget-boolean v3, Landroid/os/Build;->IS_USERDEBUG:Z

    const-string v4, "Outgoing transactions from this process must be FLAG_ONEWAY"

    const-string v5, "Binder"

    if-eqz v3, :cond_1

    .line 601
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5, v4, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 605
    :cond_1
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 611
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/Binder;->isStackTrackingEnabled()Z

    move-result v3

    .line 612
    .local v3, "tracingEnabled":Z
    const-wide/16 v4, 0x1

    if-eqz v3, :cond_3

    .line 613
    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    .line 614
    .local v6, "tr":Ljava/lang/Throwable;
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/os/TransactionTracker;->addTrace(Ljava/lang/Throwable;)V

    .line 615
    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v12

    aget-object v12, v12, v11

    .line 616
    .local v12, "stackTraceElement":Ljava/lang/StackTraceElement;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 617
    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 616
    invoke-static {v4, v5, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 622
    .end local v6    # "tr":Ljava/lang/Throwable;
    .end local v12    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_3
    sget-object v6, Landroid/os/BinderProxy;->ONETRACE_EXT:Landroid/os/IOneTraceExt;

    const-wide v12, 0x200000000L

    invoke-interface {v6, v12, v13}, Landroid/os/IOneTraceExt;->isEnable(J)Z

    move-result v14

    .line 623
    .local v14, "onetraceEnabled":Z
    if-eqz v14, :cond_a

    .line 624
    and-int/lit8 v15, v0, 0x1

    if-ne v15, v11, :cond_4

    move v15, v11

    goto :goto_1

    :cond_4
    move v15, v2

    .line 626
    .local v15, "isOneWayTransaction":Z
    :goto_1
    iget-object v4, v7, Landroid/os/BinderProxy;->mCachedDescriptor:Ljava/lang/String;

    if-nez v4, :cond_8

    .line 627
    const/4 v4, 0x0

    .line 628
    .local v4, "descriptor":Ljava/lang/String;
    if-nez v15, :cond_5

    .line 630
    invoke-virtual/range {p0 .. p0}, Landroid/os/BinderProxy;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v4

    .line 632
    :cond_5
    if-nez v4, :cond_7

    .line 633
    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v11

    .line 634
    .local v5, "stackTraceElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 635
    const/16 v11, 0x24

    invoke-virtual {v4, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 636
    .local v11, "index":I
    if-ltz v11, :cond_6

    invoke-virtual {v4, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_6
    move-object v2, v4

    :goto_2
    move-object v4, v2

    .line 638
    .end local v5    # "stackTraceElement":Ljava/lang/StackTraceElement;
    .end local v11    # "index":I
    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Landroid/os/IOneTraceExt;->matchDescriptor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Landroid/os/BinderProxy;->mCachedDescriptor:Ljava/lang/String;

    .line 641
    .end local v4    # "descriptor":Ljava/lang/String;
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "P->"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v7, Landroid/os/BinderProxy;->mCachedDescriptor:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 642
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v15, :cond_9

    const/16 v5, 0x31

    goto :goto_3

    :cond_9
    const/16 v5, 0x30

    :goto_3
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 643
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, v8, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 644
    .local v2, "content":Ljava/lang/String;
    invoke-static {v12, v13, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 649
    .end local v2    # "content":Ljava/lang/String;
    .end local v15    # "isOneWayTransaction":Z
    :cond_a
    sget-object v2, Landroid/os/BinderProxy;->sTransactListener:Landroid/os/Binder$ProxyTransactListener;

    .line 650
    .local v2, "transactListener":Landroid/os/Binder$ProxyTransactListener;
    const/4 v4, 0x0

    .line 652
    .local v4, "session":Ljava/lang/Object;
    if-eqz v2, :cond_b

    .line 653
    invoke-static {}, Landroid/os/Binder;->getCallingWorkSourceUid()I

    move-result v5

    .line 654
    .local v5, "origWorkSourceUid":I
    invoke-interface {v2, v7, v8, v0}, Landroid/os/Binder$ProxyTransactListener;->onTransactStarted(Landroid/os/IBinder;II)Ljava/lang/Object;

    move-result-object v4

    .line 658
    invoke-static {}, Landroid/os/Binder;->getCallingWorkSourceUid()I

    move-result v6

    .line 659
    .local v6, "updatedWorkSourceUid":I
    if-eq v5, v6, :cond_b

    .line 660
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->replaceCallingWorkSourceUid(I)Z

    .line 665
    .end local v5    # "origWorkSourceUid":I
    .end local v6    # "updatedWorkSourceUid":I
    :cond_b
    invoke-static {}, Landroid/app/AppOpsManager;->pauseNotedAppOpsCollection()Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;

    move-result-object v5

    .line 667
    .local v5, "prevCollection":Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;
    and-int/lit8 v6, v0, 0x1

    if-nez v6, :cond_c

    invoke-static {}, Landroid/app/AppOpsManager;->isListeningForOpNoted()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 668
    or-int/lit8 v0, v0, 0x2

    move v6, v0

    .end local p4    # "flags":I
    .local v0, "flags":I
    goto :goto_4

    .line 672
    .end local v0    # "flags":I
    .restart local p4    # "flags":I
    :cond_c
    move v6, v0

    .end local p4    # "flags":I
    .local v6, "flags":I
    :goto_4
    :try_start_0
    invoke-virtual {v7, v8, v9, v10, v6}, Landroid/os/BinderProxy;->transactNative(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 674
    .local v0, "result":Z
    if-eqz v10, :cond_d

    if-nez v1, :cond_d

    .line 675
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Parcel;->addFlags(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    :cond_d
    nop

    .line 680
    invoke-static {v5}, Landroid/app/AppOpsManager;->resumeNotedAppOpsCollection(Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;)V

    .line 682
    if-eqz v2, :cond_e

    .line 683
    invoke-interface {v2, v4}, Landroid/os/Binder$ProxyTransactListener;->onTransactEnded(Ljava/lang/Object;)V

    .line 686
    :cond_e
    if-eqz v3, :cond_f

    .line 687
    const-wide/16 v15, 0x1

    invoke-static/range {v15 .. v16}, Landroid/os/Trace;->traceEnd(J)V

    .line 692
    :cond_f
    if-eqz v14, :cond_10

    .line 693
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 678
    :cond_10
    return v0

    .line 680
    .end local v0    # "result":Z
    :catchall_0
    move-exception v0

    invoke-static {v5}, Landroid/app/AppOpsManager;->resumeNotedAppOpsCollection(Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;)V

    .line 682
    if-eqz v2, :cond_11

    .line 683
    invoke-interface {v2, v4}, Landroid/os/Binder$ProxyTransactListener;->onTransactEnded(Ljava/lang/Object;)V

    .line 686
    :cond_11
    if-eqz v3, :cond_12

    .line 687
    const-wide/16 v15, 0x1

    invoke-static/range {v15 .. v16}, Landroid/os/Trace;->traceEnd(J)V

    .line 692
    :cond_12
    if-eqz v14, :cond_13

    .line 693
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 696
    :cond_13
    throw v0
.end method

.method public native blacklist transactNative(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public native whitelist unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
.end method
