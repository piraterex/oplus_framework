.class Lcom/android/internal/telephony/IBooleanConsumer$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBooleanConsumer.java"

# interfaces
.implements Lcom/android/internal/telephony/IBooleanConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IBooleanConsumer$Stub;
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

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/android/internal/telephony/IBooleanConsumer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 104
    return-void
.end method


# virtual methods
.method public blacklist accept(Z)V
    .locals 4
    .param p1, "result"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 117
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.telephony.IBooleanConsumer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 119
    iget-object v1, p0, Lcom/android/internal/telephony/IBooleanConsumer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 123
    nop

    .line 124
    return-void

    .line 122
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 123
    throw v1
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/IBooleanConsumer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 111
    const-string v0, "com.android.internal.telephony.IBooleanConsumer"

    return-object v0
.end method
