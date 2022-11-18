.class public abstract Landroid/telecom/Connection$VideoProvider;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VideoProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;,
        Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;
    }
.end annotation


# static fields
.field private static final greylist-max-o MSG_ADD_VIDEO_CALLBACK:I = 0x1

.field private static final greylist-max-o MSG_REMOVE_VIDEO_CALLBACK:I = 0xc

.field private static final greylist-max-o MSG_REQUEST_CAMERA_CAPABILITIES:I = 0x9

.field private static final greylist-max-o MSG_REQUEST_CONNECTION_DATA_USAGE:I = 0xa

.field private static final greylist-max-o MSG_SEND_SESSION_MODIFY_REQUEST:I = 0x7

.field private static final greylist-max-o MSG_SEND_SESSION_MODIFY_RESPONSE:I = 0x8

.field private static final greylist-max-o MSG_SET_CAMERA:I = 0x2

.field private static final greylist-max-o MSG_SET_DEVICE_ORIENTATION:I = 0x5

.field private static final greylist-max-o MSG_SET_DISPLAY_SURFACE:I = 0x4

.field private static final greylist-max-o MSG_SET_PAUSE_IMAGE:I = 0xb

.field private static final greylist-max-o MSG_SET_PREVIEW_SURFACE:I = 0x3

.field private static final greylist-max-o MSG_SET_ZOOM:I = 0x6

.field public static final whitelist SESSION_EVENT_CAMERA_FAILURE:I = 0x5

.field private static final greylist-max-o SESSION_EVENT_CAMERA_FAILURE_STR:Ljava/lang/String; = "CAMERA_FAIL"

.field public static final whitelist SESSION_EVENT_CAMERA_PERMISSION_ERROR:I = 0x7

.field private static final greylist-max-o SESSION_EVENT_CAMERA_PERMISSION_ERROR_STR:Ljava/lang/String; = "CAMERA_PERMISSION_ERROR"

.field public static final whitelist SESSION_EVENT_CAMERA_READY:I = 0x6

.field private static final greylist-max-o SESSION_EVENT_CAMERA_READY_STR:Ljava/lang/String; = "CAMERA_READY"

.field public static final whitelist SESSION_EVENT_RX_PAUSE:I = 0x1

.field private static final greylist-max-o SESSION_EVENT_RX_PAUSE_STR:Ljava/lang/String; = "RX_PAUSE"

.field public static final whitelist SESSION_EVENT_RX_RESUME:I = 0x2

.field private static final greylist-max-o SESSION_EVENT_RX_RESUME_STR:Ljava/lang/String; = "RX_RESUME"

.field public static final whitelist SESSION_EVENT_TX_START:I = 0x3

.field private static final greylist-max-o SESSION_EVENT_TX_START_STR:Ljava/lang/String; = "TX_START"

.field public static final whitelist SESSION_EVENT_TX_STOP:I = 0x4

.field private static final greylist-max-o SESSION_EVENT_TX_STOP_STR:Ljava/lang/String; = "TX_STOP"

.field private static final greylist-max-o SESSION_EVENT_UNKNOWN_STR:Ljava/lang/String; = "UNKNOWN"

.field public static final whitelist SESSION_MODIFY_REQUEST_FAIL:I = 0x2

.field public static final whitelist SESSION_MODIFY_REQUEST_INVALID:I = 0x3

.field public static final whitelist SESSION_MODIFY_REQUEST_REJECTED_BY_REMOTE:I = 0x5

.field public static final whitelist SESSION_MODIFY_REQUEST_SUCCESS:I = 0x1

.field public static final whitelist SESSION_MODIFY_REQUEST_TIMED_OUT:I = 0x4


# instance fields
.field private final greylist-max-o mBinder:Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

.field private greylist-max-o mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

