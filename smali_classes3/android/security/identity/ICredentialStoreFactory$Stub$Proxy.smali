.class Landroid/security/identity/ICredentialStoreFactory$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICredentialStoreFactory.java"

# interfaces
.implements Landroid/security/identity/ICredentialStoreFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/ICredentialStoreFactory$Stub;
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

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Landroid/security/identity/ICredentialStoreFactory$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 106
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 109
    iget-object v0, p0, Landroid/security/identity/ICredentialStoreFactory$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getCredentialStore(I)Landroid/security/identity/ICredentialStore;
    .locals 5
    .param p1, "credentialStoreType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 118
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 121
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.security.identity.ICredentialStoreFactory"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v2, p0, Landroid/security/identity/ICredentialStoreFactory$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 124
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 125
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/security/identity/ICredentialStore$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/identity/ICredentialStore;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 128
    .local v2, "_result":Landroid/security/identity/ICredentialStore;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 130
    nop

    .line 131
    return-object v2

    .line 128
    .end local v2    # "_result":Landroid/security/identity/ICredentialStore;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 130
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 113
    const-string v0, "android.security.identity.ICredentialStoreFactory"

    return-object v0
.end method
