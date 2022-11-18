.class Landroid/app/ActivityThread$H;
.super Landroid/os/Handler;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# static fields
.field public static final greylist-max-o APPLICATION_INFO_CHANGED:I = 0x9c

.field public static final greylist-max-o ATTACH_AGENT:I = 0x9b

.field public static final blacklist ATTACH_STARTUP_AGENTS:I = 0xa2

.field public static final greylist-max-o BIND_APPLICATION:I = 0x6e

.field public static final greylist BIND_SERVICE:I = 0x79

.field public static final greylist-max-o CLEAN_UP_CONTEXT:I = 0x77

.field public static final greylist-max-o CONFIGURATION_CHANGED:I = 0x76

.field public static final greylist-max-o CREATE_BACKUP_AGENT:I = 0x80

.field public static final greylist CREATE_SERVICE:I = 0x72

.field public static final greylist-max-o DESTROY_BACKUP_AGENT:I = 0x81

.field public static final greylist-max-o DISPATCH_PACKAGE_BROADCAST:I = 0x85

.field public static final greylist-max-o DUMP_ACTIVITY:I = 0x88

.field public static final blacklist DUMP_GFXINFO:I = 0xa5

.field public static final greylist-max-o DUMP_HEAP:I = 0x87

.field public static final greylist DUMP_PROVIDER:I = 0x8d

.field public static final blacklist DUMP_RESOURCES:I = 0xa6

.field public static final greylist-max-o DUMP_SERVICE:I = 0x7b

.field public static final greylist ENTER_ANIMATION_COMPLETE:I = 0x95

.field public static final greylist-max-o EXECUTE_TRANSACTION:I = 0x9f

.field public static final greylist EXIT_APPLICATION:I = 0x6f

.field public static final blacklist FINISH_INSTRUMENTATION_WITHOUT_RESTART:I = 0xab

.field public static final greylist GC_WHEN_IDLE:I = 0x78

.field public static final greylist INSTALL_PROVIDER:I = 0x91

.field public static final blacklist INSTRUMENT_WITHOUT_RESTART:I = 0xaa

.field public static final greylist-max-o LOCAL_VOICE_INTERACTION_STARTED:I = 0x9a

.field public static final greylist-max-o LOW_MEMORY:I = 0x7c

.field public static final greylist-max-o ON_NEW_ACTIVITY_OPTIONS:I = 0x92

.field public static final greylist-max-o PROFILER_CONTROL:I = 0x7f

.field public static final blacklist PURGE_RESOURCES:I = 0xa1

.field public static final greylist RECEIVER:I = 0x71

.field public static final greylist-max-o RELAUNCH_ACTIVITY:I = 0xa0

.field public static final greylist REMOVE_PROVIDER:I = 0x83

.field public static final greylist-max-o REQUEST_ASSIST_CONTEXT_EXTRAS:I = 0x8f

.field public static final greylist-max-o RUN_ISOLATED_ENTRY_POINT:I = 0x9e

.field public static final greylist SCHEDULE_CRASH:I = 0x86

.field public static final greylist SERVICE_ARGS:I = 0x73

.field public static final blacklist SET_CONTENT_CAPTURE_OPTIONS_CALLBACK:I = 0xa4

.field public static final greylist-max-o SET_CORE_SETTINGS:I = 0x8a

.field public static final greylist-max-o SLEEPING:I = 0x89

.field public static final greylist-max-o START_BINDER_TRACKING:I = 0x96

.field public static final greylist-max-o STOP_BINDER_TRACKING_AND_DUMP:I = 0x97

.field public static final greylist STOP_SERVICE:I = 0x74

.field public static final greylist-max-o SUICIDE:I = 0x82

.field public static final greylist-max-o TRANSLUCENT_CONVERSION_COMPLETE:I = 0x90

.field public static final greylist UNBIND_SERVICE:I = 0x7a

.field public static final greylist-max-o UNSTABLE_PROVIDER_DIED:I = 0x8e

.field public static final greylist-max-o UPDATE_PACKAGE_COMPATIBILITY_INFO:I = 0x8b

.field public static final blacklist UPDATE_UI_TRANSLATION_STATE:I = 0xa3


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ActivityThread;