.field private greylist-max-o mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/internal/telecom/IVideoCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMessageHandler(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;
    .locals 0

    iget-object p0, p0, Landroid/telecom/Connection$VideoProvider;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVideoCallbacks(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .locals 4

    .line 1766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1593
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1767
    new-instance v0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;-><init>(Landroid/telecom/Connection$VideoProvider;Landroid/telecom/Connection$VideoProvider$VideoProviderBinder-IA;)V

    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mBinder:Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    .line 1768
    new-instance v0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;-><init>(Landroid/telecom/Connection$VideoProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    .line 1769
    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Looper;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1593
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1779
    new-instance v0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;-><init>(Landroid/telecom/Connection$VideoProvider;Landroid/telecom/Connection$VideoProvider$VideoProviderBinder-IA;)V

    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mBinder:Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    .line 1780
    new-instance v0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    invoke-direct {v0, p0, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;-><init>(Landroid/telecom/Connection$VideoProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    .line 1781
    return-void
.end method

.method public static greylist-max-o sessionEventToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "event"    # I

    .line 2155
    packed-switch p0, :pswitch_data_0

    .line 2171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2169
    :pswitch_0
    const-string v0, "CAMERA_PERMISSION_ERROR"

    return-object v0

    .line 2159
    :pswitch_1
    const-string v0, "CAMERA_READY"

    return-object v0

    .line 2157
    :pswitch_2
    const-string v0, "CAMERA_FAIL"

    return-object v0

    .line 2167
    :pswitch_3
    const-string v0, "TX_STOP"

    return-object v0

    .line 2165
    :pswitch_4
    const-string v0, "TX_START"

    return-object v0

    .line 2163
    :pswitch_5
    const-string v0, "RX_RESUME"

    return-object v0

    .line 2161
    :pswitch_6
    const-string v0, "RX_PAUSE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o changeCallDataUsage(J)V
    .locals 0
    .param p1, "dataUsage"    # J

    .line 2093
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Connection$VideoProvider;->setCallDataUsage(J)V

    .line 2094
    return-void
.end method

.method public whitelist changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .locals 5
    .param p1, "cameraCapabilities"    # Landroid/telecom/VideoProfile$CameraCapabilities;

    .line 2111
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 2112
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IVideoCallback;

    .line 2114
    .local v1, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoCallback;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2117
    goto :goto_1

    .line 2115
    :catch_0
    move-exception v2

    .line 2116
    .local v2, "ignored":Landroid/os/RemoteException;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v4, "changeCameraCapabilities callback failed"

    invoke-static {p0, v4, v3}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2118
    .end local v1    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 2120
    :cond_0
    return-void
.end method

.method public whitelist changePeerDimensions(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2047
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 2048
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IVideoCallback;

    .line 2050
    .local v1, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telecom/IVideoCallback;->changePeerDimensions(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2053
    goto :goto_1

    .line 2051
    :catch_0
    move-exception v2

    .line 2052
    .local v2, "ignored":Landroid/os/RemoteException;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v4, "changePeerDimensions callback failed"

    invoke-static {p0, v4, v3}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2054
    .end local v1    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 2056
    :cond_0
    return-void
.end method

.method public whitelist changeVideoQuality(I)V
    .locals 5
    .param p1, "videoQuality"    # I

    .line 2136
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 2137
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IVideoCallback;

    .line 2139
    .local v1, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoCallback;->changeVideoQuality(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2142
    goto :goto_1

    .line 2140
    :catch_0
    move-exception v2

    .line 2141
    .local v2, "ignored":Landroid/os/RemoteException;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v4, "changeVideoQuality callback failed"

    invoke-static {p0, v4, v3}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2143
    .end local v1    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 2145
    :cond_0
    return-void
.end method

.method public final greylist-max-o getInterface()Lcom/android/internal/telecom/IVideoProvider;
    .locals 1

    .line 1788
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mBinder:Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    return-object v0
.end method

.method public whitelist handleCallSessionEvent(I)V
    .locals 5
    .param p1, "event"    # I

    .line 2022
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 2023
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IVideoCallback;

    .line 2025
    .local v1, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoCallback;->handleCallSessionEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2028
    goto :goto_1

    .line 2026
    :catch_0
    move-exception v2

    .line 2027
    .local v2, "ignored":Landroid/os/RemoteException;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string/jumbo v4, "handleCallSessionEvent callback failed"

    invoke-static {p0, v4, v3}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2029
    .end local v1    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 2031
    :cond_0
    return-void
.end method

.method public abstract whitelist onRequestCameraCapabilities()V
.end method

.method public abstract whitelist onRequestConnectionDataUsage()V
.end method

.method public abstract whitelist onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
.end method

.method public abstract whitelist onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
.end method

.method public abstract whitelist onSetCamera(Ljava/lang/String;)V
.end method

.method public greylist-max-o onSetCamera(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callingPackageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "targetSdkVersion"    # I

    .line 1828
    return-void
.end method

.method public abstract whitelist onSetDeviceOrientation(I)V
.end method

.method public abstract whitelist onSetDisplaySurface(Landroid/view/Surface;)V
.end method

.method public abstract whitelist onSetPauseImage(Landroid/net/Uri;)V
.end method

.method public abstract whitelist onSetPreviewSurface(Landroid/view/Surface;)V
.end method

.method public abstract whitelist onSetZoom(F)V
.end method

.method public whitelist receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 5
    .param p1, "videoProfile"    # Landroid/telecom/VideoProfile;

    .line 1963
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 1964
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IVideoCallback;

    .line 1966
    .local v1, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoCallback;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1969
    goto :goto_1

    .line 1967
    :catch_0
    move-exception v2

    .line 1968
    .local v2, "ignored":Landroid/os/RemoteException;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string/jumbo v4, "receiveSessionModifyRequest callback failed"

    invoke-static {p0, v4, v3}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1970
    .end local v1    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 1972
    :cond_0
    return-void
.end method

.method public whitelist receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 1994
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 1995
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IVideoCallback;

    .line 1997
    .local v1, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telecom/IVideoCallback;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2001
    goto :goto_1

    .line 1999
    :catch_0
    move-exception v2

    .line 2000
    .local v2, "ignored":Landroid/os/RemoteException;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string/jumbo v4, "receiveSessionModifyResponse callback failed"

    invoke-static {p0, v4, v3}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2002
    .end local v1    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 2004
    :cond_0
    return-void
.end method

.method public whitelist setCallDataUsage(J)V
    .locals 5
    .param p1, "dataUsage"    # J

    .line 2074
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 2075
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IVideoCallback;

    .line 2077
    .local v1, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telecom/IVideoCallback;->changeCallDataUsage(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2080
    goto :goto_1

    .line 2078
    :catch_0
    move-exception v2

    .line 2079
    .local v2, "ignored":Landroid/os/RemoteException;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string/jumbo v4, "setCallDataUsage callback failed"

    invoke-static {p0, v4, v3}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2081
    .end local v1    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 2083
    :cond_0
    return-void
.end method
