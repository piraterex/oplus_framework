.class abstract Landroid/service/voice/AbstractHotwordDetector;
.super Ljava/lang/Object;
.source "AbstractHotwordDetector.java"

# interfaces
.implements Landroid/service/voice/HotwordDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/AbstractHotwordDetector$BinderCallback;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mCallback:Landroid/service/voice/HotwordDetector$Callback;

.field private final blacklist mDetectorType:I

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mIsDetectorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

.field private blacklist mOnDestroyListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/service/voice/AbstractHotwordDetector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/service/voice/AbstractHotwordDetector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 43
    const-class v0, Landroid/service/voice/AbstractHotwordDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/voice/AbstractHotwordDetector;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/app/IVoiceInteractionManagerService;Landroid/service/voice/HotwordDetector$Callback;I)V
    .locals 2
    .param p1, "managerService"    # Lcom/android/internal/app/IVoiceInteractionManagerService;
    .param p2, "callback"    # Landroid/service/voice/HotwordDetector$Callback;
    .param p3, "detectorType"    # I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/voice/AbstractHotwordDetector;->mLock:Ljava/lang/Object;

    .line 59
    iput-object p1, p0, Landroid/service/voice/AbstractHotwordDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/voice/AbstractHotwordDetector;->mHandler:Landroid/os/Handler;

    .line 62
    iput-object p2, p0, Landroid/service/voice/AbstractHotwordDetector;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    .line 63
    iput p3, p0, Landroid/service/voice/AbstractHotwordDetector;->mDetectorType:I

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/service/voice/AbstractHotwordDetector;->mIsDetectorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist destroy()V
    .locals 2

    .line 150
    iget-object v0, p0, Landroid/service/voice/AbstractHotwordDetector;->mIsDetectorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Landroid/service/voice/AbstractHotwordDetector;->mIsDetectorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 154
    iget-object v0, p0, Landroid/service/voice/AbstractHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/AbstractHotwordDetector;->mOnDestroyListener:Ljava/util/function/Consumer;

    invoke-interface {v1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 156
    monitor-exit v0

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist registerOnDestroyListener(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/service/voice/AbstractHotwordDetector;",
            ">;)V"
        }
    .end annotation

    .line 139
    .local p1, "onDestroyListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/voice/AbstractHotwordDetector;>;"
    iget-object v0, p0, Landroid/service/voice/AbstractHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/AbstractHotwordDetector;->mOnDestroyListener:Ljava/util/function/Consumer;

    if-nez v1, :cond_0

    .line 143
    iput-object p1, p0, Landroid/service/voice/AbstractHotwordDetector;->mOnDestroyListener:Ljava/util/function/Consumer;

    .line 144
    monitor-exit v0

    .line 145
    return-void

    .line 141
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "only one destroy listener can be registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/AbstractHotwordDetector;
    .end local p1    # "onDestroyListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/voice/AbstractHotwordDetector;>;"
    throw v1

    .line 144
    .restart local p0    # "this":Landroid/service/voice/AbstractHotwordDetector;
    .restart local p1    # "onDestroyListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/voice/AbstractHotwordDetector;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist startRecognition(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;)Z
    .locals 4
    .param p1, "audioStream"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "audioFormat"    # Landroid/media/AudioFormat;
    .param p3, "options"    # Landroid/os/PersistableBundle;

    .line 80
    invoke-virtual {p0}, Landroid/service/voice/AbstractHotwordDetector;->throwIfDetectorIsNoLongerActive()V

    .line 85
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AbstractHotwordDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    new-instance v1, Landroid/service/voice/AbstractHotwordDetector$BinderCallback;

    iget-object v2, p0, Landroid/service/voice/AbstractHotwordDetector;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/service/voice/AbstractHotwordDetector;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    invoke-direct {v1, v2, v3}, Landroid/service/voice/AbstractHotwordDetector$BinderCallback;-><init>(Landroid/os/Handler;Landroid/service/voice/HotwordDetector$Callback;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->startListeningFromExternalSource(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 94
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist throwIfDetectorIsNoLongerActive()V
    .locals 2

    .line 160
    iget-object v0, p0, Landroid/service/voice/AbstractHotwordDetector;->mIsDetectorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    return-void

    .line 161
    :cond_0
    sget-object v0, Landroid/service/voice/AbstractHotwordDetector;->TAG:Ljava/lang/String;

    const-string v1, "attempting to use a destroyed detector which is no longer active"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .locals 3
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;

    .line 117
    invoke-virtual {p0}, Landroid/service/voice/AbstractHotwordDetector;->throwIfDetectorIsNoLongerActive()V

    .line 118
    iget-object v0, p0, Landroid/service/voice/AbstractHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    const/4 v1, 0x0

    :try_start_0
    iget v2, p0, Landroid/service/voice/AbstractHotwordDetector;->mDetectorType:I

    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/service/voice/AbstractHotwordDetector;->updateStateLocked(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;I)V

    .line 120
    monitor-exit v0

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected blacklist updateStateLocked(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;I)V
    .locals 7
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p3, "callback"    # Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    .param p4, "detectorType"    # I

    .line 129
    new-instance v0, Landroid/media/permission/Identity;

    invoke-direct {v0}, Landroid/media/permission/Identity;-><init>()V

    .line 130
    .local v0, "identity":Landroid/media/permission/Identity;
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 132
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/AbstractHotwordDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/app/IVoiceInteractionManagerService;->updateState(Landroid/media/permission/Identity;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    nop

    .line 136
    return-void

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
