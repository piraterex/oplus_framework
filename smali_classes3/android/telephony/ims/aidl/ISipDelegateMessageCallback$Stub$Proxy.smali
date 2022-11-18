.class Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISipDelegateMessageCallback.java"

# interfaces
.implements Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;
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

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 139
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 142
    iget-object v0, p0, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 146
    const-string v0, "android.telephony.ims.aidl.ISipDelegateMessageCallback"

    return-object v0
.end method

.method public blacklist onMessageReceived(Landroid/telephony/ims/SipMessage;)V
    .locals 4
    .param p1, "message"    # Landroid/telephony/ims/SipMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 152
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.telephony.ims.aidl.ISipDelegateMessageCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 153
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 154
    iget-object v1, p0, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 158
    nop

    .line 159
    return-void

    .line 157
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 158
    throw v1
.end method

.method public blacklist onMessageSendFailure(Ljava/lang/String;I)V
    .locals 5
    .param p1, "viaTransactionId"    # Ljava/lang/String;
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 176
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.telephony.ims.aidl.ISipDelegateMessageCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget-object v1, p0, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 183
    nop

    .line 184
    return-void

    .line 182
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 183
    throw v1
.end method

.method public blacklist onMessageSent(Ljava/lang/String;)V
    .locals 5
    .param p1, "viaTransactionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 164
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.telephony.ims.aidl.ISipDelegateMessageCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 170
    nop

    .line 171
    return-void

    .line 169
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 170
    throw v1
.end method
