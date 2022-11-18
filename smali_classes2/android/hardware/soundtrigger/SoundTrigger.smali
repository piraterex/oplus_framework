.class public Landroid/hardware/soundtrigger/SoundTrigger;
.super Ljava/lang/Object;
.source "SoundTrigger.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;,
        Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;,
        Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;,
        Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;,
        Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;,
        Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;,
        Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;,
        Landroid/hardware/soundtrigger/SoundTrigger$RecognitionModes;,
        Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;,
        Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;,
        Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;,
        Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;,
        Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;,
        Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    }
.end annotation


# static fields
.field public static final whitelist RECOGNITION_MODE_GENERIC:I = 0x8

.field public static final whitelist RECOGNITION_MODE_USER_AUTHENTICATION:I = 0x4

.field public static final whitelist RECOGNITION_MODE_USER_IDENTIFICATION:I = 0x2

.field public static final whitelist RECOGNITION_MODE_VOICE_TRIGGER:I = 0x1

.field public static final greylist-max-o RECOGNITION_STATUS_ABORT:I = 0x1

.field public static final greylist-max-o RECOGNITION_STATUS_FAILURE:I = 0x2

.field public static final blacklist RECOGNITION_STATUS_GET_STATE_RESPONSE:I = 0x3

.field public static final greylist-max-o RECOGNITION_STATUS_SUCCESS:I = 0x0

.field public static final greylist-max-o STATUS_BAD_VALUE:I

.field public static final blacklist STATUS_BUSY:I

.field public static final greylist-max-o STATUS_DEAD_OBJECT:I

.field public static final greylist-max-o STATUS_ERROR:I = -0x80000000

.field public static final greylist-max-o STATUS_INVALID_OPERATION:I

.field public static final greylist-max-o STATUS_NO_INIT:I

.field public static final whitelist STATUS_OK:I = 0x0

.field public static final greylist-max-o STATUS_PERMISSION_DENIED:I

.field private static final blacklist TAG:Ljava/lang/String; = "SoundTrigger"

.field private static blacklist mService:Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

.field private static blacklist mServiceLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 88
    sget v0, Landroid/system/OsConstants;->EPERM:I

    neg-int v0, v0

    sput v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_PERMISSION_DENIED:I

    .line 90
    sget v0, Landroid/system/OsConstants;->ENODEV:I

    neg-int v0, v0

    sput v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_NO_INIT:I

    .line 92
    sget v0, Landroid/system/OsConstants;->EINVAL:I

    neg-int v0, v0

    sput v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BAD_VALUE:I

    .line 94
    sget v0, Landroid/system/OsConstants;->EPIPE:I

    neg-int v0, v0

    sput v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_DEAD_OBJECT:I

    .line 96
    sget v0, Landroid/system/OsConstants;->ENOSYS:I

    neg-int v0, v0

    sput v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_INVALID_OPERATION:I

    .line 98
    sget v0, Landroid/system/OsConstants;->EBUSY:I

    neg-int v0, v0

    sput v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BUSY:I

    .line 1965
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger;->mServiceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method private static greylist attachModule(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)Landroid/hardware/soundtrigger/SoundTriggerModule;
    .locals 5
    .param p0, "moduleId"    # I
    .param p1, "listener"    # Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2140
    new-instance v0, Landroid/media/permission/Identity;

    invoke-direct {v0}, Landroid/media/permission/Identity;-><init>()V

    .line 2141
    .local v0, "middlemanIdentity":Landroid/media/permission/Identity;
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 2143
    new-instance v1, Landroid/media/permission/Identity;

    invoke-direct {v1}, Landroid/media/permission/Identity;-><init>()V

    .line 2144
    .local v1, "originatorIdentity":Landroid/media/permission/Identity;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    iput v2, v1, Landroid/media/permission/Identity;->pid:I

    .line 2145
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iput v2, v1, Landroid/media/permission/Identity;->uid:I

    .line 2147
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v2

    .line 2148
    .local v2, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_0
    invoke-static {p0, p1, p2, v0, v1}, Landroid/hardware/soundtrigger/SoundTrigger;->attachModuleAsMiddleman(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;Landroid/media/permission/Identity;Landroid/media/permission/Identity;)Landroid/hardware/soundtrigger/SoundTriggerModule;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2150
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/media/permission/SafeCloseable;->close()V

    .line 2148
    :cond_0
    return-object v3

    .line 2147
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v3
.end method

