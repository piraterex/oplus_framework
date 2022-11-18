.class Landroid/speech/IRecognitionServiceManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRecognitionServiceManager.java"

# interfaces
.implements Landroid/speech/IRecognitionServiceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/IRecognitionServiceManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Landroid/speech/IRecognitionServiceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 128
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 131
    iget-object v0, p0, Landroid/speech/IRecognitionServiceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist createSession(Landroid/content/ComponentName;Landroid/os/IBinder;ZLandroid/speech/IRecognitionServiceManagerCallback;)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "clientToken"    # Landroid/os/IBinder;
    .param p3, "onDevice"    # Z
    .param p4, "callback"    # Landroid/speech/IRecognitionServiceManagerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 141
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.speech.IRecognitionServiceManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 142
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 143
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 144
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 145
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 146
    iget-object v1, p0, Landroid/speech/IRecognitionServiceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 150
    nop

    .line 151
    return-void

    .line 149
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 150
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 135
    const-string v0, "android.speech.IRecognitionServiceManager"

    return-object v0
.end method

.method public blacklist setTemporaryComponent(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 156
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.speech.IRecognitionServiceManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 157
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 158
    iget-object v1, p0, Landroid/speech/IRecognitionServiceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 162
    nop

    .line 163
    return-void

    .line 161
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 162
    throw v1
.end method
