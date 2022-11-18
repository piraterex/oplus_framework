.class Lcom/android/internal/textservice/ISpellCheckerService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISpellCheckerService.java"

# interfaces
.implements Lcom/android/internal/textservice/ISpellCheckerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/textservice/ISpellCheckerService$Stub;
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

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/android/internal/textservice/ISpellCheckerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 129
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/internal/textservice/ISpellCheckerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;ILcom/android/internal/textservice/ISpellCheckerServiceCallback;)V
    .locals 4
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "supportedAttributes"    # I
    .param p5, "callback"    # Lcom/android/internal/textservice/ISpellCheckerServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 157
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.textservice.ISpellCheckerService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 160
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 161
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 163
    iget-object v1, p0, Lcom/android/internal/textservice/ISpellCheckerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 167
    nop

    .line 168
    return-void

    .line 166
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 167
    throw v1
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 136
    const-string v0, "com.android.internal.textservice.ISpellCheckerService"

    return-object v0
.end method
