.class Landroid/telephony/ims/aidl/ISipDelegateStateCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISipDelegateStateCallback.java"

# interfaces
.implements Landroid/telephony/ims/aidl/ISipDelegateStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/ISipDelegateStateCallback$Stub;
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

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Landroid/telephony/ims/aidl/ISipDelegateStateCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 168
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 171
    iget-object v0, p0, Landroid/telephony/ims/aidl/ISipDelegateStateCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 175
    const-string v0, "android.telephony.ims.aidl.ISipDelegateStateCallback"

    return-object v0
.end method

.method public blacklist onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V
    .locals 5
    .param p1, "registeredSipConfig"    # Landroid/telephony/ims/SipDelegateConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 218
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.telephony.ims.aidl.ISipDelegateStateCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 219
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 220
    iget-object v1, p0, Landroid/telephony/ims/aidl/ISipDelegateStateCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 224
    nop

    .line 225
    return-void

    .line 223
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 224
    throw v1
.end method

.method public blacklist onCreated(Landroid/telephony/ims/aidl/ISipDelegate;Ljava/util/List;)V
    .locals 4
    .param p1, "c"    # Landroid/telephony/ims/aidl/ISipDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/ims/aidl/ISipDelegate;",
            "Ljava/util/List<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    .local p2, "deniedFeatureTags":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/FeatureTagState;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 181
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.telephony.ims.aidl.ISipDelegateStateCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 183
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 184
    iget-object v1, p0, Landroid/telephony/ims/aidl/ISipDelegateStateCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 188
    nop

    .line 189
    return-void

    .line 187
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 188
    throw v1
.end method

.method public blacklist onDestroyed(I)V
    .locals 5
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 230
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.telephony.ims.aidl.ISipDelegateStateCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget-object v1, p0, Landroid/telephony/ims/aidl/ISipDelegateStateCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 236
    nop

    .line 237
    return-void

    .line 235
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 236
    throw v1
.end method

.method public blacklist onFeatureTagRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V
    .locals 5
    .param p1, "registrationState"    # Landroid/telephony/ims/DelegateRegistrationState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 194
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.telephony.ims.aidl.ISipDelegateStateCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 195
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 196
    iget-object v1, p0, Landroid/telephony/ims/aidl/ISipDelegateStateCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 200
    nop

    .line 201
    return-void

    .line 199
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 200
    throw v1
.end method

.method public blacklist onImsConfigurationChanged(Landroid/telephony/ims/SipDelegateImsConfiguration;)V
    .locals 5
    .param p1, "registeredSipConfig"    # Landroid/telephony/ims/SipDelegateImsConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 206
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.telephony.ims.aidl.ISipDelegateStateCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 207
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 208
    iget-object v1, p0, Landroid/telephony/ims/aidl/ISipDelegateStateCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 212
    nop

    .line 213
    return-void

    .line 211
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 212
    throw v1
.end method