.method public static blacklist attachModuleAsMiddleman(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;Landroid/media/permission/Identity;Landroid/media/permission/Identity;)Landroid/hardware/soundtrigger/SoundTriggerModule;
    .locals 8
    .param p0, "moduleId"    # I
    .param p1, "listener"    # Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "middlemanIdentity"    # Landroid/media/permission/Identity;
    .param p4, "originatorIdentity"    # Landroid/media/permission/Identity;

    .line 2174
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    move-object v5, v0

    .line 2176
    .local v5, "looper":Landroid/os/Looper;
    :try_start_0
    new-instance v0, Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-static {}, Landroid/hardware/soundtrigger/SoundTrigger;->getService()Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

    move-result-object v2

    move-object v1, v0

    move v3, p0

    move-object v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/hardware/soundtrigger/SoundTriggerModule;-><init>(Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Looper;Landroid/media/permission/Identity;Landroid/media/permission/Identity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2178
    :catch_0
    move-exception v0

    .line 2179
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SoundTrigger"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2180
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist attachModuleAsOriginator(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;Landroid/media/permission/Identity;)Landroid/hardware/soundtrigger/SoundTriggerModule;
    .locals 7
    .param p0, "moduleId"    # I
    .param p1, "listener"    # Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "originatorIdentity"    # Landroid/media/permission/Identity;

    .line 2202
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    move-object v5, v0

    .line 2204
    .local v5, "looper":Landroid/os/Looper;
    :try_start_0
    new-instance v0, Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-static {}, Landroid/hardware/soundtrigger/SoundTrigger;->getService()Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

    move-result-object v2

    move-object v1, v0

    move v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/hardware/soundtrigger/SoundTriggerModule;-><init>(Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Looper;Landroid/media/permission/Identity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2206
    :catch_0
    move-exception v0

    .line 2207
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SoundTrigger"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2208
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist convertDescriptorsToModuleProperties([Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "descsIn"    # [Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
            ">;)V"
        }
    .end annotation

    .line 2111
    .local p1, "modulesOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2112
    array-length v0, p0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 2113
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 2114
    .local v2, "desc":Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    invoke-static {v2}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiModuleDescriptor(Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2113
    .end local v2    # "desc":Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2116
    :cond_0
    return-void
.end method

.method private static blacklist getService()Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;
    .locals 5

    .line 2213
    sget-object v0, Landroid/hardware/soundtrigger/SoundTrigger;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2215
    :goto_0
    const/4 v1, 0x0

    .line 2217
    .local v1, "binder":Landroid/os/IBinder;
    :try_start_0
    const-string v2, "soundtrigger_middleware"

    .line 2218
    invoke-static {v2}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    move-object v1, v2

    .line 2220
    new-instance v2, Landroid/hardware/soundtrigger/SoundTrigger$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/hardware/soundtrigger/SoundTrigger$$ExternalSyntheticLambda0;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2225
    invoke-static {v1}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

    move-result-object v2

    sput-object v2, Landroid/hardware/soundtrigger/SoundTrigger;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2226
    nop

    .line 2231
    .end local v1    # "binder":Landroid/os/IBinder;
    :try_start_1
    monitor-exit v0

    return-object v2

    .line 2232
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2227
    .restart local v1    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 2228
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SoundTrigger"

    const-string v4, "Failed to bind to soundtrigger service"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2230
    nop

    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 2232
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static blacklist handleException(Ljava/lang/Exception;)I
    .locals 2
    .param p0, "e"    # Ljava/lang/Exception;

    .line 1977
    const-string v0, "SoundTrigger"

    const-string v1, "Exception caught"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1978
    instance-of v1, p0, Landroid/os/RemoteException;

    if-eqz v1, :cond_0

    .line 1979
    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_DEAD_OBJECT:I

    return v0

    .line 1981
    :cond_0
    instance-of v1, p0, Landroid/os/ServiceSpecificException;

    if-eqz v1, :cond_1

    .line 1982
    move-object v0, p0

    check-cast v0, Landroid/os/ServiceSpecificException;

    iget v0, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/high16 v1, -0x80000000

    packed-switch v0, :pswitch_data_0

    .line 1994
    return v1

    .line 1990
    :pswitch_0
    return v1

    .line 1988
    :pswitch_1
    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_DEAD_OBJECT:I

    return v0

    .line 1986
    :pswitch_2
    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_PERMISSION_DENIED:I

    return v0

    .line 1984
    :pswitch_3
    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_INVALID_OPERATION:I

    return v0

    .line 1992
    :pswitch_4
    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BUSY:I

    return v0

    .line 1996
    :cond_1
    instance-of v1, p0, Ljava/lang/SecurityException;

    if-eqz v1, :cond_2

    .line 1997
    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_PERMISSION_DENIED:I

    return v0

    .line 1999
    :cond_2
    instance-of v1, p0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_3

    .line 2000
    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_INVALID_OPERATION:I

    return v0

    .line 2002
    :cond_3
    instance-of v1, p0, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_5

    instance-of v1, p0, Ljava/lang/NullPointerException;

    if-eqz v1, :cond_4

    goto :goto_0

    .line 2007
    :cond_4
    const-string v1, "Escalating unexpected exception: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2008
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2003
    :cond_5
    :goto_0
    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BAD_VALUE:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic blacklist lambda$getService$0()V
    .locals 2

    .line 2221
    sget-object v0, Landroid/hardware/soundtrigger/SoundTrigger;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2222
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroid/hardware/soundtrigger/SoundTrigger;->mService:Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

    .line 2223
    monitor-exit v0

    .line 2224
    return-void

    .line 2223
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static greylist listModules(Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
            ">;)I"
        }
    .end annotation

    .line 2031
    .local p0, "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;>;"
    new-instance v0, Landroid/media/permission/Identity;

    invoke-direct {v0}, Landroid/media/permission/Identity;-><init>()V

    .line 2032
    .local v0, "middlemanIdentity":Landroid/media/permission/Identity;
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 2034
    new-instance v1, Landroid/media/permission/Identity;

    invoke-direct {v1}, Landroid/media/permission/Identity;-><init>()V

    .line 2035
    .local v1, "originatorIdentity":Landroid/media/permission/Identity;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    iput v2, v1, Landroid/media/permission/Identity;->pid:I

    .line 2036
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iput v2, v1, Landroid/media/permission/Identity;->uid:I

    .line 2038
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v2

    .line 2039
    .local v2, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_0
    invoke-static {p0, v0, v1}, Landroid/hardware/soundtrigger/SoundTrigger;->listModulesAsMiddleman(Ljava/util/ArrayList;Landroid/media/permission/Identity;Landroid/media/permission/Identity;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2040
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/media/permission/SafeCloseable;->close()V

    .line 2039
    :cond_0
    return v3

    .line 2038
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v3
.end method

.method public static blacklist listModulesAsMiddleman(Ljava/util/ArrayList;Landroid/media/permission/Identity;Landroid/media/permission/Identity;)I
    .locals 2
    .param p1, "middlemanIdentity"    # Landroid/media/permission/Identity;
    .param p2, "originatorIdentity"    # Landroid/media/permission/Identity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
            ">;",
            "Landroid/media/permission/Identity;",
            "Landroid/media/permission/Identity;",
            ")I"
        }
    .end annotation

    .line 2093
    .local p0, "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;>;"
    :try_start_0
    invoke-static {}, Landroid/hardware/soundtrigger/SoundTrigger;->getService()Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;->listModulesAsMiddleman(Landroid/media/permission/Identity;Landroid/media/permission/Identity;)[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    move-result-object v0

    .line 2095
    .local v0, "descs":[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    invoke-static {v0, p0}, Landroid/hardware/soundtrigger/SoundTrigger;->convertDescriptorsToModuleProperties([Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2096
    const/4 v1, 0x0

    return v1

    .line 2097
    .end local v0    # "descs":[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    :catch_0
    move-exception v0

    .line 2098
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/hardware/soundtrigger/SoundTrigger;->handleException(Ljava/lang/Exception;)I

    move-result v1

    return v1
.end method

.method public static blacklist listModulesAsOriginator(Ljava/util/ArrayList;Landroid/media/permission/Identity;)I
    .locals 2
    .param p1, "originatorIdentity"    # Landroid/media/permission/Identity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
            ">;",
            "Landroid/media/permission/Identity;",
            ")I"
        }
    .end annotation

    .line 2062
    .local p0, "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;>;"
    :try_start_0
    invoke-static {}, Landroid/hardware/soundtrigger/SoundTrigger;->getService()Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;->listModulesAsOriginator(Landroid/media/permission/Identity;)[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    move-result-object v0

    .line 2064
    .local v0, "descs":[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    invoke-static {v0, p0}, Landroid/hardware/soundtrigger/SoundTrigger;->convertDescriptorsToModuleProperties([Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2065
    const/4 v1, 0x0

    return v1

    .line 2066
    .end local v0    # "descs":[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    :catch_0
    move-exception v0

    .line 2067
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/hardware/soundtrigger/SoundTrigger;->handleException(Ljava/lang/Exception;)I

    move-result v1

    return v1
.end method
