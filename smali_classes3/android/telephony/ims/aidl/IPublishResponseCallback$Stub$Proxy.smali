.class Landroid/telephony/ims/aidl/IPublishResponseCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPublishResponseCallback.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IPublishResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IPublishResponseCallback$Stub;
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

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Landroid/telephony/ims/aidl/IPublishResponseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 145
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 148
    iget-object v0, p0, Landroid/telephony/ims/aidl/IPublishResponseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 152
    const-string v0, "android.telephony.ims.aidl.IPublishResponseCallback"

    return-object v0
.end method

.method public blacklist onCommandError(I)V
    .locals 4
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 158
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.telephony.ims.aidl.IPublishResponseCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-object v1, p0, Landroid/telephony/ims/aidl/IPublishResponseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 164
    nop

    .line 165
    return-void

    .line 163
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 164
    throw v1
.end method

.method public blacklist onNetworkRespHeader(ILjava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;
    .param p3, "reasonHeaderCause"    # I
    .param p4, "reasonHeaderText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 183
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.telephony.ims.aidl.IPublishResponseCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Landroid/telephony/ims/aidl/IPublishResponseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 192
    nop

    .line 193
    return-void

    .line 191
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 192
    throw v1
.end method

.method public blacklist onNetworkResponse(ILjava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 170
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.telephony.ims.aidl.IPublishResponseCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Landroid/telephony/ims/aidl/IPublishResponseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 177
    nop

    .line 178
    return-void

    .line 176
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 177
    throw v1
.end method
