.class final Landroid/app/LoadedApk$ReceiverDispatcher$Args;
.super Landroid/content/BroadcastReceiver$PendingResult;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk$ReceiverDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Args"
.end annotation


# instance fields
.field private greylist-max-o mCurIntent:Landroid/content/Intent;

.field private greylist-max-o mDispatched:Z

.field private final greylist-max-o mOrdered:Z

.field private blacklist mRunCalled:Z

.field final synthetic blacklist this$0:Landroid/app/LoadedApk$ReceiverDispatcher;


# direct methods
.method public constructor blacklist <init>(Landroid/app/LoadedApk$ReceiverDispatcher;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 12
    .param p1, "this$0"    # Landroid/app/LoadedApk$ReceiverDispatcher;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;
    .param p6, "ordered"    # Z
    .param p7, "sticky"    # Z
    .param p8, "sendingUser"    # I

    .line 1803
    move-object v10, p0

    move-object v11, p1

    iput-object v11, v10, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 1804
    nop

    .line 1805
    iget-boolean v0, v11, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    move v4, v0

    iget-object v0, v11, Landroid/app/LoadedApk$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    .line 1806
    invoke-virtual {v0}, Landroid/content/IIntentReceiver$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v9

    .line 1804
    move-object v0, p0

    move v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Landroid/content/BroadcastReceiver$PendingResult;-><init>(ILjava/lang/String;Landroid/os/Bundle;IZZLandroid/os/IBinder;II)V

    .line 1807
    move-object v0, p2

    iput-object v0, v10, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    .line 1808
    move/from16 v1, p6

    iput-boolean v1, v10, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mOrdered:Z

    .line 1809
    return-void
.end method


# virtual methods
.method public final greylist-max-o getRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 1812
    new-instance v0, Landroid/app/LoadedApk$ReceiverDispatcher$Args$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/app/LoadedApk$ReceiverDispatcher$Args$$ExternalSyntheticLambda0;-><init>(Landroid/app/LoadedApk$ReceiverDispatcher$Args;)V

    return-object v0
.end method

.method synthetic blacklist lambda$getRunnable$0$android-app-LoadedApk$ReceiverDispatcher$Args()V
    .locals 21

    .line 1813
    move-object/from16 v1, p0

    const-string v0, " "

    iget-object v2, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v2, v2, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1814
    .local v2, "receiver":Landroid/content/BroadcastReceiver;
    iget-boolean v3, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mOrdered:Z

    .line 1816
    .local v3, "ordered":Z
    sget-boolean v4, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    const-string v5, "ActivityThread"

    if-eqz v4, :cond_1

    .line 1823
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dispatching broadcast "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    const-string/jumbo v6, "null"

    :goto_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v6, v6, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mRegistered="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v6, v6, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " mOrderedHint="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    .line 1831
    .local v4, "mgr":Landroid/app/IActivityManager;
    iget-object v6, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    .line 1832
    .local v6, "intent":Landroid/content/Intent;
    const-string v7, "LoadedApk"

    if-nez v6, :cond_3

    .line 1833
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Null intent being dispatched, mDispatched="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mDispatched:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1834
    iget-boolean v9, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mRunCalled:Z

    if-eqz v9, :cond_2

    const-string v9, ", run() has already been called"

    goto :goto_1

    :cond_2
    const-string v9, ""

    :goto_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1833
    invoke-static {v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    :cond_3
    const/4 v8, 0x0

    iput-object v8, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    .line 1838
    const/4 v8, 0x1

    iput-boolean v8, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mDispatched:Z

    .line 1839
    iput-boolean v8, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mRunCalled:Z

    .line 1840
    if-eqz v2, :cond_e

    if-eqz v6, :cond_e

    iget-object v9, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v9, v9, Landroid/app/LoadedApk$ReceiverDispatcher;->mForgotten:Z

    if-eqz v9, :cond_4

    goto/16 :goto_4

    .line 1850
    :cond_4
    const/4 v9, 0x0

    .line 1853
    .local v9, "hasOplusQueueFlag":Z
    const-wide/16 v10, 0x40

    invoke-static {v10, v11}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1854
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "broadcastReceiveReg: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1855
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1854
    invoke-static {v10, v11, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1861
    :cond_5
    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x3

    :try_start_0
    sget-object v15, Landroid/app/LoadedApkExtPlugin;->beforeOnReceiveInArgsRunnable:Lcom/oplus/reflect/RefStaticMethod;

    new-array v10, v14, [Ljava/lang/Object;

    aput-object v1, v10, v13

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v8

    aput-object v6, v10, v12

    invoke-virtual {v15, v10}, Lcom/oplus/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    move v9, v10

    .line 1864
    iget-object v10, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v10, v10, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    .line 1865
    .local v10, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v6, v10}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 1868
    invoke-static {v6}, Landroid/app/ActivityThread;->isProtectedBroadcast(Landroid/content/Intent;)Z

    move-result v11

    iget-object v15, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v15, v15, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    .line 1869
    invoke-virtual {v15}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v15

    .line 1868
    invoke-virtual {v6, v11, v15}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 1870
    invoke-virtual {v1, v10}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 1871
    invoke-virtual {v2, v1}, Landroid/content/BroadcastReceiver;->setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 1874
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onReceive "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v15, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v15, v15, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-wide/16 v14, 0x40

    invoke-static {v14, v15, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1876
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 1880
    .local v14, "startTime":J
    const-string v11, "android.intent.action.ACTION_SHUTDOWN"

    .line 1881
    .local v11, "shutDownAction":Ljava/lang/String;
    sget-boolean v17, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    if-eqz v17, :cond_6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1882
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shutdown receiver before onReceive! "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v12, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v12, v12, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    :cond_6
    iget-object v8, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v8, v8, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8, v6}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1888
    sget-boolean v8, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    if-eqz v8, :cond_7

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1889
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Shutdown receiver after onReceive! "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v8, v8, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    move-object v0, v10

    move-object v8, v11

    .end local v10    # "cl":Ljava/lang/ClassLoader;
    .end local v11    # "shutDownAction":Ljava/lang/String;
    .local v0, "cl":Ljava/lang/ClassLoader;
    .local v8, "shutDownAction":Ljava/lang/String;
    sub-long v10, v19, v14

    .line 1895
    .local v10, "timeTaken":J
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v12

    if-eqz v12, :cond_8

    const-wide/16 v19, 0x96

    cmp-long v12, v10, v19

    if-ltz v12, :cond_8

    .line 1896
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "System took : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "ms in onReceive of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v13, v13, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1897
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " for action : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1896
    invoke-static {v7, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    :cond_8
    const-wide/16 v12, 0x40

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 1905
    sget-object v7, Landroid/app/LoadedApkExtPlugin;->afterOnReceiveInArgsRunnable:Lcom/oplus/reflect/RefStaticMethod;

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/16 v18, 0x1

    aput-object v13, v12, v18

    const/4 v13, 0x2

    aput-object v6, v12, v13

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/16 v16, 0x3

    aput-object v13, v12, v16

    invoke-virtual {v7, v12}, Lcom/oplus/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1924
    nop

    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v8    # "shutDownAction":Ljava/lang/String;
    .end local v10    # "timeTaken":J
    .end local v14    # "startTime":J
    goto :goto_2

    .line 1907
    :catch_0
    move-exception v0

    .line 1910
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Landroid/app/LoadedApkExtPlugin;->inExceptionOnReceiveInArgsRunnable:Lcom/oplus/reflect/RefStaticMethod;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v8, v10

    const/4 v10, 0x1

    aput-object v6, v8, v10

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v8, v11

    invoke-virtual {v7, v8}, Lcom/oplus/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 1912
    iget-object v7, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v7, v7, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v7, :cond_a

    if-eqz v3, :cond_a

    .line 1913
    sget-boolean v7, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    if-eqz v7, :cond_9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Finishing failed broadcast to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v8, v8, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    :cond_9
    invoke-virtual {v1, v4}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->sendFinished(Landroid/app/IActivityManager;)V

    .line 1917
    :cond_a
    iget-object v5, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v5, v5, Landroid/app/LoadedApk$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    if-eqz v5, :cond_d

    iget-object v5, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v5, v5, Landroid/app/LoadedApk$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v7, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v7, v7, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1918
    invoke-virtual {v5, v7, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1926
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v2}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1927
    invoke-virtual/range {p0 .. p0}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->finish()V

    .line 1929
    :cond_b
    const-wide/16 v7, 0x40

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 1930
    return-void

    .line 1918
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_c
    const-wide/16 v7, 0x40

    goto :goto_3

    .line 1917
    :cond_d
    const-wide/16 v7, 0x40

    .line 1919
    :goto_3
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 1920
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error receiving broadcast "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v8, v8, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1841
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "hasOplusQueueFlag":Z
    :cond_e
    :goto_4
    iget-object v0, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v0, v0, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v0, :cond_10

    if-eqz v3, :cond_10

    .line 1842
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finishing null broadcast to "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v7, v7, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    :cond_f
    invoke-virtual {v1, v4}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->sendFinished(Landroid/app/IActivityManager;)V

    .line 1846
    :cond_10
    return-void
.end method
