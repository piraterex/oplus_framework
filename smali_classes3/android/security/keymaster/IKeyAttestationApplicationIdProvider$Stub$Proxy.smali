.class Landroid/security/keymaster/IKeyAttestationApplicationIdProvider$Stub$Proxy;
.super Ljava/lang/Object;
.source "IKeyAttestationApplicationIdProvider.java"

# interfaces
.implements Landroid/security/keymaster/IKeyAttestationApplicationIdProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keymaster/IKeyAttestationApplicationIdProvider$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Landroid/security/keymaster/IKeyAttestationApplicationIdProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 112
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 115
    iget-object v0, p0, Landroid/security/keymaster/IKeyAttestationApplicationIdProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 119
    const-string v0, "android.security.keymaster.IKeyAttestationApplicationIdProvider"

    return-object v0
.end method

.method public greylist-max-o getKeyAttestationApplicationId(I)Landroid/security/keymaster/KeyAttestationApplicationId;
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 125
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 128
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.security.keymaster.IKeyAttestationApplicationIdProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object v2, p0, Landroid/security/keymaster/IKeyAttestationApplicationIdProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 131
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 132
    sget-object v3, Landroid/security/keymaster/KeyAttestationApplicationId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/security/keymaster/KeyAttestationApplicationId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 135
    .local v2, "_result":Landroid/security/keymaster/KeyAttestationApplicationId;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 137
    nop

    .line 138
    return-object v2

    .line 135
    .end local v2    # "_result":Landroid/security/keymaster/KeyAttestationApplicationId;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 137
    throw v2
.end method