# direct methods
.method constructor blacklist <init>(Landroid/app/ActivityThread;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    .line 2163
    iput-object p1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method greylist-max-o codeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "code"    # I

    .line 2229
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_MESSAGES:Z

    if-eqz v0, :cond_0

    .line 2230
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 2276
    :pswitch_1
    const-string v0, "FINISH_INSTRUMENTATION_WITHOUT_RESTART"

    return-object v0

    .line 2274
    :pswitch_2
    const-string v0, "INSTRUMENT_WITHOUT_RESTART"

    return-object v0

    .line 2277
    :pswitch_3
    const-string v0, "DUMP_RESOURCES"

    return-object v0

    .line 2273
    :pswitch_4
    const-string v0, "DUMP GFXINFO"

    return-object v0

    .line 2272
    :pswitch_5
    const-string v0, "SET_CONTENT_CAPTURE_OPTIONS_CALLBACK"

    return-object v0

    .line 2270
    :pswitch_6
    const-string v0, "UPDATE_UI_TRANSLATION_STATE"

    return-object v0

    .line 2269
    :pswitch_7
    const-string v0, "ATTACH_STARTUP_AGENTS"

    return-object v0

    .line 2268
    :pswitch_8
    const-string v0, "PURGE_RESOURCES"

    return-object v0

    .line 2267
    :pswitch_9
    const-string v0, "RELAUNCH_ACTIVITY"

    return-object v0

    .line 2266
    :pswitch_a
    const-string v0, "EXECUTE_TRANSACTION"

    return-object v0

    .line 2265
    :pswitch_b
    const-string v0, "RUN_ISOLATED_ENTRY_POINT"

    return-object v0

    .line 2264
    :pswitch_c
    const-string v0, "APPLICATION_INFO_CHANGED"

    return-object v0

    .line 2263
    :pswitch_d
    const-string v0, "ATTACH_AGENT"

    return-object v0

    .line 2262
    :pswitch_e
    const-string v0, "LOCAL_VOICE_INTERACTION_STARTED"

    return-object v0

    .line 2261
    :pswitch_f
    const-string v0, "ENTER_ANIMATION_COMPLETE"

    return-object v0

    .line 2260
    :pswitch_10
    const-string v0, "ON_NEW_ACTIVITY_OPTIONS"

    return-object v0

    .line 2259
    :pswitch_11
    const-string v0, "INSTALL_PROVIDER"

    return-object v0

    .line 2258
    :pswitch_12
    const-string v0, "TRANSLUCENT_CONVERSION_COMPLETE"

    return-object v0

    .line 2257
    :pswitch_13
    const-string v0, "REQUEST_ASSIST_CONTEXT_EXTRAS"

    return-object v0

    .line 2256
    :pswitch_14
    const-string v0, "UNSTABLE_PROVIDER_DIED"

    return-object v0

    .line 2255
    :pswitch_15
    const-string v0, "DUMP_PROVIDER"

    return-object v0

    .line 2254
    :pswitch_16
    const-string v0, "UPDATE_PACKAGE_COMPATIBILITY_INFO"

    return-object v0

    .line 2253
    :pswitch_17
    const-string v0, "SET_CORE_SETTINGS"

    return-object v0

    .line 2252
    :pswitch_18
    const-string v0, "DUMP_ACTIVITY"

    return-object v0

    .line 2251
    :pswitch_19
    const-string v0, "DUMP_HEAP"

    return-object v0

    .line 2250
    :pswitch_1a
    const-string v0, "SCHEDULE_CRASH"

    return-object v0

    .line 2249
    :pswitch_1b
    const-string v0, "DISPATCH_PACKAGE_BROADCAST"

    return-object v0

    .line 2248
    :pswitch_1c
    const-string v0, "REMOVE_PROVIDER"

    return-object v0

    .line 2247
    :pswitch_1d
    const-string v0, "SUICIDE"

    return-object v0

    .line 2246
    :pswitch_1e
    const-string v0, "DESTROY_BACKUP_AGENT"

    return-object v0

    .line 2245
    :pswitch_1f
    const-string v0, "CREATE_BACKUP_AGENT"

    return-object v0

    .line 2244
    :pswitch_20
    const-string v0, "PROFILER_CONTROL"

    return-object v0

    .line 2243
    :pswitch_21
    const-string v0, "LOW_MEMORY"

    return-object v0

    .line 2242
    :pswitch_22
    const-string v0, "DUMP_SERVICE"

    return-object v0

    .line 2241
    :pswitch_23
    const-string v0, "UNBIND_SERVICE"

    return-object v0

    .line 2240
    :pswitch_24
    const-string v0, "BIND_SERVICE"

    return-object v0

    .line 2239
    :pswitch_25
    const-string v0, "GC_WHEN_IDLE"

    return-object v0

    .line 2238
    :pswitch_26
    const-string v0, "CLEAN_UP_CONTEXT"

    return-object v0

    .line 2237
    :pswitch_27
    const-string v0, "CONFIGURATION_CHANGED"

    return-object v0

    .line 2236
    :pswitch_28
    const-string v0, "STOP_SERVICE"

    return-object v0

    .line 2235
    :pswitch_29
    const-string v0, "SERVICE_ARGS"

    return-object v0

    .line 2234
    :pswitch_2a
    const-string v0, "CREATE_SERVICE"

    return-object v0

    .line 2233
    :pswitch_2b
    const-string v0, "RECEIVER"

    return-object v0

    .line 2232
    :pswitch_2c
    const-string v0, "EXIT_APPLICATION"

    return-object v0

    .line 2231
    :pswitch_2d
    const-string v0, "BIND_APPLICATION"

    return-object v0

    .line 2280
    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_2d
        :pswitch_2c
        :pswitch_0
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_0
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_0
        :pswitch_0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_0
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 2283
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_MESSAGES:Z

    const-string v1, "ActivityThread"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> handling: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v2}, Landroid/app/ActivityThread$H;->codeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x40

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 2497
    :pswitch_1
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-$$Nest$mhandleFinishInstrumentationWithoutRestart(Landroid/app/ActivityThread;)V

    goto/16 :goto_2

    .line 2494
    :pswitch_2
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$AppBindData;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleInstrumentWithoutRestart(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V

    .line 2495
    goto/16 :goto_2

    .line 2403
    :pswitch_3
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$DumpResourcesData;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleDumpResources(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpResourcesData;)V

    .line 2404
    goto/16 :goto_2

    .line 2358
    :pswitch_4
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleDumpGfxInfo(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    .line 2359
    goto/16 :goto_2

    .line 2491
    :pswitch_5
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleSetContentCaptureOptionsCallback(Landroid/app/ActivityThread;Ljava/lang/String;)V

    .line 2492
    goto/16 :goto_2

    .line 2485
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2486
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/view/translation/TranslationSpec;

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v6, Landroid/view/translation/TranslationSpec;

    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v8, Landroid/view/translation/UiTranslationSpec;

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityThread;->-$$Nest$mupdateUiTranslationState(Landroid/app/ActivityThread;Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V

    .line 2489
    goto/16 :goto_2

    .line 2482
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/app/ActivityThread;->handleAttachStartupAgents(Ljava/lang/String;)V

    .line 2483
    goto/16 :goto_2

    .line 2479
    :pswitch_8
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->schedulePurgeIdler()V

    .line 2480
    goto/16 :goto_2

    .line 2476
    :pswitch_9
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread;->handleRelaunchActivityLocally(Landroid/os/IBinder;)V

    .line 2477
    goto/16 :goto_2

    .line 2461
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/servertransaction/ClientTransaction;

    .line 2464
    .local v0, "transaction":Landroid/app/servertransaction/ClientTransaction;
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mOplusActivityThreadExt:Landroid/app/IActivityThreadExt;

    invoke-interface {v2, v3}, Landroid/app/IActivityThreadExt;->setImportMessage(Z)V

    .line 2466
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v2}, Landroid/app/ActivityThread;->-$$Nest$fgetmTransactionExecutor(Landroid/app/ActivityThread;)Landroid/app/servertransaction/TransactionExecutor;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/servertransaction/TransactionExecutor;->execute(Landroid/app/servertransaction/ClientTransaction;)V

    .line 2467
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2471
    invoke-virtual {v0}, Landroid/app/servertransaction/ClientTransaction;->recycle()V

    goto/16 :goto_2

    .line 2457
    .end local v0    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    :pswitch_b
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    iget-object v3, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroid/app/ActivityThread;->-$$Nest$mhandleRunIsolatedEntryPoint(Landroid/app/ActivityThread;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2459
    goto/16 :goto_2

    .line 2454
    :pswitch_c
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread;->handleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 2455
    goto/16 :goto_2

    .line 2449
    :pswitch_d
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 2450
    .local v0, "app":Landroid/app/Application;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v3, v0, Landroid/app/Application;->mLoadedApk:Landroid/app/LoadedApk;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, v3}, Landroid/app/ActivityThread;->handleAttachAgent(Ljava/lang/String;Landroid/app/LoadedApk;)V

    .line 2451
    goto/16 :goto_2

    .line 2445
    .end local v0    # "app":Landroid/app/Application;
    :pswitch_e
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    iget-object v3, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0, v2, v3}, Landroid/app/ActivityThread;->-$$Nest$mhandleLocalVoiceInteractionStarted(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 2447
    goto/16 :goto_2

    .line 2442
    :pswitch_f
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleStopBinderTrackingAndDump(Landroid/app/ActivityThread;Landroid/os/ParcelFileDescriptor;)V

    .line 2443
    goto/16 :goto_2

    .line 2439
    :pswitch_10
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-$$Nest$mhandleStartBinderTracking(Landroid/app/ActivityThread;)V

    .line 2440
    goto/16 :goto_2

    .line 2436
    :pswitch_11
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleEnterAnimationComplete(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    .line 2437
    goto/16 :goto_2

    .line 2432
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 2433
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/app/ActivityOptions;>;"
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityOptions;

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityThread;->onNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    .line 2434
    goto/16 :goto_2

    .line 2429
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/app/ActivityOptions;>;"
    :pswitch_13
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/ProviderInfo;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread;->handleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    .line 2430
    goto/16 :goto_2

    .line 2426
    :pswitch_14
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v0, v4, v2}, Landroid/app/ActivityThread;->handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    .line 2427
    goto/16 :goto_2

    .line 2423
    :pswitch_15
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$RequestAssistContextExtras;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread;->handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V

    .line 2424
    goto/16 :goto_2

    .line 2420
    :pswitch_16
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    invoke-virtual {v0, v3, v2}, Landroid/app/ActivityThread;->handleUnstableProviderDied(Landroid/os/IBinder;Z)V

    .line 2421
    goto/16 :goto_2

    .line 2409
    :pswitch_17
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleDumpProvider(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    .line 2410
    goto/16 :goto_2

    .line 2417
    :pswitch_18
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$UpdateCompatibilityData;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    .line 2418
    goto/16 :goto_2

    .line 2412
    :pswitch_19
    const-string/jumbo v0, "setCoreSettings"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2413
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleSetCoreSettings(Landroid/app/ActivityThread;Landroid/os/Bundle;)V

    .line 2414
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2415
    goto/16 :goto_2

    .line 2406
    :pswitch_1a
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleDumpActivity(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    .line 2407
    goto/16 :goto_2

    .line 2400
    :pswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$DumpHeapData;

    invoke-static {v0}, Landroid/app/ActivityThread;->handleDumpHeap(Landroid/app/ActivityThread$DumpHeapData;)V

    .line 2401
    goto/16 :goto_2

    .line 2392
    :pswitch_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2393
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 2394
    .local v2, "message":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 2395
    .local v3, "extras":Landroid/os/Bundle;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2396
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4, v2, v5, v3}, Landroid/app/ActivityThread;->-$$Nest$mthrowRemoteServiceException(Landroid/app/ActivityThread;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 2397
    goto/16 :goto_2

    .line 2387
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "extras":Landroid/os/Bundle;
    :pswitch_1d
    const-string v0, "broadcastPackage"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2388
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/app/ActivityThread;->handleDispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 2389
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2390
    goto/16 :goto_2

    .line 2382
    :pswitch_1e
    const-string/jumbo v0, "providerRemove"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2383
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread;->completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V

    .line 2384
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2385
    goto/16 :goto_2

    .line 2379
    :pswitch_1f
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 2380
    goto/16 :goto_2

    .line 2374
    :pswitch_20
    const-string v0, "backupDestroyAgent"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2375
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleDestroyBackupAgent(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    .line 2376
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2377
    goto/16 :goto_2

    .line 2369
    :pswitch_21
    const-string v0, "backupCreateAgent"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2370
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleCreateBackupAgent(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    .line 2371
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2372
    goto/16 :goto_2

    .line 2366
    :pswitch_22
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_3

    move v2, v3

    :cond_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ProfilerInfo;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/ActivityThread;->handleProfilerControl(ZLandroid/app/ProfilerInfo;I)V

    .line 2367
    goto/16 :goto_2

    .line 2361
    :pswitch_23
    const-string v0, "lowMemory"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2362
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->handleLowMemory()V

    .line 2363
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2364
    goto/16 :goto_2

    .line 2355
    :pswitch_24
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleDumpService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    .line 2356
    goto/16 :goto_2

    .line 2325
    :pswitch_25
    const-string/jumbo v0, "serviceUnbind"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2326
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$BindServiceData;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleUnbindService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    .line 2327
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->schedulePurgeIdler()V

    .line 2328
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2329
    goto/16 :goto_2

    .line 2320
    :pswitch_26
    const-string/jumbo v0, "serviceBind"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2321
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$BindServiceData;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleBindService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    .line 2322
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2323
    goto/16 :goto_2

    .line 2352
    :pswitch_27
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    .line 2353
    goto/16 :goto_2

    .line 2348
    :pswitch_28
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ContextCleanupInfo;

    .line 2349
    .local v0, "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    iget-object v2, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    iget-object v3, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    iget-object v4, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/app/ContextImpl;->performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 2350
    goto/16 :goto_2

    .line 2345
    .end local v0    # "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    :pswitch_29
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-$$Nest$fgetmConfigurationController(Landroid/app/ActivityThread;)Landroid/app/ConfigurationController;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/res/Configuration;

    invoke-virtual {v0, v2}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2346
    goto/16 :goto_2

    .line 2339
    :pswitch_2a
    const-string/jumbo v0, "serviceStop"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2340
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleStopService(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    .line 2341
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->schedulePurgeIdler()V

    .line 2342
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2343
    goto/16 :goto_2

    .line 2331
    :pswitch_2b
    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "serviceStart: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2333
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2332
    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2335
    :cond_4
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$ServiceArgsData;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleServiceArgs(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V

    .line 2336
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2337
    goto/16 :goto_2

    .line 2312
    :pswitch_2c
    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "serviceCreate: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2314
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2313
    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2316
    :cond_5
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$CreateServiceData;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleCreateService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V

    .line 2317
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2318
    goto :goto_2

    .line 2298
    :pswitch_2d
    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2299
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ReceiverData;

    .line 2300
    .local v0, "rec":Landroid/app/ActivityThread$ReceiverData;
    iget-object v2, v0, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_6

    .line 2301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastReceiveComp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    .line 2302
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2301
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_1

    .line 2304
    :cond_6
    const-string v2, "broadcastReceiveComp"

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2308
    .end local v0    # "rec":Landroid/app/ActivityThread$ReceiverData;
    :cond_7
    :goto_1
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$ReceiverData;

    invoke-static {v0, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleReceiver(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V

    .line 2309
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2310
    goto :goto_2

    .line 2292
    :pswitch_2e
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v0, :cond_8

    .line 2293
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onTerminate()V

    .line 2295
    :cond_8
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 2296
    goto :goto_2

    .line 2286
    :pswitch_2f
    const-string v0, "bindApplication"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2287
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$AppBindData;

    .line 2288
    .local v0, "data":Landroid/app/ActivityThread$AppBindData;
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v2, v0}, Landroid/app/ActivityThread;->-$$Nest$mhandleBindApplication(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V

    .line 2289
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2290
    nop

    .line 2500
    .end local v0    # "data":Landroid/app/ActivityThread$AppBindData;
    :cond_9
    :goto_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2501
    .local v0, "obj":Ljava/lang/Object;
    instance-of v2, v0, Lcom/android/internal/os/SomeArgs;

    if-eqz v2, :cond_a

    .line 2502
    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2504
    :cond_a
    sget-boolean v2, Landroid/app/ActivityThread;->DEBUG_MESSAGES:Z

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< done: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v3}, Landroid/app/ActivityThread$H;->codeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_2f
        :pswitch_2e
        :pswitch_0
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_0
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_0
        :pswitch_0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_0
        :pswitch_19
        :pswitch_18
        :pswitch_0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
